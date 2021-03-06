AUI.add(
	'liferay-portlet-url',
	function(A) {
		var Lang = A.Lang;

		var Util = Liferay.Util;

		var PortletURL = function(lifecycle, params, basePortletURL) {
			var instance = this;

			instance.params = {};

			instance.reservedParams = {
				doAsGroupId: null,
				doAsUserId: null,
				doAsUserLanguageId: null,
				p_auth: null,
				p_auth_secret: null,
				p_f_id: null,
				p_j_a_id: null,
				p_l_id: null,
				p_l_reset: null,
				p_p_auth: null,
				p_p_cacheability: null,
				p_p_col_count: null,
				p_p_col_id: null,
				p_p_col_pos: null,
				p_p_i_id: null,
				p_p_id: null,
				p_p_isolated: null,
				p_p_lifecycle: null,
				p_p_mode: null,
				p_p_resource_id: null,
				p_p_state: null,
				p_p_state_rcv: null,
				p_p_static: null,
				p_p_url_type: null,
				p_p_width: null,
				p_t_lifecycle: null,
				p_v_l_s_g_id: null,
				refererGroupId: null,
				refererPlid: null,
				saveLastPath: null,
				scroll: null
			};

			instance.options = {
				basePortletURL: basePortletURL,
				escapeXML: null,
				secure: null
			};

			if (!basePortletURL) {
				instance.options.basePortletURL = themeDisplay.getPathMain() + '/portal/layout?p_l_id=' + themeDisplay.getPlid();
			}

			A.each(
				params,
				function(item, index) {
					if (Lang.isValue(item)) {
						if (instance._isReservedParam(index)) {
							instance.reservedParams[index] = item;
						}
						else {
							instance.params[index] = item;
						}
					}
				}
			);

			if (lifecycle) {
				instance.setLifecycle(lifecycle);
			}
		};

		PortletURL.prototype = {

			/*
			 * @deprecated
			 */

			setCopyCurrentRenderParameters: function() {
				var instance = this;

				return instance;
			},

			setDoAsGroupId: function(doAsGroupId) {
				var instance = this;

				instance.reservedParams.doAsGroupId = doAsGroupId;

				return instance;
			},

			setDoAsUserId: function(doAsUserId) {
				var instance = this;

				instance.reservedParams.doAsUserId = doAsUserId;

				return instance;
			},

			/*
			 * @deprecated
			 */

			setEncrypt: function() {
				var instance = this;

				return instance;
			},

			setEscapeXML: function(escapeXML) {
				var instance = this;

				instance.options.escapeXML = escapeXML;

				return instance;
			},

			setLifecycle: function(lifecycle) {
				var instance = this;

				var reservedParams = instance.reservedParams;

				if (lifecycle === PortletURL.ACTION_PHASE) {
					reservedParams.p_auth = Liferay.authToken;
					reservedParams.p_p_lifecycle = PortletURL.ACTION_PHASE;
				}
				else if (lifecycle === PortletURL.RENDER_PHASE) {
					reservedParams.p_p_lifecycle = PortletURL.RENDER_PHASE;
				}
				else if (lifecycle === PortletURL.RESOURCE_PHASE) {
					reservedParams.p_p_lifecycle = PortletURL.RESOURCE_PHASE;
					reservedParams.p_p_cacheability = 'cacheLevelPage';
				}

				return instance;
			},

			setName: function(name) {
				var instance = this;

				instance.setParameter('javax.portlet.action', name);

				return instance;
			},

			setParameter: function(key, value) {
				var instance = this;

				if (instance._isReservedParam(key)) {
					instance.reservedParams[key] = value;
				}
				else {
					instance.params[key] = value;
				}

				return instance;
			},

			setParameters: function(parameters) {
				var instance = this;

				A.each(
					parameters,
					function(item, index) {
						instance.setParameter(index, item);
					}
				);

				return instance;
			},

			setPlid: function(plid) {
				var instance = this;

				instance.reservedParams.p_l_id = plid;

				return instance;
			},

			/*
			 * @deprecated
			 */

			setPortletConfiguration: function() {
				var instance = this;

				return instance;
			},

			setPortletId: function(portletId) {
				var instance = this;

				instance.reservedParams.p_p_id = portletId;

				return instance;
			},

			setPortletMode: function(portletMode) {
				var instance = this;

				instance.reservedParams.p_p_mode = portletMode;

				return instance;
			},

			setResourceId: function(resourceId) {
				var instance = this;

				instance.reservedParams.p_p_resource_id = resourceId;

				return instance;
			},

			setSecure: function(secure) {
				var instance = this;

				instance.options.secure = secure;

				return instance;
			},

			setWindowState: function(windowState) {
				var instance = this;

				instance.reservedParams.p_p_state = windowState;

				return instance;
			},

			toString: function() {
				var instance = this;

				var options = instance.options;

				var reservedParams = instance.reservedParams;

				var resultURL = new A.Url(options.basePortletURL);

				var portletId = reservedParams.p_p_id;

				if (!portletId) {
					portletId = resultURL.getParameter('p_p_id');
				}

				var namespacePrefix = Util.getPortletNamespace(portletId);

				A.each(
					reservedParams,
					function(item, index) {
						if (Lang.isValue(item)) {
							resultURL.setParameter(index, item);
						}
					}
				);

				A.each(
					instance.params,
					function(item, index) {
						if (Lang.isValue(item)) {
							resultURL.setParameter(namespacePrefix + index, item);
						}
					}
				);

				if (options.secure) {
					resultURL.setProtocol('https');
				}

				var value = resultURL.toString();

				if (options.escapeXML) {
					value = Lang.String.escapeHTML(value);
				}

				return value;
			},

			_isReservedParam: function(paramName) {
				var instance = this;

				var result = false;

				A.each(
					instance.reservedParams,
					function(item, index) {
						if (index === paramName) {
							result = true;
						}
					}
				);

				return result;
			}
		};

		A.mix(
			PortletURL,
			{
				ACTION_PHASE: '1',

				RENDER_PHASE: '0',

				RESOURCE_PHASE: '2',

				createActionURL: function() {
					return new PortletURL(PortletURL.ACTION_PHASE);
				},

				createRenderURL: function() {
					return new PortletURL(PortletURL.RENDER_PHASE);
				},

				createResourceURL: function() {
					return new PortletURL(PortletURL.RESOURCE_PHASE);
				},

				createURL: function(basePortletURL, params) {
					return new PortletURL(null, params, basePortletURL);
				}
			}
		);

		Liferay.PortletURL = PortletURL;
	},
	'',
	{
		requires: ['aui-base', 'aui-io-request', 'aui-url', 'querystring-stringify-simple']
	}
);
YUI.add("aui-dialog-iframe-deprecated",function(e,t){var n=e.Lang,r=n.isFunction,i=e.getClassName,s="iframe",o="bindLoadHandler",u="bodyContent",a="closeOnEscape",f="contentWindow",l="detach",c="document",h="documentElement",p="gutter",d="host",v="iframeCssClass",m="iframeId",g="key",y="load",b="offsetHeight",w="offsetWidth",E="paddingBottom",S="paddingLeft",x="paddingRight",T="paddingTop",N="renderUI",C="rendered",k="src",L="unload",A="uri",O="uriChange",M="visibleChange",_=i("dialog",s,"bd"),D=i("dialog",s,"node"),P=i("dialog",s,"root","node"),H=[D],B='<iframe class="{cssClass}" frameborder="0" id="{id}" name="{id}" src="{uri}"></iframe>',j=e.Widget.UI_SRC,F={src:j},I=e.Component.create({ATTRS:{bindLoadHandler:{validator:r,value:function(){var t=this;t.node.on("load",e.bind(t.fire,t,"load"))}},closeOnEscape:{validator:n.isBoolean,value:!0},gutter:{setter:"_setGutter",valueFn:"_gutterValueFn"},iframeCssClass:{value:"",setter:"_setIframeCssClass"},iframeId:{valueFn:function(){var t=this;return t.get("id")||e.guid()}},uri:{}},EXTENDS:e.Plugin.Base,NAME:s,NS:s,prototype:{initializer:function(){var t=this;t._host=t.get(d),t._eventHandles=[],t.publish(y,{defaultFn:t._defaultLoadIframeFn}),t._host.get(C)?t._initializeIframe():t.afterHostMethod(N,e.debounce(t._afterRenderUI,50,t),t),t.afterHostMethod("_uiSetVisible",e.bind(t._afterHostUISetVisible,t),t),t.afterHostMethod("_fillHeight",e.bind(t._setNodeDimensions,t),t),t.afterHostMethod("_uiSetWidth",e.bind(t._setNodeDimensions,t),t),t.after(a+"Change",t._uiSetCloseOnEscape,t)},destructor:function(){var e=this;e._bodyNode.loadingmask.destroy(),e._detachEventHandles(),e._host.set(u,e._previousBodyContent),e.node.remove(!0)},_afterHostUISetVisible:function(e){var t=this;e&&t._host._fillHeight()},_afterRenderUI:function(){var e=this;e._initializeIframe()},_afterUriChange:function(e){var t=this;e.src!==j&&t._uiSetUri(e.newVal,e.prevVal)},_bindEvents:function(){var t=this;t.afterHostEvent(M,t._afterDialogVisibleChange),t.after(O,t._afterUriChange),t.node.on(y,e.bind(t._onLoadIframe,t));var n=t.get(o);n.call(t)},_detachEventHandles:function(){var t=this,n=t._eventHandles;e.Array.invoke(n,l),t._eventCloseOnEscapeHandle&&t._eventCloseOnEscapeHandle.detach(),n.length=0},_defaultLoadIframeFn:function(){var e=this,t=e.node;try{var n=t.get(f);n.once(L,e._detachEventHandles,e);var r=n.get(c);r.get(h).addClass(P),e.set(A,r.get("location.href"),F),e._uiSetCloseOnEscape()}catch(i){}e._bodyNode.loadingmask.hide(),e._host._syncUIPosAlign()},_gutterValueFn:function(){return function(){var e=this,t=e._host.bodyNode;return{bottom:t.getStyle(E),left:t.getStyle(S),right:t.getStyle(x),top:t.getStyle(T)}}},_initializeIframe:function(){var t=this;t._plugIframe(),t._bindEvents();var n=t._bodyNode;n.plug(e.LoadingMask);var r=n.loadingmask;r.overlayMask.after(M,t._afterMaskVisibleChange,t),r.show()},_onLoadIframe:function(){var e=this;e._setIframeContentGutter(),e._setNodeDimensions()},_plugIframe:function(){var t=this,r=n.sub(B,{cssClass:t.get(v),id:t.get(m),uri:t.get(A)}),i=t._host.bodyNode,s=e.Node.create(r);t._host.set(u,s),i.addClass(_),t._bodyNode=i,t.node=s},_setGutter:function(e){var t=this;return r(e)&&(e=e.call(t)),e},_setIframeContentGutter:function(){var e=this,t=e._host.bodyNode,n=e.get(p),r=e.node.get(f),i=r.get(c);i.get(h).setStyles({paddingBottom:n.bottom,paddingLeft:n.left,paddingRight:n.right,paddingTop:n.top}),t.setStyles({height:t.get(b),padding:"0"})},_setIframeCssClass:function(e){return H[1]=e,H.join(" ")},_setNodeDimensions:function(){var e=this,t=e._host.bodyNode,n=e.node;t&&n&&n.setStyles({height:t.get(b),width:t.get(w)})},_uiSetCloseOnEscape:function(){var t=this;if(t.get(a)){if(!t._eventCloseOnEscapeHandle)try{var n=t.node.get(f),r=n.get(c);t._eventCloseOnEscapeHandle=e.on(g,function(){t._host.hide()},[r],"down:27")}catch(i){}}else t._eventCloseOnEscapeHandle&&(t._eventCloseOnEscapeHandle.detach(),t._eventCloseOnEscapeHandle=null)},_uiSetUri:function(e,t){var n=this,r=n._bodyNode.loadingmask,i=t.split("#"),s=e.split("#");s[0]!==i[0]&&r&&r.show(),n.node.attr(k,e)}}});e.Plugin.DialogIframe=I},"3.0.3-deprecated.50",{requires:["plugin","array-invoke","aui-base-deprecated","aui-loading-mask-deprecated"],skinnable:!0});
YUI.add("button-core",function(e,t){function i(e){this.initializer(e)}var n=e.ClassNameManager.getClassName,r=e.AttributeCore;i.prototype={TEMPLATE:"<button/>",constructor:i,initializer:function(e){this._initNode(e),this._initAttributes(e),this._renderUI(e)},_initNode:function(t){t.host?this._host=e.one(t.host):this._host=e.Node.create(this.TEMPLATE)},_initAttributes:function(e){r.call(this,i.ATTRS,e)},_renderUI:function(){var e=this.getNode(),t=e.get("nodeName").toLowerCase();e.addClass(i.CLASS_NAMES.BUTTON),t!=="button"&&t!=="input"&&e.set("role","button")},enable:function(){this.set("disabled",!1)},disable:function(){this.set("disabled",!0)},getNode:function(){return this._host||(this._host=this.get("boundingBox")),this._host},_getLabel:function(){var e=this.getNode(),t=i._getTextLabelFromNode(e);return t},_getLabelHTML:function(){var e=this.getNode(),t=i._getHTMLFromNode(e);return t},_setLabel:function(t,n,r){var i=e.Escape.html(t);return(!r||r.src!=="internal")&&this.set("labelHTML",i,{src:"internal"}),i},_setLabelHTML:function(e,t,n){var r=this.getNode(),s=i._getLabelNodeFromParent(r),o=r.get("nodeName").toLowerCase();return o==="input"?s.set("value",e):s.setHTML(e),(!n||n.src!=="internal")&&this.set("label",e,{src:"internal"}),e},_setDisabled:function(e){var t=this.getNode();return t.getDOMNode().disabled=e,t.toggleClass(i.CLASS_NAMES.DISABLED,e),e}},e.mix(i.prototype,r.prototype),i.ATTRS={label:{setter:"_setLabel",getter:"_getLabel",lazyAdd:!1},labelHTML:{setter:"_setLabelHTML",getter:"_getLabelHTML",lazyAdd:!1},disabled:{value:!1,setter:"_setDisabled",lazyAdd:!1}},i.NAME="button",i.CLASS_NAMES={BUTTON:n("button"),DISABLED:n("button","disabled"),SELECTED:n("button","selected"),LABEL:n("button","label")},i.ARIA_STATES={PRESSED:"aria-pressed",CHECKED:"aria-checked"},i.ARIA_ROLES={BUTTON:"button",CHECKBOX:"checkbox",TOGGLE:"toggle"},i._getLabelNodeFromParent=function(e){var t=e.one("."+i.CLASS_NAMES.LABEL)||e;return t},i._getTextLabelFromNode=function(e){var t=i._getLabelNodeFromParent(e),n=t.get("nodeName").toLowerCase(),r=t.get(n==="input"?"value":"text");return r},i._getHTMLFromNode=function(e){var t=i._getLabelNodeFromParent(e),n=t.getHTML();return n},i._getDisabledFromNode=function(e){return e.get("disabled")},e.ButtonCore=i},"patched-v3.18.1",{requires:["attribute-core","classnamemanager","node-base","escape"]});
YUI.add("button-plugin",function(e,t){function n(){n.superclass.constructor.apply(this,arguments)}e.extend(n,e.ButtonCore,{_afterNodeGet:function(t){var n=this.constructor.ATTRS,r=n[t]&&n[t].getter&&this[n[t].getter];if(r)return new e.Do.AlterReturn("get "+t,r.call(this))},_afterNodeSet:function(e,t){var n=this.constructor.ATTRS,r=n[e]&&n[e].setter&&this[n[e].setter];r&&r.call(this,t)},_initNode:function(t){var n=t.host;this._host=n,e.Do.after(this._afterNodeGet,n,"get",this),e.Do.after(this._afterNodeSet,n,"set",this)},destroy:function(){}},{ATTRS:e.merge(e.ButtonCore.ATTRS),NAME:"buttonPlugin",NS:"button"}),n.createNode=function(t,n){var r;return t&&!n&&!t.nodeType&&!t.getDOMNode&&typeof t!="string"&&(n=t,t=n.srcNode),n=n||{},r=n.template||e.Plugin.Button.prototype.TEMPLATE,t=t||n.srcNode||e.DOM.create(r),e.one(t).plug(e.Plugin.Button,n)},e.namespace("Plugin").Button=n},"patched-v3.18.1",{requires:["button-core","cssbutton","node-pluginhost"]});
YUI.add("widget-buttons",function(e,t){function p(e){return!!e.getDOMNode}function d(){this._buttonsHandles={}}var n=e.Array,r=e.Lang,i=e.Object,s=e.Plugin.Button,o=e.Widget,u=e.WidgetStdMod,a=e.ClassNameManager.getClassName,f=r.isArray,l=r.isNumber,c=r.isString,h=r.isValue;d.ATTRS={buttons:{getter:"_getButtons",setter:"_setButtons",value:{}},defaultButton:{readOnly:!0,value:null}},d.CLASS_NAMES={button:a("button"),buttons:o.getClassName("buttons"),primary:a("button","primary")},d.HTML_PARSER={buttons:function(e){return this._parseButtons(e)}},d.NON_BUTTON_NODE_CFG=["action","classNames","context","events","isDefault","section"],d.prototype={BUTTONS:{},BUTTONS_TEMPLATE:"<span />",DEFAULT_BUTTONS_SECTION:u.FOOTER,initializer:function(){this._stdModNode||e.error("WidgetStdMod must be added to a Widget before WidgetButtons."),this._mapButtons(this.get("buttons")),this._updateDefaultButton(),this.after({buttonsChange:e.bind("_afterButtonsChange",this),defaultButtonChange:e.bind("_afterDefaultButtonChange",this)}),e.after(this._bindUIButtons,this,"bindUI"),e.after(this._syncUIButtons,this,"syncUI")},destructor:function(){i.each(this._buttonsHandles,function(e){e.detach()}),delete this._buttonsHandles,delete this._buttonsMap,delete this._defaultButton},addButton:function(e,t,r){var i=this.get("buttons"),s,o;return p(e)||(e=this._mergeButtonConfig(e),t||(t=e.section)),t||(t=this.DEFAULT_BUTTONS_SECTION),s=i[t]||(i[t]=[]),l(r)||(r=s.length),s.splice(r,0,e),o=n.indexOf(s,e),this.set("buttons",i,{button:e,section:t,index:o,src:"add"}),this},getButton:function(e,t){if(!h(e))return;var n=this._buttonsMap,r;return t||(t=this.DEFAULT_BUTTONS_SECTION),l(e)?(r=this.get("buttons"),r[t]&&r[t][e]):arguments.length>1?n[t+":"+e]:n[e]},removeButton:function(e,t){if(!h(e))return this;var r=this.get("buttons"),s;return l(e)?(t||(t=this.DEFAULT_BUTTONS_SECTION),s=e,e=r[t][s]):(c(e)&&(e=this.getButton.apply(this,arguments)),i.some(r,function(r,i){s=n.indexOf(r,e);if(s>-1)return t=i,!0})),e&&s>-1&&(r[t].splice(s,1),this.set("buttons",r,{button:e,section:t,index:s,src:"remove"})),this},_bindUIButtons:function(){var t=e.bind("_afterContentChangeButtons",this);this.after({visibleChange:e.bind("_afterVisibleChangeButtons",this),headerContentChange:t,bodyContentChange:t,footerContentChange:t})},_createButton:function(t){var r,i,o,u,a,f,l,h;if(p(t))return e.one(t.getDOMNode()).plug(s);r=e.merge({context:this,events:"click",label:t.value},t),i=e.merge(r),o=d.NON_BUTTON_NODE_CFG;for(u=0,a=o.length;u<a;u+=1)delete i[o[u]];return t=s.createNode(i),l=r.context,f=r.action,c(f)&&(f=e.bind(f,l)),h=t.on(r.events,f,l),this._buttonsHandles[e.stamp(t,!0)]=h,t.setData("name",this._getButtonName(r)),t.setData("default",this._getButtonDefault(r)),n.each(n(r.classNames),t.addClass,t),t},_getButtonContainer:function(t,n){var r=u.SECTION_CLASS_NAMES[t],i=d.CLASS_NAMES.buttons,s=this.get("contentBox"),o,a;return o="."+r+" ."+i,a=s.one(o),!a&&n&&(a=e.Node.create(this.BUTTONS_TEMPLATE),a.addClass(i)),a},_getButtonDefault:function(e){var t=p(e)?e.getData("default"):e.isDefault;return c(t)?t.toLowerCase()==="true":!!t},_getButtonName:function(e){var t;return p(e)?t=e.getData("name")||e.get("name"):t=e&&(e.name||e.type),t},_getButtons:function(e){var t={};return i.each(e,function(e,n){t[n]=e.concat()}),t},_mapButton:function(e,t){var n=this._buttonsMap,r=this._getButtonName(e),i=this._getButtonDefault(e);r&&(n[r]=e,n[t+":"+r]=e),i&&(this._defaultButton=e)},_mapButtons:function(e){this._buttonsMap={},this._defaultButton=null,i.each(e,function(e,t){var n,r;for(n=0,r=e.length;n<r;n+=1)this._mapButton(e[n],t)},this)},_mergeButtonConfig:function(t){var n,r,i,s,o,u;return t=c(t)?{name:t}:e.merge(t),t.srcNode&&(s=t.srcNode,o=s.get("tagName").toLowerCase(),u=s.get(o==="input"?"value":"text"),n={disabled:!!s.get("disabled"),isDefault:this._getButtonDefault(s),name:this._getButtonName(s)},u&&(n.label=u),e.mix(t,n,!1,null,0,!0)),i=this._getButtonName(t),r=this.BUTTONS&&this.BUTTONS[i],r&&e.mix(t,r,!1,null,0,!0),t},_parseButtons:function(e){var t="."+d.CLASS_NAMES.button,r=["header","body","footer"],i=null;return n.each(r,function(e){var n=this._getButtonContainer(e),r=n&&n.all(t),s;if(!r||r.isEmpty())return;s=[],r.each(function(e){s.push({srcNode:e})}),i||(i={}),i[e]=s},this),i},_setButtons:function(e){function r(e,r){if(!f(e))return;var i,s,o,u;for(i=0,s=e.length;i<s;i+=1)o=e[i],u=r,p(o)||(o=this._mergeButtonConfig(o),u||(u=o.section)),o=this._createButton(o),u||(u=t),(n[u]||(n[u]=[])).push(o)}var t=this.DEFAULT_BUTTONS_SECTION,n={};return f(e)?r.call(this,e):i.each(e,r,this),n},_syncUIButtons:function(){this._uiSetButtons(this.get("buttons")),this._uiSetDefaultButton(this.get("defaultButton")),this._uiSetVisibleButtons(this.get("visible"))},_uiInsertButton:function(e,t,n){var r=d.CLASS_NAMES.button,i=this._getButtonContainer(t,!0),s=i.all("."+r);i.insertBefore(e,s.item(n)),this.setStdModContent(t,i,"after")},_uiRemoveButton:function(t,n,r){var i=e.stamp(t,this),s=this._buttonsHandles,o=s[i],u,a;o&&o.detach(),delete s[i],t.remove(),r||(r={}),r.preserveContent||(u=this._getButtonContainer(n),a=d.CLASS_NAMES.button,u&&u.all("."+a).isEmpty()&&(u.remove(),this._updateContentButtons(n)))},_uiSetButtons:function(e){var t=d.CLASS_NAMES.button,r=["header","body","footer"];n.each(r,function(n){var r=e[n]||[],i=r.length,s=this._getButtonContainer(n,i),o=!1,u,a,f,l;if(!s)return;u=s.all("."+t);for(a=0;a<i;a+=1)f=r[a],l=u.indexOf(f),l>-1?(u.splice(l,1),l!==a&&(s.insertBefore(f,a+1),o=!0)):(s.appendChild(f),o=!0);u.each(function(e){this._uiRemoveButton(e,n,{preserveContent:!0}),o=!0},this);if(i===0){s.remove(),this._updateContentButtons(n);return}o&&this.setStdModContent(n,s,"after")},this)},_uiSetDefaultButton:function(e,t){var n=d.CLASS_NAMES.primary;e&&e.addClass(n),t&&t.removeClass(n)},_uiSetVisibleButtons:function(e){if(!e)return;var t=this.get("defaultButton");t&&t.focus()},_unMapButton:function(e,t){var n=this._buttonsMap,r=this._getButtonName(e),i;r&&(n[r]===e&&delete 
n[r],i=t+":"+r,n[i]===e&&delete n[i]),this._defaultButton===e&&(this._defaultButton=null)},_updateDefaultButton:function(){var e=this._defaultButton;this.get("defaultButton")!==e&&this._set("defaultButton",e)},_updateContentButtons:function(e){var t=this.getStdModNode(e).get("childNodes");this.set(e+"Content",t.isEmpty()?null:t,{src:"buttons"})},_afterButtonsChange:function(e){var t=e.newVal,n=e.section,r=e.index,i=e.src,s;if(i==="add"){s=t[n][r],this._mapButton(s,n),this._updateDefaultButton(),this._uiInsertButton(s,n,r);return}if(i==="remove"){s=e.button,this._unMapButton(s,n),this._updateDefaultButton(),this._uiRemoveButton(s,n);return}this._mapButtons(t),this._updateDefaultButton(),this._uiSetButtons(t)},_afterContentChangeButtons:function(e){var t=e.src,n=e.stdModPosition,r=!n||n===u.REPLACE;r&&t!=="buttons"&&t!==o.UI_SRC&&this._uiSetButtons(this.get("buttons"))},_afterDefaultButtonChange:function(e){this._uiSetDefaultButton(e.newVal,e.prevVal)},_afterVisibleChangeButtons:function(e){this._uiSetVisibleButtons(e.newVal)}},e.WidgetButtons=d},"patched-v3.18.1",{requires:["button-plugin","cssbutton","widget-stdmod"]});
YUI.add("widget-modality",function(e,t){function g(e){}var n="widget",r="renderUI",i="bindUI",s="syncUI",o="boundingBox",u="visible",a="zIndex",f="Change",l=e.Lang.isBoolean,c=e.ClassNameManager.getClassName,h="maskShow",p="maskHide",d="clickoutside",v="focusoutside",m=function(){
/*! IS_POSITION_FIXED_SUPPORTED - Juriy Zaytsev (kangax) - http://yura.thinkweb2.com/cft/ */
;var t=e.config.doc,n=null,r,i;return t.createElement&&(r=t.createElement("div"),r&&r.style&&(r.style.position="fixed",r.style.top="10px",i=t.body,i&&i.appendChild&&i.removeChild&&(i.appendChild(r),n=r.offsetTop===10,i.removeChild(r)))),n}(),y="modal",b="mask",w={modal:c(n,y),mask:c(n,b)};g.ATTRS={maskNode:{getter:"_getMaskNode",readOnly:!0},modal:{value:!1,validator:l},focusOn:{valueFn:function(){return[{eventName:d},{eventName:v}]},validator:e.Lang.isArray}},g.CLASSES=w,g._MASK=null,g._GET_MASK=function(){var t=g._MASK,n=e.one("win");return t&&t.getDOMNode()!==null&&t.inDoc()?t:(t=e.Node.create("<div></div>").addClass(w.mask),g._MASK=t,m?t.setStyles({position:"fixed",width:"100%",height:"100%",top:"0",left:"0",display:"block"}):t.setStyles({position:"absolute",width:n.get("winWidth")+"px",height:n.get("winHeight")+"px",top:"0",left:"0",display:"block"}),t)},g.STACK=[],g.prototype={initializer:function(){e.after(this._renderUIModal,this,r),e.after(this._syncUIModal,this,s),e.after(this._bindUIModal,this,i)},destructor:function(){this._uiSetHostVisibleModal(!1)},_uiHandlesModal:null,_renderUIModal:function(){var e=this.get(o);this._repositionMask(this),e.addClass(w.modal)},_bindUIModal:function(){this.after(u+f,this._afterHostVisibleChangeModal),this.after(a+f,this._afterHostZIndexChangeModal),this.after("focusOnChange",this._afterFocusOnChange),(!m||e.UA.ios&&e.UA.ios<5||e.UA.android&&e.UA.android<3)&&e.one("win").on("scroll",this._resyncMask,this)},_syncUIModal:function(){this._uiSetHostVisibleModal(this.get(u))},_focus:function(){var e=this.get(o),t=e.get("tabIndex");e.set("tabIndex",t>=0?t:0),this.focus()},_blur:function(){this.blur()},_getMaskNode:function(){return g._GET_MASK()},_uiSetHostVisibleModal:function(t){var n=g.STACK,r=this.get("maskNode"),i=this.get("modal"),s,o;t?(e.Array.each(n,function(e){e._detachUIHandlesModal(),e._blur()}),n.unshift(this),this._repositionMask(this),this._uiSetHostZIndexModal(this.get(a)),i&&(r.show(),e.later(1,this,"_attachUIHandlesModal"),this._focus(),this._blockIFrameFocus())):(o=e.Array.indexOf(n,this),o>=0&&n.splice(o,1),this._detachUIHandlesModal(),this._blur(),n.length?(s=n[0],this._repositionMask(s),s._uiSetHostZIndexModal(s.get(a)),s.get("modal")&&(e.later(1,s,"_attachUIHandlesModal"),s._focus())):r.getStyle("display")==="block"&&r.hide(),this._unblockIFrameFocus())},_blockIFrameFocus:function(){var t=this.get(o);e.all("iframe").each(function(){t.contains(this)||(this.setAttribute("data-tabindex",this.get("tabIndex")),this.set("tabIndex",-1))})},_unblockIFrameFocus:function(){e.all("iframe").each(function(){this.hasAttribute("data-tabindex")&&(this.set("tabIndex",this.getAttribute("data-tabindex")),this.removeAttribute("data-tabindex"))})},_uiSetHostZIndexModal:function(e){this.get("modal")&&this.get("maskNode").setStyle(a,e||0)},_attachUIHandlesModal:function(){if(this._uiHandlesModal||g.STACK[0]!==this)return;var t=this.get(o),n=this.get("maskNode"),r=this.get("focusOn"),i=e.bind(this._focus,this),s=[],u,a,f;for(u=0,a=r.length;u<a;u++)f={},f.node=r[u].node,f.ev=r[u].eventName,f.keyCode=r[u].keyCode,!f.node&&!f.keyCode&&f.ev?s.push(t.on(f.ev,i)):f.node&&!f.keyCode&&f.ev?s.push(f.node.on(f.ev,i)):f.node&&f.keyCode&&f.ev&&s.push(f.node.on(f.ev,i,f.keyCode));m||s.push(e.one("win").on("scroll",e.bind(function(){n.setStyle("top",n.get("docScrollY"))},this))),this._uiHandlesModal=s},_detachUIHandlesModal:function(){e.each(this._uiHandlesModal,function(e){e.detach()}),this._uiHandlesModal=null},_afterHostVisibleChangeModal:function(e){this._uiSetHostVisibleModal(e.newVal)},_afterHostZIndexChangeModal:function(e){this._uiSetHostZIndexModal(e.newVal)},isNested:function(){var e=g.STACK.length,t=e>1?!0:!1;return t},_repositionMask:function(t){var n=this.get("modal"),r=t.get("modal"),i=this.get("maskNode"),s,u;if(n&&!r)i.remove(),this.fire(p);else if(!n&&r||n&&r)i.remove(),this.fire(p),s=t.get(o),u=s.get("parentNode")||e.one("body"),u.insert(i,u.get("firstChild")),this.fire(h)},_resyncMask:function(e){var t=e.currentTarget,n=t.get("docScrollX"),r=t.get("docScrollY"),i=t.get("innerWidth")||t.get("winWidth"),s=t.get("innerHeight")||t.get("winHeight"),o=this.get("maskNode");o.setStyles({top:r+"px",left:n+"px",width:i+"px",height:s+"px"})},_afterFocusOnChange:function(){this._detachUIHandlesModal(),this.get(u)&&this._attachUIHandlesModal()}},e.WidgetModality=g},"patched-v3.18.1",{requires:["base-build","event-outside","widget"],skinnable:!0});
YUI.add("dd-ddm-base",function(e,t){var n=function(){n.superclass.constructor.apply(this,arguments)};n.NAME="ddm",n.ATTRS={dragCursor:{value:"move"},clickPixelThresh:{value:3},clickTimeThresh:{value:1e3},throttleTime:{value:-1},dragMode:{value:"point",setter:function(e){return this._setDragMode(e),e}}},e.extend(n,e.Base,{_createPG:function(){},_active:null,_setDragMode:function(t){t===null&&(t=e.DD.DDM.get("dragMode"));switch(t){case 1:case"intersect":return 1;case 2:case"strict":return 2;case 0:case"point":return 0}return 0},CSS_PREFIX:e.ClassNameManager.getClassName("dd"),_activateTargets:function(){},_drags:[],activeDrag:!1,_regDrag:function(e){return this.getDrag(e.get("node"))?!1:(this._active||this._setupListeners(),this._drags.push(e),!0)},_unregDrag:function(t){var n=[];e.Array.each(this._drags,function(e){e!==t&&(n[n.length]=e)}),this._drags=n},_setupListeners:function(){this._createPG(),this._active=!0;var t=e.one(e.config.doc);t.on("mousemove",e.throttle(e.bind(this._docMove,this),this.get("throttleTime"))),t.on("mouseup",e.bind(this._end,this))},_start:function(){this.fire("ddm:start"),this._startDrag()},_startDrag:function(){},_endDrag:function(){},_dropMove:function(){},_end:function(){this.activeDrag&&(this._shimming=!1,this._endDrag(),this.fire("ddm:end"),this.activeDrag.end.call(this.activeDrag),this.activeDrag=null)},stopDrag:function(){return this.activeDrag&&this._end(),this},_shimming:!1,_docMove:function(e){this._shimming||this._move(e)},_move:function(e){this.activeDrag&&(this.activeDrag._move.call(this.activeDrag,e),this._dropMove())},cssSizestoObject:function(e){var t=e.split(" ");switch(t.length){case 1:t[1]=t[2]=t[3]=t[0];break;case 2:t[2]=t[0],t[3]=t[1];break;case 3:t[3]=t[1]}return{top:parseInt(t[0],10),right:parseInt(t[1],10),bottom:parseInt(t[2],10),left:parseInt(t[3],10)}},getDrag:function(t){var n=!1,r=e.one(t);return r instanceof e.Node&&e.Array.each(this._drags,function(e){r.compareTo(e.get("node"))&&(n=e)}),n},swapPosition:function(t,n){t=e.DD.DDM.getNode(t),n=e.DD.DDM.getNode(n);var r=t.getXY(),i=n.getXY();return t.setXY(i),n.setXY(r),t},getNode:function(t){return t instanceof e.Node?t:(t&&t.get?e.Widget&&t instanceof e.Widget?t=t.get("boundingBox"):t=t.get("node"):t=e.one(t),t)},swapNode:function(t,n){t=e.DD.DDM.getNode(t),n=e.DD.DDM.getNode(n);var r=n.get("parentNode"),i=n.get("nextSibling");return i===t?r.insertBefore(t,n):n===t.get("nextSibling")?r.insertBefore(n,t):(t.get("parentNode").replaceChild(n,t),r.insertBefore(t,i)),t}}),e.namespace("DD"),e.DD.DDM=new n},"patched-v3.18.1",{requires:["node","base","yui-throttle","classnamemanager"]});
YUI.add("dd-drag",function(e,t){var n=e.DD.DDM,r="node",i="dragging",s="dragNode",o="offsetHeight",u="offsetWidth",a="drag:mouseDown",f="drag:afterMouseDown",l="drag:removeHandle",c="drag:addHandle",h="drag:removeInvalid",p="drag:addInvalid",d="drag:start",v="drag:end",m="drag:drag",g="drag:align",y=function(t){this._lazyAddAttrs=!1,y.superclass.constructor.apply(this,arguments);var r=n._regDrag(this);r||e.error("Failed to register node, already in use: "+t.node)};y.NAME="drag",y.START_EVENT="mousedown",y.ATTRS={node:{setter:function(t){if(this._canDrag(t))return t;var n=e.one(t);return n||e.error("DD.Drag: Invalid Node Given: "+t),n}},dragNode:{setter:function(t){if(this._canDrag(t))return t;var n=e.one(t);return n||e.error("DD.Drag: Invalid dragNode Given: "+t),n}},offsetNode:{value:!0},startCentered:{value:!1},clickPixelThresh:{value:n.get("clickPixelThresh")},clickTimeThresh:{value:n.get("clickTimeThresh")},lock:{value:!1,setter:function(e){return e?this.get(r).addClass(n.CSS_PREFIX+"-locked"):this.get(r).removeClass(n.CSS_PREFIX+"-locked"),e}},data:{value:!1},move:{value:!0},useShim:{value:!0},activeHandle:{value:!1},primaryButtonOnly:{value:!0},dragging:{value:!1},parent:{value:!1},target:{value:!1,setter:function(e){return this._handleTarget(e),e}},dragMode:{value:null,setter:function(e){return n._setDragMode(e)}},groups:{value:["default"],getter:function(){return this._groups?e.Object.keys(this._groups):(this._groups={},[])},setter:function(t){return this._groups=e.Array.hash(t),t}},handles:{value:null,setter:function(t){return t?(this._handles={},e.Array.each(t,function(t){var n=t;if(t instanceof e.Node||t instanceof e.NodeList)n=t._yuid;this._handles[n]=t},this)):this._handles=null,t}},bubbles:{setter:function(e){return this.addTarget(e),e}},haltDown:{value:!0}},e.extend(y,e.Base,{_canDrag:function(e){return e&&e.setXY&&e.getXY&&e.test&&e.contains?!0:!1},_bubbleTargets:e.DD.DDM,addToGroup:function(e){return this._groups[e]=!0,n._activateTargets(),this},removeFromGroup:function(e){return delete this._groups[e],n._activateTargets(),this},target:null,_handleTarget:function(t){e.DD.Drop&&(t===!1?this.target&&(n._unregTarget(this.target),this.target=null):(e.Lang.isObject(t)||(t={}),t.bubbleTargets=t.bubbleTargets||this.getTargets(),t.node=this.get(r),t.groups=t.groups||this.get("groups"),this.target=new e.DD.Drop(t)))},_groups:null,_createEvents:function(){this.publish(a,{defaultFn:this._defMouseDownFn,queuable:!1,emitFacade:!0,bubbles:!0,prefix:"drag"}),this.publish(g,{defaultFn:this._defAlignFn,queuable:!1,emitFacade:!0,bubbles:!0,prefix:"drag"}),this.publish(m,{defaultFn:this._defDragFn,queuable:!1,emitFacade:!0,bubbles:!0,prefix:"drag"}),this.publish(v,{defaultFn:this._defEndFn,preventedFn:this._prevEndFn,queuable:!1,emitFacade:!0,bubbles:!0,prefix:"drag"});var t=[f,l,c,h,p,d,"drag:drophit","drag:dropmiss","drag:over","drag:enter","drag:exit"];e.Array.each(t,function(e){this.publish(e,{type:e,emitFacade:!0,bubbles:!0,preventable:!1,queuable:!1,prefix:"drag"})},this)},_ev_md:null,_startTime:null,_endTime:null,_handles:null,_invalids:null,_invalidsDefault:{textarea:!0,input:!0,a:!0,button:!0,select:!0},_dragThreshMet:null,_fromTimeout:null,_clickTimeout:null,deltaXY:null,startXY:null,nodeXY:null,lastXY:null,actXY:null,realXY:null,mouseXY:null,region:null,_handleMouseUp:function(){this.fire("drag:mouseup"),this._fixIEMouseUp(),n.activeDrag&&n._end()},_fixDragStart:function(e){this.validClick(e)&&e.preventDefault()},_ieSelectFix:function(){return!1},_ieSelectBack:null,_fixIEMouseDown:function(){e.UA.ie&&(this._ieSelectBack=e.config.doc.body.onselectstart,e.config.doc.body.onselectstart=this._ieSelectFix)},_fixIEMouseUp:function(){e.UA.ie&&(e.config.doc.body.onselectstart=this._ieSelectBack)},_handleMouseDownEvent:function(e){this.validClick(e)&&e.preventDefault(),this.fire(a,{ev:e})},_defMouseDownFn:function(t){var r=t.ev;this._dragThreshMet=!1,this._ev_md=r;if(this.get("primaryButtonOnly")&&r.button>1)return!1;this.validClick(r)&&(this._fixIEMouseDown(r),y.START_EVENT.indexOf("gesture")!==0&&(this.get("haltDown")?r.halt():r.preventDefault()),this._setStartPosition([r.pageX,r.pageY]),n.activeDrag=this,this._clickTimeout=e.later(this.get("clickTimeThresh"),this,this._timeoutCheck)),this.fire(f,{ev:r})},validClick:function(t){var n=!1,i=!1,s=t.target,o=null,u=null,a=null,f=!1;if(this._handles)e.Object.each(this._handles,function(t,r){t instanceof e.Node||t instanceof e.NodeList?n||(a=t,a instanceof e.Node&&(a=new e.NodeList(t._node)),a.each(function(e){e.contains(s)&&(n=!0)})):e.Lang.isString(r)&&s.test(r+", "+r+" *")&&!o&&(o=r,n=!0)});else{i=this.get(r);if(i.contains(s)||i.compareTo(s))n=!0}return n&&this._invalids&&e.Object.each(this._invalids,function(t,r){e.Lang.isString(r)&&s.test(r+", "+r+" *")&&(n=!1)}),n&&(o?(u=t.currentTarget.all(o),f=!1,u.each(function(e){(e.contains(s)||e.compareTo(s))&&!f&&(f=!0,this.set("activeHandle",e))},this)):this.set("activeHandle",this.get(r))),n},_setStartPosition:function(e){this.startXY=e,this.nodeXY=this.lastXY=this.realXY=this.get(r).getXY(),this.get("offsetNode")?this.deltaXY=[this.startXY[0]-this.nodeXY[0],this.startXY[1]-this.nodeXY[1]]:this.deltaXY=[0,0]},_timeoutCheck:function(){!this.get("lock")&&!this._dragThreshMet&&this._ev_md&&(this._fromTimeout=this._dragThreshMet=!0,this.start(),this._alignNode([this._ev_md.pageX,this._ev_md.pageY],!0))},removeHandle:function(t){var n=t;if(t instanceof e.Node||t instanceof e.NodeList)n=t._yuid;return this._handles[n]&&(delete this._handles[n],this.fire(l,{handle:t})),this},addHandle:function(t){this._handles||(this._handles={});var n=t;if(t instanceof e.Node||t instanceof e.NodeList)n=t._yuid;return this._handles[n]=t,this.fire(c,{handle:t}),this},removeInvalid:function(e){return this._invalids[e]&&(this._invalids[e]=null,delete this._invalids[e],this.fire(h,{handle:e})),this},addInvalid:function(t){return e.Lang.isString(t)&&(this._invalids[t]=!0,this.fire(p,{handle:t})),this},initializer:function(
){this.get(r).dd=this;if(!this.get(r).get("id")){var t=e.stamp(this.get(r));this.get(r).set("id",t)}this.actXY=[],this._invalids=e.clone(this._invalidsDefault,!0),this._createEvents(),this.get(s)||this.set(s,this.get(r)),this.on("initializedChange",e.bind(this._prep,this)),this.set("groups",this.get("groups"))},_prep:function(){this._dragThreshMet=!1;var t=this.get(r);t.addClass(n.CSS_PREFIX+"-draggable"),t.on(y.START_EVENT,e.bind(this._handleMouseDownEvent,this)),t.on("mouseup",e.bind(this._handleMouseUp,this)),t.on("dragstart",e.bind(this._fixDragStart,this))},_unprep:function(){var e=this.get(r);e.removeClass(n.CSS_PREFIX+"-draggable"),e.detachAll("mouseup"),e.detachAll("dragstart"),e.detachAll(y.START_EVENT),this.mouseXY=[],this.deltaXY=[0,0],this.startXY=[],this.nodeXY=[],this.lastXY=[],this.actXY=[],this.realXY=[]},start:function(){if(!this.get("lock")&&!this.get(i)){var e=this.get(r),t,a,f;this._startTime=(new Date).getTime(),n._start(),e.addClass(n.CSS_PREFIX+"-dragging"),this.fire(d,{pageX:this.nodeXY[0],pageY:this.nodeXY[1],startTime:this._startTime}),e=this.get(s),f=this.nodeXY,t=e.get(u),a=e.get(o),this.get("startCentered")&&this._setStartPosition([f[0]+t/2,f[1]+a/2]),this.region={0:f[0],1:f[1],area:0,top:f[1],right:f[0]+t,bottom:f[1]+a,left:f[0]},this.set(i,!0)}return this},end:function(){return this._endTime=(new Date).getTime(),this._clickTimeout&&this._clickTimeout.cancel(),this._dragThreshMet=this._fromTimeout=!1,!this.get("lock")&&this.get(i)&&this.fire(v,{pageX:this.lastXY[0],pageY:this.lastXY[1],startTime:this._startTime,endTime:this._endTime}),this.get(r).removeClass(n.CSS_PREFIX+"-dragging"),this.set(i,!1),this.deltaXY=[0,0],this},_defEndFn:function(){this._fixIEMouseUp(),this._ev_md=null},_prevEndFn:function(){this._fixIEMouseUp(),this.get(s).setXY(this.nodeXY),this._ev_md=null,this.region=null},_align:function(e){this.fire(g,{pageX:e[0],pageY:e[1]})},_defAlignFn:function(e){this.actXY=[e.pageX-this.deltaXY[0],e.pageY-this.deltaXY[1]]},_alignNode:function(e,t){this._align(e),t||this._moveNode()},_moveNode:function(e){var t=[],n=[],r=this.nodeXY,i=this.actXY;t[0]=i[0]-this.lastXY[0],t[1]=i[1]-this.lastXY[1],n[0]=i[0]-this.nodeXY[0],n[1]=i[1]-this.nodeXY[1],this.region={0:i[0],1:i[1],area:0,top:i[1],right:i[0]+this.get(s).get(u),bottom:i[1]+this.get(s).get(o),left:i[0]},this.fire(m,{pageX:i[0],pageY:i[1],scroll:e,info:{start:r,xy:i,delta:t,offset:n}}),this.lastXY=i},_defDragFn:function(t){if(this.get("move")){if(t.scroll&&t.scroll.node){var n=t.scroll.node.getDOMNode();n===e.config.win?n.scrollTo(t.scroll.left,t.scroll.top):(t.scroll.node.set("scrollTop",t.scroll.top),t.scroll.node.set("scrollLeft",t.scroll.left))}this.get(s).setXY([t.pageX,t.pageY]),this.realXY=[t.pageX,t.pageY]}},_move:function(e){if(this.get("lock"))return!1;this.mouseXY=[e.pageX,e.pageY];if(!this._dragThreshMet){var t=Math.abs(this.startXY[0]-e.pageX),n=Math.abs(this.startXY[1]-e.pageY);if(t>this.get("clickPixelThresh")||n>this.get("clickPixelThresh"))this._dragThreshMet=!0,this.start(),e&&e.preventDefault&&e.preventDefault(),this._alignNode([e.pageX,e.pageY])}else this._clickTimeout&&this._clickTimeout.cancel(),this._alignNode([e.pageX,e.pageY])},stopDrag:function(){return this.get(i)&&n._end(),this},destructor:function(){this._unprep(),this.target&&this.target.destroy(),n._unregDrag(this)}}),e.namespace("DD"),e.DD.Drag=y},"patched-v3.18.1",{requires:["dd-ddm-base","selector-css2"]});
YUI.add("dd-plugin",function(e,t){var n=function(t){e.Widget&&t.host instanceof e.Widget?(t.node=t.host.get("boundingBox"),t.widget=t.host):(t.node=t.host,t.widget=!1),n.superclass.constructor.call(this,t)},r="drag:start",i="drag:drag",s="drag:end";n.NAME="dd-plugin",n.NS="dd",e.extend(n,e.DD.Drag,{_widgetHandles:null,_widget:undefined,_stoppedPosition:undefined,_usesWidgetPosition:function(t){var n=!1;return t&&(n=t.hasImpl&&t.hasImpl(e.WidgetPosition)?!0:!1),n},_checkEvents:function(){this._widget&&(this.proxy?this._widgetHandles.length>0&&this._removeWidgetListeners():this._widgetHandles.length===0&&this._attachWidgetListeners())},_removeWidgetListeners:function(){e.Array.each(this._widgetHandles,function(e){e.detach()}),this._widgetHandles=[]},_attachWidgetListeners:function(){this._usesWidgetPosition(this._widget)&&(this._widgetHandles.push(this.on(i,this._setWidgetCoords)),this._widgetHandles.push(this.on(s,this._updateStopPosition)))},initializer:function(e){this._widgetHandles=[],this._widget=e.widget,this.on(r,this._checkEvents),this._attachWidgetListeners()},_setWidgetCoords:function(e){var t=this._stoppedPosition||e.target.nodeXY,n=e.target.realXY,r=[n[0]-t[0],n[1]-t[1]];r[0]!==0&&r[1]!==0?this._widget.set("xy",n):r[0]===0?this._widget.set("y",n[1]):r[1]===0&&this._widget.set("x",n[0])},_updateStopPosition:function(e){this._stoppedPosition=e.target.realXY}}),e.namespace("Plugin"),e.Plugin.Drag=n},"patched-v3.18.1",{optional:["dd-constrain","dd-proxy"],requires:["dd-drag"]});
YUI.add("dd-constrain",function(e,t){var n="dragNode",r="offsetHeight",i="offsetWidth",s="host",o="tickXArray",u="tickYArray",a=e.DD.DDM,f="top",l="right",c="bottom",h="left",p="view",d=null,v="drag:tickAlignX",m="drag:tickAlignY",g=function(){this._lazyAddAttrs=!1,g.superclass.constructor.apply(this,arguments)};g.NAME="ddConstrained",g.NS="con",g.ATTRS={host:{},stickX:{value:!1},stickY:{value:!1},tickX:{value:!1},tickY:{value:!1},tickXArray:{value:!1},tickYArray:{value:!1},gutter:{value:"0",setter:function(t){return e.DD.DDM.cssSizestoObject(t)}},constrain:{value:p,setter:function(t){var n=e.one(t);return n&&(t=n),t}},constrain2region:{setter:function(e){return this.set("constrain",e)}},constrain2node:{setter:function(t){return this.set("constrain",e.one(t))}},constrain2view:{setter:function(){return this.set("constrain",p)}},cacheRegion:{value:!0}},d={_lastTickXFired:null,_lastTickYFired:null,initializer:function(){this._createEvents(),this._eventHandles=[this.get(s).on("drag:end",e.bind(this._handleEnd,this)),this.get(s).on("drag:start",e.bind(this._handleStart,this)),this.get(s).after("drag:align",e.bind(this.align,this)),this.get(s).after("drag:drag",e.bind(this.drag,this))]},destructor:function(){e.Array.each(this._eventHandles,function(e){e.detach()}),this._eventHandles.length=0},_createEvents:function(){var t=[v,m];e.Array.each(t,function(e){this.publish(e,{type:e,emitFacade:!0,bubbles:!0,queuable:!1,prefix:"drag"})},this)},_handleEnd:function(){this._lastTickYFired=null,this._lastTickXFired=null},_handleStart:function(){this.resetCache()},_regionCache:null,_cacheRegion:function(){this._regionCache=this.get("constrain").get("region")},resetCache:function(){this._regionCache=null},_getConstraint:function(){var t=this.get("constrain"),r=this.get("gutter"),i;t&&(t instanceof e.Node?(this._regionCache||(this._eventHandles.push(e.on("resize",e.bind(this._cacheRegion,this),e.config.win)),this._cacheRegion()),i=e.clone(this._regionCache),this.get("cacheRegion")||this.resetCache()):e.Lang.isObject(t)&&(i=e.clone(t)));if(!t||!i)t=p;return t===p&&(i=this.get(s).get(n).get("viewportRegion")),e.Object.each(r,function(e,t){t===l||t===c?i[t]-=e:i[t]+=e}),i},getRegion:function(e){var t={},o=null,u=null,a=this.get(s);return t=this._getConstraint(),e&&(o=a.get(n).get(r),u=a.get(n).get(i),t[l]=t[l]-u,t[c]=t[c]-o),t},_checkRegion:function(e){var t=e,o=this.getRegion(),u=this.get(s),a=u.get(n).get(r),p=u.get(n).get(i);return t[1]>o[c]-a&&(e[1]=o[c]-a),o[f]>t[1]&&(e[1]=o[f]),t[0]>o[l]-p&&(e[0]=o[l]-p),o[h]>t[0]&&(e[0]=o[h]),e},inRegion:function(e){e=e||this.get(s).get(n).getXY();var t=this._checkRegion([e[0],e[1]]),r=!1;return e[0]===t[0]&&e[1]===t[1]&&(r=!0),r},align:function(){var e=this.get(s),t=[e.actXY[0],e.actXY[1]],n=this.getRegion(!0);this.get("stickX")&&(t[1]=e.startXY[1]-e.deltaXY[1]),this.get("stickY")&&(t[0]=e.startXY[0]-e.deltaXY[0]),n&&(t=this._checkRegion(t)),t=this._checkTicks(t,n),e.actXY=t},drag:function(){var t=this.get(s),n=this.get("tickX"),r=this.get("tickY"),i=[t.actXY[0],t.actXY[1]];(e.Lang.isNumber(n)||this.get(o))&&this._lastTickXFired!==i[0]&&(this._tickAlignX(),this._lastTickXFired=i[0]),(e.Lang.isNumber(r)||this.get(u))&&this._lastTickYFired!==i[1]&&(this._tickAlignY(),this._lastTickYFired=i[1])},_checkTicks:function(e,t){var n=this.get(s),r=n.startXY[0]-n.deltaXY[0],i=n.startXY[1]-n.deltaXY[1],p=this.get("tickX"),d=this.get("tickY");return p&&!this.get(o)&&(e[0]=a._calcTicks(e[0],r,p,t[h],t[l])),d&&!this.get(u)&&(e[1]=a._calcTicks(e[1],i,d,t[f],t[c])),this.get(o)&&(e[0]=a._calcTickArray(e[0],this.get(o),t[h],t[l])),this.get(u)&&(e[1]=a._calcTickArray(e[1],this.get(u),t[f],t[c])),e},_tickAlignX:function(){this.fire(v)},_tickAlignY:function(){this.fire(m)}},e.namespace("Plugin"),e.extend(g,e.Base,d),e.Plugin.DDConstrained=g,e.mix(a,{_calcTicks:function(e,t,n,r,i){var s=(e-t)/n,o=Math.floor(s),u=Math.ceil(s);return(o!==0||u!==0)&&s>=o&&s<=u&&(e=t+n*o,r&&i&&(e<r&&(e=t+n*(o+1)),e>i&&(e=t+n*(o-1)))),e},_calcTickArray:function(e,t,n,r){var i=0,s=t.length,o=0,u,a,f;if(!t||t.length===0)return e;if(t[0]>=e)return t[0];for(i=0;i<s;i++){o=i+1;if(t[o]&&t[o]>=e)return u=e-t[i],a=t[o]-e,f=a>u?t[i]:t[o],n&&r&&f>r&&(t[i]?f=t[i]:f=t[s-1]),f}return t[t.length-1]}})},"patched-v3.18.1",{requires:["dd-drag"]});
YUI.add("button",function(e,t){function o(){o.superclass.constructor.apply(this,arguments)}function u(){o.superclass.constructor.apply(this,arguments)}var n=e.ButtonCore,r=n.CLASS_NAMES,i=n.ARIA_STATES,s=n.ARIA_ROLES;e.extend(o,e.Widget,{BOUNDING_TEMPLATE:n.prototype.TEMPLATE,CONTENT_TEMPLATE:null},{NAME:n.NAME,ATTRS:n.ATTRS,HTML_PARSER:{labelHTML:n._getHTMLFromNode,disabled:n._getDisabledFromNode},CLASS_NAMES:r}),e.mix(o.prototype,n.prototype),e.extend(u,o,{trigger:"click",selectedAttrName:"",initializer:function(e){var t=this,n=t.get("type"),r=n==="checkbox"?"checked":"pressed",i=e[r]||!1;t.addAttr(r,{value:i}),t.selectedAttrName=r},destructor:function(){delete this.selectedAttrName},bindUI:function(){var e=this,t=e.get("contentBox");u.superclass.bindUI.call(e),t.on(e.trigger,e.toggle,e),e.after(e.selectedAttrName+"Change",e._afterSelectedChange)},syncUI:function(){var e=this,t=e.get("contentBox"),n=e.get("type"),r=u.ARIA_ROLES,i=n==="checkbox"?r.CHECKBOX:r.TOGGLE,s=e.selectedAttrName;u.superclass.syncUI.call(e),t.set("role",i),e._uiSetSelected(e.get(s))},_afterSelectedChange:function(e){this._uiSetSelected(e.newVal)},_uiSetSelected:function(e){var t=this,n=t.get("contentBox"),r=u.ARIA_STATES,i=t.get("type"),s=i==="checkbox"?r.CHECKED:r.PRESSED;n.toggleClass(o.CLASS_NAMES.SELECTED,e),n.set(s,e)},toggle:function(){var e=this;e._set(e.selectedAttrName,!e.get(e.selectedAttrName))}},{NAME:"toggleButton",ATTRS:{type:{value:"toggle",writeOnce:"initOnly"}},HTML_PARSER:{checked:function(e){return e.hasClass(r.SELECTED)},pressed:function(e){return e.hasClass(r.SELECTED)}},ARIA_STATES:i,ARIA_ROLES:s,CLASS_NAMES:r}),e.Button=o,e.ToggleButton=u},"patched-v3.18.1",{requires:["button-core","cssbutton","widget"]});
YUI.add("button-group",function(e,t){function s(){s.superclass.constructor.apply(this,arguments)}var n="contentBox",r="click",i=e.ButtonCore.CLASS_NAMES;e.ButtonGroup=e.extend(s,e.Widget,{renderUI:function(){this.getButtons().plug(e.Plugin.Button)},bindUI:function(){var t=this,i=t.get(n);i.delegate(r,t._handleClick,e.ButtonGroup.BUTTON_SELECTOR,t),t.after("disabledChange",t._afterDisabledChange)},_afterDisabledChange:function(t){this.getButtons().each(t.newVal?e.ButtonCore.prototype.disable:e.ButtonCore.prototype.enable)},getButtons:function(){var t=this.get(n);return t.all(e.ButtonGroup.BUTTON_SELECTOR)},getSelectedButtons:function(){var e=this,t=[],n=e.getButtons(),r=s.CLASS_NAMES.SELECTED;return n.each(function(e){e.hasClass(r)&&t.push(e)}),t},getSelectedValues:function(){var t=this.getSelectedButtons(),n=[],r;return e.Array.each(t,function(e){r=e.getContent(),n.push(r)}),n},_handleClick:function(e){var t=this,n=e.target.ancestor("."+s.CLASS_NAMES.BUTTON,!0),r=t.get("type"),i=s.CLASS_NAMES.SELECTED,o=n.hasClass(i),u;r==="checkbox"?(n.toggleClass(i,!o),t.fire("selectionChange",{originEvent:e})):r==="radio"&&!o&&(u=t.getButtons(),u.removeClass(i),n.addClass(i),t.fire("selectionChange",{originEvent:e}))}},{NAME:"buttongroup",ATTRS:{type:{writeOnce:"initOnly",value:"radio"}},CLASS_NAMES:i,BUTTON_SELECTOR:"button, input[type=button], input[type=reset], input[type=submit], input[type=radio], input[type=checkbox]"})},"patched-v3.18.1",{requires:["button-plugin","cssbutton","widget"]});
YUI.add("aui-button-core",function(e,t){var n={BUTTON:e.getClassName("btn"),BUTTON_DEFAULT:e.getClassName("btn","default"),BUTTON_GROUP:e.getClassName("btn","group"),DISABLED:e.getClassName("disabled"),LABEL:e.getClassName("label"),PRIMARY:e.getClassName("btn","primary"),SELECTED:e.getClassName("active"),TOGGLE:e.getClassName("togglebtn")},r=function(e){e&&e.domType&&this._domTypeValidator(e.domType)&&this._setEarlyButtonDomType(e.domType)};r.ATTRS={cssClass:{validator:e.Lang.isString,value:""},discardDefaultButtonCssClasses:{validator:e.Lang.isBoolean,value:!1,writeOnce:!0},domType:{validator:"_domTypeValidator",writeOnce:!0},icon:{},iconElement:{valueFn:function(){return e.Node.create(this.ICON_TEMPLATE)}},iconAlign:{validator:e.Lang.isString,value:"left"}},r.HTML_PARSER={iconElement:"span"},r.getTypedButtonTemplate=function(t,n){return e.Lang.sub(t,{type:' type="'+n+'"'})},r.prototype={ICON_TEMPLATE:"<span></span>",TEMPLATE:"<button{type}></button>",initializer:function(){this.before(this.renderButtonExtUI,this,"renderUI"),this.after(this.syncButtonExtUI,this,"syncUI"),this.after({iconChange:this._afterIconChange,iconAlignChange:this._afterIconAlignChange})},renderButtonExtUI:function(){var e=this.get("cssClass");this.get("discardDefaultButtonCssClasses")||(e=[e,n.BUTTON_DEFAULT,n.BUTTON].join(" "),this.set("cssClass",e))},syncButtonExtUI:function(){this._uiSetIcon(this.get("icon")),this._setButtonRole()},_afterIconAlignChange:function(e){this._uiSetIconAlign(e.newVal)},_afterIconChange:function(e){this._uiSetIcon(e.newVal)},_domTypeValidator:function(e){return e.toLowerCase()==="button"||e.toLowerCase()==="submit"},_setButtonRole:function(){this.get("boundingBox").setAttribute("role","button")},_setEarlyButtonDomType:function(t){this.BOUNDING_TEMPLATE=e.ButtonExt.getTypedButtonTemplate(r.prototype.TEMPLATE,t)},_uiSetIcon:function(e){e&&(this.get("iconElement").set("className",e),this._uiSetIconAlign(this.get("iconAlign")))},_uiSetIconAlign:function(t){var n=this.getNode().one(e.ButtonExt.HTML_PARSER.iconElement);n||(n=this.get("iconElement")),e.Button.syncIconUI(this.get("boundingBox"),n,t)}},e.ButtonExt=r,e.ButtonCore.CLASS_NAMES=n;var i=e.Button;i.NAME="aui-button",i.CSS_PREFIX="aui-button",i.CLASS_NAMES=n,e.Button=e.Base.create(i.NAME,i,[r,e.WidgetCssClass,e.WidgetToggle],{},{getWidgetLazyConstructorFromNodeData:function(e){var t=e.getData("widgetConstructor")||{};return t.boundingBox=e,t.render=!0,t},hasWidgetLazyConstructorData:function(e){return e.getData("widgetConstructor")!==undefined},setWidgetLazyConstructorNodeData:function(e,t){e.setData("widgetConstructor",t)},syncIconUI:function(t,n,r){var i=0,s=e.config.doc.createTextNode(" ");r==="right"&&(i=null),t.insert(s,i),t.insert(n,i)}});var s=e.ToggleButton;s.NAME="togglebtn",s.CSS_PREFIX=n.TOGGLE,s.CLASS_NAMES=n,e.ToggleButton=e.Base.create(s.NAME,s,[r,e.WidgetCssClass],{},{});var o=e.ButtonGroup;o.NAME="btngroup",o.CSS_PREFIX=n.BUTTON_GROUP,o.CLASS_NAMES=n,e.mix(o.prototype,{CONTENT_TEMPLATE:null,initializer:function(){this.after("selectionChange",this._afterSelectionChange)},renderUI:function(){var t=this.get("boundingBox"),n=this.get("type");this.getButtons().each(function(t){!t.button&&!e.instanceOf(e.Widget.getByNode(t),e.Button)&&(t.addClass(e.ButtonCore.CLASS_NAMES.BUTTON_DEFAULT),t.setAttribute("role","option"),e.Button.hasWidgetLazyConstructorData(t)?(new e.Button(e.Button.getWidgetLazyConstructorFromNodeData(t)),e.Button.setWidgetLazyConstructorNodeData(t,null)):t.plug(e.Plugin.Button))}),t.setAttrs({"aria-multiselectable":n==="checkbox"?!0:!1,role:"listbox"}),this.syncAriaSelected(this.getButtons())},item:function(t){var n,r;return r=this.getButtons().item(t),n=e.Widget.getByNode(r),e.instanceOf(n,i)?n:r},select:function(e){return this.toggleSelect(e,!0)},syncAriaSelected:function(t){var n;t.each(function(t){n=t.hasClass(e.ButtonGroup.CLASS_NAMES.SELECTED),t.setAttribute("aria-selected",n)})},toggleSelect:function(t,n){var r=this.getButtons(),i=this,s=this.get("type");e.Lang.isUndefined(t)&&(t=r.getDOMNodes()),e.Lang.isArray(t)||(t=e.Array(t)),e.Array.each(t,function(t){e.Lang.isNumber(t)&&(t=r.item(t)),t=e.one(t);if(s==="checkbox")if(t.hasClass(e.ButtonGroup.CLASS_NAMES.SELECTED)){if(n===!0)return}else if(n===!1)return;i._handleClick({target:t})})},unselect:function(e){return this.toggleSelect(e,!1)},_afterSelectionChange:function(){this.syncAriaSelected(this.getButtons())}},!0)},"3.0.3-deprecated.50",{requires:["button","button-group","button-plugin","aui-component","aui-widget-cssclass","aui-widget-toggle"],skinnable:!0});
YUI.add("aui-toolbar",function(e,t){var n=e.Lang.isFunction,r=e.getClassName("btn"),i=e.getClassName("btn","default"),s=e.getClassName("btn","group"),o=e.getClassName("btn","group","checkbox"),u=e.getClassName("btn","group","radio"),a=e.getClassName("btn","group","vertical"),f=e.getClassName("btn","toolbar","button");e.Toolbar=e.Component.create({NAME:"btn-toolbar",ATTRS:{children:{validator:e.Lang.isArray},toolbarRenderer:{valueFn:function(){return new e.ToolbarRenderer}}},UI_ATTRS:["children"],isSupportedWidget:function(t){return e.instanceOf(t,e.Button)||e.instanceOf(t,e.ToggleButton)||e.instanceOf(t,e.ButtonGroup)},prototype:{CONTENT_TEMPLATE:null,TEMPLATES:{button:'<button class="aui-btn">{content}</button>',icon:'<span class="{cssClass}"></span>',group:'<div class="aui-btn-group {cssClass}"></div>'},bindUI:function(){var e=this.get("boundingBox");e.delegate(["click","mousemove","focus"],this._onUserInitInteraction,"."+f+", ."+r,this)},add:function(t,n){var r=this.get("boundingBox"),i=this.get("toolbarRenderer");r.insert(i.render(e.Array(t)),n)},clear:function(){var e=this.get("boundingBox");e.get("children").remove()},getEnclosingWidget:function(t){return e.instanceOf(t,e.EventFacade)&&(t=t.domEvent?t.domEvent.target:t.target),e.Widget.getByNode(t)},item:function(t){var n=this.get("boundingBox").get("children").item(t),r;return this._initEnclosingWidgetIfNeeded(n),r=this.getEnclosingWidget(n),e.Toolbar.isSupportedWidget(r)?r:n},remove:function(e){var t=this.get("boundingBox");return t.get("children").item(e).remove()},_initEnclosingWidgetIfNeeded:function(t,n){var i,l,c,h,p,d;if(!t||t.getData("enclosingWidgetInitialized"))return;t.setData("enclosingWidgetInitialized",!0),l=e.Widget.getByNode(t),c=e.instanceOf(l,e.Button),h=e.instanceOf(l,e.ButtonGroup);if(c||h)return;i=t.ancestor("."+f+", ."+r,!0),i&&(e.Button.hasWidgetLazyConstructorData(t)?(new e.Button(e.Button.getWidgetLazyConstructorFromNodeData(t)),e.Button.setWidgetLazyConstructorNodeData(t,null)):t.plug(e.Plugin.Button)),p=t.ancestor("."+s+", "+a,!0),p&&(p.hasClass(o)?d="checkbox":p.hasClass(u)&&(d="radio"),d&&new e.ButtonGroup({boundingBox:p,type:d,render:!0})),n&&n.type==="focus"&&t.focus()},_onUserInitInteraction:function(e){var t=e.currentTarget;this._initEnclosingWidgetIfNeeded(t,e)},_uiSetChildren:function(e){if(!e)return;this.clear(),this.add(e)}}});var l=function(){};l.prototype={TEMPLATES:{button:e.Button.prototype.TEMPLATE,group:'<div class="{cssClass}"></div>',icon:'<span class="{cssClass}"></span>'},RENDERER:{button:function(t){var n,s,o,u,a,l=t.value;a=l.domType||"button";if(e.instanceOf(l,e.Button)||e.instanceOf(l,e.ToggleButton))return l.get("boundingBox");if(e.UA.mobile&&e.UA.touchEnabled)return n=(new e.Button(l)).render(),l.title&&n.get("boundingBox").setAttribute("title",l.title),n.get("boundingBox");s=e.one(l.boundingBox||l.srcNode);if(s)try{s.setAttribute("type",a)}catch(c){}else s=e.Node.create(e.ButtonExt.getTypedButtonTemplate(this.TEMPLATES.button,a));return o=[f,l.cssClass],l.discardDefaultButtonCssClasses||o.push(r,i),s.addClass(o.join(" ")),l.id&&s.setAttribute("id",l.id),l.labelHTML&&s.append(l.labelHTML),l.label&&s.append(l.label),l.icon&&(u=e.Lang.sub(this.TEMPLATES.icon,{cssClass:l.icon}),e.Button.syncIconUI(s,u,l.iconAlign)),l.title&&s.setAttribute("title",l.title),e.Button.setWidgetLazyConstructorNodeData(s,l),s},group:function(t){var n,r=this,i=t.value,f,l=t.groupType,c=t.orientation,h=[];return e.instanceOf(i,e.ButtonGroup)?i.get("boundingBox"):(l==="checkbox"?h.push(o):l==="radio"&&h.push(u),c==="vertical"?h.push(a):h.push(s),f=e.Node.create(e.Lang.sub(r.TEMPLATES.group,{cssClass:h.join(" ")})),e.Array.each(i,function(t,s){n=r.renderNode(t),f.appendChild(n),e.Toolbar.isSupportedWidget(t)||e.Button.setWidgetLazyConstructorNodeData(n,i[s])}),f)}},render:function(t){var n,r=this;if(!t)return;return n=e.one(e.config.doc).invoke("createDocumentFragment"),e.Array.each(t,function(e){n.appendChild(r.renderNode(e))}),n},renderNode:function(t){var r,i;if(e.Toolbar.isSupportedWidget(t))return t.render().get("boundingBox");r=this._getChildRenderHints(t),i=this.RENDERER[r.renderer];if(n(i))return i.call(this,r)},_getChildRenderHints:function(t){var n=null,r="normal",i;return e.instanceOf(t,e.Button)?i="button":e.instanceOf(t,e.ButtonGroup)?i="group":e.Lang.isArray(t)?(i="group",n=e.Lang.isString(t[0])?t.shift():null,r=e.Lang.isString(t[0])?t.shift():"normal"):i="button",{groupType:n,orientation:r,renderer:i,value:t}}},e.ToolbarRenderer=l},"3.0.3-deprecated.50",{requires:["arraylist","arraylist-add","aui-component","aui-button-core"]});
YUI.add("aui-widget-toolbars",function(e,t){var n=e.WidgetStdMod,r=function(){};r.ATTRS={toolbars:{},toolbarPosition:{value:{body:n.AFTER,footer:n.AFTER,header:n.BEFORE}},toolbarCssClass:{value:{body:"",footer:"",header:""}}},r.prototype={toolbars:null,initializer:function(){var t=this;t.toolbars={},e.after(t._syncUIToolbars,t,"syncUI"),t.after("toolbarsChange",t._afterToolbarsChange)},addToolbar:function(t,n){var r=this;return n=r.getToolbarSection(n),r.removeToolbar(n),e.instanceOf(t,e.Toolbar)||(t=new e.Toolbar({cssClass:this.get("toolbarCssClass."+n)||"",children:t,render:r.getStdModNode(n,!0)})),t.addTarget(r),r.toolbars[n]=t,r.setStdModContent(n,t.get("boundingBox"),r.get("toolbarPosition."+n)),r._syncPrimaryButtonUI(),t},getToolbar:function(e){var t=this;return t.toolbars[t.getToolbarSection(e)]},getToolbarSection:function(e){return e||n.FOOTER},removeToolbar:function(e){var t=this,n=t.toolbars[t.getToolbarSection(e)];return n&&n.destroy(),n},_syncPrimaryButtonUI:function(){var t=this,n=t.get("boundingBox").one("."+e.ButtonCore.CLASS_NAMES.PRIMARY);n&&n.focus().focus()},_syncUIToolbars:function(){var e=this;e._uiSetToolbars(this.get("toolbars"))},_uiSetToolbars:function(t){var n=this;e.each(t,e.bind(n.addToolbar,n))}},e.WidgetToolbars=r},"3.0.3-deprecated.50",{requires:["widget-stdmod","aui-toolbar"]});
YUI.add("event-flick",function(e,t){var n=e.Event._GESTURE_MAP,r={start:n.start,end:n.end,move:n.move},i="start",s="end",o="move",u="ownerDocument",a="minVelocity",f="minDistance",l="preventDefault",c="_fs",h="_fsh",p="_feh",d="_fmh",v="nodeType";e.Event.define("flick",{on:function(e,t,n){var s=e.on(r[i],this._onStart,this,e,t,n);t[h]=s},detach:function(e,t,n){var r=t[h],i=t[p];r&&(r.detach(),t[h]=null),i&&(i.detach(),t[p]=null)},processArgs:function(t){var n=t.length>3?e.merge(t.splice(3,1)[0]):{};return a in n||(n[a]=this.MIN_VELOCITY),f in n||(n[f]=this.MIN_DISTANCE),l in n||(n[l]=this.PREVENT_DEFAULT),n},_onStart:function(t,n,i,a){var f=!0,l,h,m,g=i._extra.preventDefault,y=t;t.touches&&(f=t.touches.length===1,t=t.touches[0]),f&&(g&&(!g.call||g(t))&&y.preventDefault(),t.flick={time:(new Date).getTime()},i[c]=t,l=i[p],m=n.get(v)===9?n:n.get(u),l||(l=m.on(r[s],e.bind(this._onEnd,this),null,n,i,a),i[p]=l),i[d]=m.once(r[o],e.bind(this._onMove,this),null,n,i,a))},_onMove:function(e,t,n,r){var i=n[c];i&&i.flick&&(i.flick.time=(new Date).getTime())},_onEnd:function(e,t,n,r){var i=(new Date).getTime(),s=n[c],o=!!s,u=e,h,p,v,m,g,y,b,w,E=n[d];E&&(E.detach(),delete n[d]),o&&(e.changedTouches&&(e.changedTouches.length===1&&e.touches.length===0?u=e.changedTouches[0]:o=!1),o&&(m=n._extra,v=m[l],v&&(!v.call||v(e))&&e.preventDefault(),h=s.flick.time,i=(new Date).getTime(),p=i-h,g=[u.pageX-s.pageX,u.pageY-s.pageY],m.axis?w=m.axis:w=Math.abs(g[0])>=Math.abs(g[1])?"x":"y",y=g[w==="x"?0:1],b=p!==0?y/p:0,isFinite(b)&&Math.abs(y)>=m[f]&&Math.abs(b)>=m[a]&&(e.type="flick",e.flick={time:p,distance:y,velocity:b,axis:w,start:s},r.fire(e)),n[c]=null))},MIN_VELOCITY:0,MIN_DISTANCE:0,PREVENT_DEFAULT:!1})},"patched-v3.18.1",{requires:["node-base","event-touch","event-synthetic"]});
