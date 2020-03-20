YUI.add("escape",function(e,t){var n={"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","/":"&#x2F;","`":"&#x60;"},r={html:function(e){return(e+"").replace(/[&<>"'\/`]/g,r._htmlReplacer)},regex:function(e){return(e+"").replace(/[\-$\^*()+\[\]{}|\\,.?\s]/g,"\\$&")},_htmlReplacer:function(e){return n[e]}};r.regexp=r.regex,e.Escape=r},"patched-v3.18.1",{requires:["yui-base"]});
YUI.add("base-core",function(e,t){function v(e){this._BaseInvoked||(this._BaseInvoked=!0,this._initBase(e))}var n=e.Object,r=e.Lang,i=".",s="initialized",o="destroyed",u="initializer",a="value",f=Object.prototype.constructor,l="deep",c="shallow",h="destructor",p=e.AttributeCore,d=function(e,t,n){var r;for(r in t)n[r]&&(e[r]=t[r]);return e};v._ATTR_CFG=p._ATTR_CFG.concat("cloneDefaultValue"),v._NON_ATTRS_CFG=["plugins"],v.NAME="baseCore",v.ATTRS={initialized:{readOnly:!0,value:!1},destroyed:{readOnly:!0,value:!1}},v.modifyAttrs=function(t,n){typeof t!="function"&&(n=t,t=this);var r,i,s;r=t.ATTRS||(t.ATTRS={});if(n){t._CACHED_CLASS_DATA=null;for(s in n)n.hasOwnProperty(s)&&(i=r[s]||(r[s]={}),e.mix(i,n[s],!0))}},v.prototype={_initBase:function(t){e.stamp(this),this._initAttribute(t);var n=e.Plugin&&e.Plugin.Host;this._initPlugins&&n&&n.call(this),this._lazyAddAttrs!==!1&&(this._lazyAddAttrs=!0),this.name=this.constructor.NAME,this.init.apply(this,arguments)},_initAttribute:function(){p.call(this)},init:function(e){return this._baseInit(e),this},_baseInit:function(e){this._initHierarchy(e),this._initPlugins&&this._initPlugins(e),this._set(s,!0)},destroy:function(){return this._baseDestroy(),this},_baseDestroy:function(){this._destroyPlugins&&this._destroyPlugins(),this._destroyHierarchy(),this._set(o,!0)},_getClasses:function(){return this._classes||this._initHierarchyData(),this._classes},_getAttrCfgs:function(){return this._attrs||this._initHierarchyData(),this._attrs},_getInstanceAttrCfgs:function(e){var t={},r,i,s,o,u,a,f,l=e._subAttrs,c=this._attrCfgHash();for(a in e)if(e.hasOwnProperty(a)&&a!=="_subAttrs"){f=e[a],r=t[a]=d({},f,c),i=r.value,i&&typeof i=="object"&&this._cloneDefaultValue(a,r);if(l&&l.hasOwnProperty(a)){o=e._subAttrs[a];for(u in o)s=o[u],s.path&&n.setValue(r.value,s.path,s.value)}}return t},_filterAdHocAttrs:function(e,t){var n,r=this._nonAttrs,i;if(t){n={};for(i in t)!e[i]&&!r[i]&&t.hasOwnProperty(i)&&(n[i]={value:t[i]})}return n},_initHierarchyData:function(){var e=this.constructor,t=e._CACHED_CLASS_DATA,n,r,i,s,o,u=!e._ATTR_CFG_HASH,a,f={},l=[],c=[];n=e;if(!t){while(n){l[l.length]=n,n.ATTRS&&(c[c.length]=n.ATTRS);if(u){s=n._ATTR_CFG,o=o||{};if(s)for(r=0,i=s.length;r<i;r+=1)o[s[r]]=!0}a=n._NON_ATTRS_CFG;if(a)for(r=0,i=a.length;r<i;r++)f[a[r]]=!0;n=n.superclass?n.superclass.constructor:null}u&&(e._ATTR_CFG_HASH=o),t=e._CACHED_CLASS_DATA={classes:l,nonAttrs:f,attrs:this._aggregateAttrs(c)}}this._classes=t.classes,this._attrs=t.attrs,this._nonAttrs=t.nonAttrs},_attrCfgHash:function(){return this.constructor._ATTR_CFG_HASH},_cloneDefaultValue:function(t,n){var i=n.value,s=n.cloneDefaultValue;s===l||s===!0?n.value=e.clone(i):s===c?n.value=e.merge(i):s===undefined&&(f===i.constructor||r.isArray(i))&&(n.value=e.clone(i))},_aggregateAttrs:function(e){var t,n,r,s,o,u,f=this._attrCfgHash(),l,c={};if(e)for(u=e.length-1;u>=0;--u){n=e[u];for(t in n)n.hasOwnProperty(t)&&(s=d({},n[t],f),o=null,t.indexOf(i)!==-1&&(o=t.split(i),t=o.shift()),l=c[t],o&&l&&l.value?(r=c._subAttrs,r||(r=c._subAttrs={}),r[t]||(r[t]={}),r[t][o.join(i)]={value:s.value,path:o}):o||(l?(l.valueFn&&a in s&&(l.valueFn=null),d(l,s,f)):c[t]=s))}return c},_initHierarchy:function(e){var t=this._lazyAddAttrs,n,r,i,s,o,a,f,l,c,h,p,d=[],v=this._getClasses(),m=this._getAttrCfgs(),g=v.length-1;for(o=g;o>=0;o--){n=v[o],r=n.prototype,h=n._yuibuild&&n._yuibuild.exts,r.hasOwnProperty(u)&&(d[d.length]=r.initializer);if(h)for(a=0,f=h.length;a<f;a++)l=h[a],l.apply(this,arguments),c=l.prototype,c.hasOwnProperty(u)&&(d[d.length]=c.initializer)}p=this._getInstanceAttrCfgs(m),this._preAddAttrs&&this._preAddAttrs(p,e,t),this._allowAdHocAttrs&&this.addAttrs(this._filterAdHocAttrs(m,e),e,t),this.addAttrs(p,e,t);for(i=0,s=d.length;i<s;i++)d[i].apply(this,arguments)},_destroyHierarchy:function(){var e,t,n,r,i,s,o,u,a=this._getClasses();for(n=0,r=a.length;n<r;n++){e=a[n],t=e.prototype,o=e._yuibuild&&e._yuibuild.exts;if(o)for(i=0,s=o.length;i<s;i++)u=o[i].prototype,u.hasOwnProperty(h)&&u.destructor.apply(this,arguments);t.hasOwnProperty(h)&&t.destructor.apply(this,arguments)}},toString:function(){return this.name+"["+e.stamp(this,!0)+"]"}},e.mix(v,p,!1,null,1),v.prototype.constructor=v,e.BaseCore=v},"patched-v3.18.1",{requires:["attribute-core"]});
YUI.add("base-observable",function(e,t){function f(){}var n=e.Lang,r="destroy",i="init",s="bubbleTargets",o="_bubbleTargets",u=e.AttributeObservable,a=e.BaseCore;f._ATTR_CFG=u._ATTR_CFG.concat(),f._NON_ATTRS_CFG=["on","after","bubbleTargets"],f.prototype={_initAttribute:function(){a.prototype._initAttribute.apply(this,arguments),u.call(this),this._eventPrefix=this.constructor.EVENT_PREFIX||this.constructor.NAME,this._yuievt.config.prefix=this._eventPrefix},init:function(e){var t=this._getFullType(i),n=this._publish(t);return n.emitFacade=!0,n.fireOnce=!0,n.defaultTargetOnly=!0,n.defaultFn=this._defInitFn,this._preInitEventCfg(e),n._hasPotentialSubscribers()?this.fire(t,{cfg:e}):(this._baseInit(e),n.fired=!0,n.firedWith=[{cfg:e}]),this},_preInitEventCfg:function(e){e&&(e.on&&this.on(e.on),e.after&&this.after(e.after));var t,r,i,u=e&&s in e;if(u||o in this){i=u?e&&e.bubbleTargets:this._bubbleTargets;if(n.isArray(i))for(t=0,r=i.length;t<r;t++)this.addTarget(i[t]);else i&&this.addTarget(i)}},destroy:function(){return this.publish(r,{fireOnce:!0,defaultTargetOnly:!0,defaultFn:this._defDestroyFn}),this.fire(r),this.detachAll(),this},_defInitFn:function(e){this._baseInit(e.cfg)},_defDestroyFn:function(e){this._baseDestroy(e.cfg)}},e.mix(f,u,!1,null,1),e.BaseObservable=f},"patched-v3.18.1",{requires:["attribute-observable","base-core"]});
YUI.add("widget-autohide",function(e,t){function m(t){e.after(this._bindUIAutohide,this,f),e.after(this._syncUIAutohide,this,l),this.get(c)&&(this._bindUIAutohide(),this._syncUIAutohide())}var n="widgetAutohide",r="autohide",i="clickoutside",s="focusoutside",o="document",u="key",a="esc",f="bindUI",l="syncUI",c="rendered",h="boundingBox",p="visible",d="Change",v=e.ClassNameManager.getClassName;m.ATTRS={hideOn:{validator:e.Lang.isArray,valueFn:function(){return[{node:e.one(o),eventName:u,keyCode:a}]}}},m.prototype={_uiHandlesAutohide:null,destructor:function(){this._detachUIHandlesAutohide()},_bindUIAutohide:function(){this.after(p+d,this._afterHostVisibleChangeAutohide),this.after("hideOnChange",this._afterHideOnChange)},_syncUIAutohide:function(){this._uiSetHostVisibleAutohide(this.get(p))},_uiSetHostVisibleAutohide:function(t){t?e.later(1,this,"_attachUIHandlesAutohide"):this._detachUIHandlesAutohide()},_attachUIHandlesAutohide:function(){if(this._uiHandlesAutohide)return;var t=this.get(h),n=e.bind(this.hide,this),r=[],i=this,s=this.get("hideOn"),o=0,u={node:undefined,ev:undefined,keyCode:undefined};for(;o<s.length;o++)u.node=s[o].node,u.ev=s[o].eventName,u.keyCode=s[o].keyCode,!u.node&&!u.keyCode&&u.ev?r.push(t.on(u.ev,n)):u.node&&!u.keyCode&&u.ev?r.push(u.node.on(u.ev,n)):u.node&&u.keyCode&&u.ev&&r.push(u.node.on(u.ev,n,u.keyCode));this._uiHandlesAutohide=r},_detachUIHandlesAutohide:function(){e.each(this._uiHandlesAutohide,function(e){e.detach()}),this._uiHandlesAutohide=null},_afterHostVisibleChangeAutohide:function(e){this._uiSetHostVisibleAutohide(e.newVal)},_afterHideOnChange:function(e){this._detachUIHandlesAutohide(),this.get(p)&&this._attachUIHandlesAutohide()}},e.WidgetAutohide=m},"patched-v3.18.1",{requires:["base-build","event-key","event-outside","widget"]});
YUI.add("aui-widget-cssclass",function(e,t){function n(){}n.ATTRS={cssClass:{}},n.CSS_CLASS_CONTENT_SUFFIX="-content",n.prototype={initializer:function(){var e=this;e._uiSetCssClass(e.get("cssClass")),e.after("cssClassChange",e._afterCssClassChange)},_afterCssClassChange:function(e){var t=this,r;r=e.prevVal,r&&(t.get("boundingBox").removeClass(r),t.get("contentBox").removeClass(r+n.CSS_CLASS_CONTENT_SUFFIX)),t._uiSetCssClass(e.newVal)},_uiSetCssClass:function(e){var t=this;e&&(t.get("boundingBox").addClass(e),t.get("contentBox").addClass(e+n.CSS_CLASS_CONTENT_SUFFIX))}},e.WidgetCssClass=n},"3.0.3-deprecated.50",{requires:["widget-base"]});
YUI.add("aui-widget-toggle",function(e,t){function n(){}n.prototype={toggle:function(t){var n=this;return e.Lang.isBoolean(t)||(t=!n.get("visible")),n.set("visible",t)}},e.WidgetToggle=n},"3.0.3-deprecated.50");
YUI.add("transition",function(e,t){var n="",r="",i=e.config.doc,s="documentElement",o=i[s].style,u="transition",a="transitionProperty",f,l,c,h,p,d,v={},m=["Webkit","Moz"],g={Webkit:"webkitTransitionEnd"},y=function(){this.init.apply(this,arguments)};y._TRANSFORM="transform",y._toCamel=function(e){return e=e.replace(/-([a-z])/gi,function(e,t){return t.toUpperCase()}),e},y._toHyphen=function(e){return e=e.replace(/([A-Z]?)([a-z]+)([A-Z]?)/g,function(e,t,n,r){var i=(t?"-"+t.toLowerCase():"")+n;return r&&(i+="-"+r.toLowerCase()),i}),e},y.SHOW_TRANSITION="fadeIn",y.HIDE_TRANSITION="fadeOut",y.useNative=!1,"transition"in o&&"transitionProperty"in o&&"transitionDuration"in o&&"transitionTimingFunction"in o&&"transitionDelay"in o?(y.useNative=!0,y.supported=!0):e.Array.each(m,function(e){var t=e+"Transition";t in i[s].style&&(n=e,r=y._toHyphen(e)+"-",y.useNative=!0,y.supported=!0,y._VENDOR_PREFIX=e)}),typeof o.transform=="undefined"&&e.Array.each(m,function(e){var t=e+"Transform";typeof o[t]!="undefined"&&(y._TRANSFORM=t)}),n&&(u=n+"Transition",a=n+"TransitionProperty"),f=r+"transition-property",l=r+"transition-duration",c=r+"transition-timing-function",h=r+"transition-delay",p="transitionend",d="on"+n.toLowerCase()+"transitionend",p=g[n]||p,y.fx={},y.toggles={},y._hasEnd={},y._reKeywords=/^(?:node|duration|iterations|easing|delay|on|onstart|onend)$/i,e.Node.DOM_EVENTS[p]=1,y.NAME="transition",y.DEFAULT_EASING="ease",y.DEFAULT_DURATION=.5,y.DEFAULT_DELAY=0,y._nodeAttrs={},y.prototype={constructor:y,init:function(e,t){var n=this;return n._node=e,!n._running&&t&&(n._config=t,e._transition=n,n._duration="duration"in t?t.duration:n.constructor.DEFAULT_DURATION,n._delay="delay"in t?t.delay:n.constructor.DEFAULT_DELAY,n._easing=t.easing||n.constructor.DEFAULT_EASING,n._count=0,n._running=!1),n},addProperty:function(t,n){var r=this,i=this._node,s=e.stamp(i),o=e.one(i),u=y._nodeAttrs[s],a,f,l,c,h;u||(u=y._nodeAttrs[s]={}),c=u[t],n&&n.value!==undefined?h=n.value:n!==undefined&&(h=n,n=v),typeof h=="function"&&(h=h.call(o,o)),c&&c.transition&&c.transition!==r&&c.transition._count--,r._count++,l=(typeof n.duration!="undefined"?n.duration:r._duration)||1e-4,u[t]={value:h,duration:l,delay:typeof n.delay!="undefined"?n.delay:r._delay,easing:n.easing||r._easing,transition:r},a=e.DOM.getComputedStyle(i,t),f=typeof h=="string"?a:parseFloat(a),y.useNative&&f===h&&setTimeout(function(){r._onNativeEnd.call(i,{propertyName:t,elapsedTime:l})},l*1e3)},removeProperty:function(t){var n=this,r=y._nodeAttrs[e.stamp(n._node)];r&&r[t]&&(delete r[t],n._count--)},initAttrs:function(t){var n,r=this._node;t.transform&&!t[y._TRANSFORM]&&(t[y._TRANSFORM]=t.transform,delete t.transform);for(n in t)t.hasOwnProperty(n)&&!y._reKeywords.test(n)&&(this.addProperty(n,t[n]),r.style[n]===""&&e.DOM.setStyle(r,n,e.DOM.getComputedStyle(r,n)))},run:function(t){var n=this,r=n._node,i=n._config,s={type:"transition:start",config:i};return n._running||(n._running=!0,i.on&&i.on.start&&i.on.start.call(e.one(r),s),n.initAttrs(n._config),n._callback=t,n._start()),n},_start:function(){this._runNative()},_prepDur:function(e){return e=parseFloat(e)*1e3,e+"ms"},_runNative:function(){var t=this,n=t._node,r=e.stamp(n),i=n.style,s=n.ownerDocument.defaultView.getComputedStyle(n),o=y._nodeAttrs[r],u="",a=s[y._toCamel(f)],d=f+": ",v=l+": ",m=c+": ",g=h+": ",b,w,E;a!=="all"&&(d+=a+",",v+=s[y._toCamel(l)]+",",m+=s[y._toCamel(c)]+",",g+=s[y._toCamel(h)]+",");for(E in o)b=y._toHyphen(E),w=o[E],(w=o[E])&&w.transition===t&&(E in n.style?(v+=t._prepDur(w.duration)+",",g+=t._prepDur(w.delay)+",",m+=w.easing+",",d+=b+",",u+=b+": "+w.value+"; "):this.removeProperty(E));d=d.replace(/,$/,";"),v=v.replace(/,$/,";"),m=m.replace(/,$/,";"),g=g.replace(/,$/,";"),y._hasEnd[r]||(n.addEventListener(p,t._onNativeEnd,""),y._hasEnd[r]=!0),i.cssText+=d+v+m+g+u},_end:function(t){var n=this,r=n._node,i=n._callback,s=n._config,o={type:"transition:end",config:s,elapsedTime:t},u=e.one(r);n._running=!1,n._callback=null,r&&(s.on&&s.on.end?setTimeout(function(){s.on.end.call(u,o),i&&i.call(u,o)},1):i&&setTimeout(function(){i.call(u,o)},1))},_endNative:function(e){var t=this._node,n=t.ownerDocument.defaultView.getComputedStyle(t,"")[y._toCamel(f)];e=y._toHyphen(e),typeof n=="string"&&(n=n.replace(new RegExp("(?:^|,\\s)"+e+",?"),","),n=n.replace(/^,|,$/,""),t.style[u]=n)},_onNativeEnd:function(t){var n=this,r=e.stamp(n),i=t,s=y._toCamel(i.propertyName),o=i.elapsedTime,u=y._nodeAttrs[r],f=u[s],l=f?f.transition:null,c,h;l&&(l.removeProperty(s),l._endNative(s),h=l._config[s],c={type:"propertyEnd",propertyName:s,elapsedTime:o,config:h},h&&h.on&&h.on.end&&h.on.end.call(e.one(n),c),l._count<=0&&(l._end(o),n.style[a]=""))},destroy:function(){var e=this,t=e._node;t&&(t.removeEventListener(p,e._onNativeEnd,!1),e._node=null)}},e.Transition=y,e.TransitionNative=y,e.Node.prototype.transition=function(t,n,r){var i=y._nodeAttrs[e.stamp(this._node)],s=i?i.transition||null:null,o,u;if(typeof t=="string"){typeof n=="function"&&(r=n,n=null),o=y.fx[t];if(n&&typeof n=="object"){n=e.clone(n);for(u in o)o.hasOwnProperty(u)&&(u in n||(n[u]=o[u]))}else n=o}else r=n,n=t;return s&&!s._running?s.init(this,n):s=new y(this._node,n),s.run(r),this},e.Node.prototype.show=function(t,n,r){return this._show(),t&&e.Transition&&(typeof t!="string"&&!t.push&&(typeof n=="function"&&(r=n,n=t),t=y.SHOW_TRANSITION),this.transition(t,n,r)),this},e.NodeList.prototype.show=function(t,n,r){var i=this._nodes,s=0,o;while(o=i[s++])e.one(o).show(t,n,r);return this};var b=function(e,t,n){return function(){t&&t.call(e),n&&typeof n=="function"&&n.apply(e._node,arguments)}};e.Node.prototype.hide=function(t,n,r){return t&&e.Transition?(typeof n=="function"&&(r=n,n=null),r=b(this,this._hide,r),typeof t!="string"&&!t.push&&(typeof n=="function"&&(r=n,n=t),t=y.HIDE_TRANSITION),this.transition(t,n,r)):this._hide(),this},e.NodeList.prototype.hide=function(t,n,r){var i=this._nodes,s=0,o;while(o=i[s++])e.one(o).hide(t,n,r);return this},e.NodeList.prototype
.transition=function(t,n,r){var i=this._nodes,s=this.size(),o=0,r=r===!0,u;while(u=i[o++])o<s&&r?e.one(u).transition(t):e.one(u).transition(t,n);return this},e.Node.prototype.toggleView=function(t,n,r){this._toggles=this._toggles||[],r=arguments[arguments.length-1];if(typeof t!="string"){n=t,this._toggleView(n,r);return}return typeof n=="function"&&(n=undefined),typeof n=="undefined"&&t in this._toggles&&(n=!this._toggles[t]),n=n?1:0,n?this._show():r=b(this,this._hide,r),this._toggles[t]=n,this.transition(e.Transition.toggles[t][n],r),this},e.NodeList.prototype.toggleView=function(t,n,r){var i=this._nodes,s=0,o;while(o=i[s++])o=e.one(o),o.toggleView.apply(o,arguments);return this},e.mix(y.fx,{fadeOut:{opacity:0,duration:.5,easing:"ease-out"},fadeIn:{opacity:1,duration:.5,easing:"ease-in"},sizeOut:{height:0,width:0,duration:.75,easing:"ease-out"},sizeIn:{height:function(e){return e.get("scrollHeight")+"px"},width:function(e){return e.get("scrollWidth")+"px"},duration:.5,easing:"ease-in",on:{start:function(){var e=this.getStyle("overflow");e!=="hidden"&&(this.setStyle("overflow","hidden"),this._transitionOverflow=e)},end:function(){this._transitionOverflow&&(this.setStyle("overflow",this._transitionOverflow),delete this._transitionOverflow)}}}}),e.mix(y.toggles,{size:["sizeOut","sizeIn"],fade:["fadeOut","fadeIn"]})},"patched-v3.18.1",{requires:["node-style"]});
YUI.add("aui-widget-transition",function(e,t){function r(){var e=this;e._uiSetVisibleHost=e._uiSetVisible}var n=e.Lang;r.ATTRS={animated:{validator:n.isBoolean,value:!1},delay:{setter:"_setDelay",value:{show:0,hide:0}},duration:{validator:n.isNumber,value:.15},opacity:{validator:n.isNumber,value:1},stickDuration:{lazyAdd:!1,setter:"_setStickDuration",validator:n.isNumber}},r.prototype={_hideTimer:null,destructor:function(){var e=this;e._clearHideTimer()},initializer:function(){var t=this;e.on(t._onUiSetVisibleWidgetTranstion,t,"_uiSetVisible")},_clearHideTimer:function(){var e=this;e._hideTimer&&(e._hideTimer.cancel(),e._hideTimer=null)},_maybeHide:function(){var t=this,n=t.get("delay");t._prepareTransition(!1),t._hideTimer=e.later(n.hide,t,t._transition,!1)},_maybeShow:function(){var t=this,n=t.get("delay");t._prepareTransition(!0),e.later(n.show,t,t._transition,!0)},_setDelay:function(e){return n.isNumber(e)?{show:e,hide:e}:e},_setStickDuration:function(e){var t=this;return t.set("delay.hide",e),e},_onUiSetVisibleWidgetTranstion:function(t){var n=this;if(n.get("animated"))return t?n._maybeShow():n._maybeHide(),new e.Do.Prevent},_prepareTransition:function(e){var t=this,n=t.get("boundingBox");t._clearHideTimer(),e&&(t._uiSetVisibleHost(!0),n.setStyle("opacity",0))},_transition:function(e){var t=this,n=t.get("boundingBox");n.transition({duration:t.get("duration"),opacity:e?t.get("opacity"):0},function(){n.toggleClass("in",e),t._uiSetVisibleHost(e)})}},e.WidgetTransition=r},"3.0.3-deprecated.50",{requires:["transition"]});
YUI.add("aui-widget-trigger",function(e,t){function r(){}var n=e.Lang;r.ATTRS={bindDOMEvents:{validator:n.isBoolean,value:!0,writeOnce:!0},trigger:{setter:e.one},triggerHideEvent:{value:null},triggerShowEvent:{value:null},triggerShowFn:{validator:n.isString,value:"show"},triggerHideFn:{validator:n.isString,value:"hide"},triggerToggleFn:{validator:n.isString,value:"toggle"},triggerToggleEvent:{value:null}},e.mix(r.prototype,{_triggerEventHandles:null,initializer:function(){var t=this;e.after(t._afterRenderUIWT,t,"renderUI"),t.after("triggerChange",t._afterTriggerChange)},destructor:function(){var t=this;(new e.EventHandle(t._triggerEventHandles)).detach()},_afterRenderUIWT:function(){var e=this;e._uiSetTrigger(e.get("trigger"))},_afterTriggerChange:function(e){var t=this;t._uiSetTrigger(e.newVal)},_uiSetTrigger:function(t){var n=this,r,i,s,o,u,a,f;(new e.EventHandle(n._triggerEventHandles)).detach(),t&&n.get("bindDOMEvents")&&(r=n._triggerEventHandles=[],i=n.get("triggerHideEvent"),s=n.get("triggerShowEvent"),o=n.get("triggerToggleEvent"),u=n.get("triggerHideFn"),a=n.get("triggerShowFn"),f=n.get("triggerToggleFn"),i&&r.push(t.on(n.get("triggerHideEvent"),e.bind(n[u],n))),s&&r.push(t.on(n.get("triggerShowEvent"),e.bind(n[a],n))),o&&r.push(t.on(n.get("triggerToggleEvent"),e.bind(n[f],n))))}}),e.WidgetTrigger=r},"3.0.3-deprecated.50",{requires:["node"]});
YUI.add("aui-widget-position-align-suggestion",function(e,t){function r(){}var n=e.getClassName;r.ATTRS={position:{getter:"_getPosition",validator:"_validatePosition",value:"top"}},e.mix(r.prototype,{POSITION_ALIGN_SUGGESTION:{bottom:[e.WidgetPositionAlign.TC,e.WidgetPositionAlign.BC],left:[e.WidgetPositionAlign.RC,e.WidgetPositionAlign.LC],right:[e.WidgetPositionAlign.LC,e.WidgetPositionAlign.RC],top:[e.WidgetPositionAlign.BC,e.WidgetPositionAlign.TC]},_hasAlignmentPoints:!1,_lastPosition:null,initializer:function(t){var n=this;t&&t.align&&t.align.points&&(n._hasAlignmentPoints=!0,n._setPositionAccordingPoints()),e.on(n._onUISetAlignPAS,n,"_uiSetAlign"),e.after(n._afterRenderUIPAS,n,"renderUI"),n.after("positionChange",n._afterPositionChangePAS)},suggestAlignment:function(e){var t=this,n;n=t.get("align")||{},e&&(n.node=e),t._hasAlignmentPoints||(n.points=t._getAlignPointsSuggestion(t.get("position"))),t.set("align",n)},_afterPositionChangePAS:function(e){var t=this;t._uiSetPosition(e.newVal,e.prevVal)},_afterRenderUIPAS:function(){var e=this;e._uiSetPosition(e.get("position"))},_canWidgetAlignToNode:function(e,t){var n=this,r,i=n._getAlignPointsSuggestion(t),s=n._getAlignedXY(e,i);return r=n.getConstrainedXY(s),r[0]===s[0]&&r[1]===s[1]},_findBestPosition:function(t){var n=this,r=n.get("position"),i=[r,"top","bottom","right","left"],s=e.one(t);return s&&!s.inViewportRegion()?n._findBestPositionOutsideViewport(s):(i=e.Array.dedupe(i),e.Array.some(i,function(e){if(n._canWidgetAlignToNode(s,e))return r=e,!0}),r)},_findBestPositionOutsideViewport:function(e){var t=this,n=t._getRegion(e),r=t._getRegion();if(n.top<r.top)return"bottom";if(n.bottom>r.bottom)return"top";if(n.right>r.right)return"left";if(n.left<r.left)return"right"},_getAlignPointsSuggestion:function(e){return this.POSITION_ALIGN_SUGGESTION[e]},_getPosition:function(t){return e.Lang.isFunction(t)&&(t=t.call(this)),t},_onUISetAlignPAS:function(t){var n=this,r;if(!n.get("constrain"))return;return r=n._findBestPosition(t),n._syncPositionUI(r,n._lastPosition||n.get("position")),n._lastPosition=r,new e.Do.AlterArgs(null,[t,n._getAlignPointsSuggestion(r)])},_setPositionAccordingPoints:function(){var t=this,n=t.get("align").points;e.Object.some(t.POSITION_ALIGN_SUGGESTION,function(e,r){if(n[0]===e[0]&&n[1]===e[1])return t.set("position",r),!0})},_syncPositionUI:function(e,t){var r=this,i=r.get("boundingBox");t&&i.removeClass(n(t)),i.addClass(n(e))},_uiSetPosition:function(e,t){var n=this;n._syncPositionUI(e,t),n.suggestAlignment()},_validatePosition:function(t){return e.Lang.isFunction(t)&&(t=t.call(this)),t==="bottom"||t==="top"||t==="left"||t==="right"}}),e.WidgetPositionAlignSuggestion=r},"3.0.3-deprecated.50",{requires:["widget-position-align","widget-stdmod"]});
YUI.add("aui-tooltip-base",function(e,t){var n=e.Lang,r=e.getClassName,i=r("tooltip-arrow"),s=r("tooltip-inner");e.Tooltip=e.Base.create("tooltip",e.Widget,[e.WidgetCssClass,e.WidgetPosition,e.WidgetStdMod,e.WidgetToggle,e.WidgetAutohide,e.WidgetPositionAlign,e.WidgetPositionAlignSuggestion,e.WidgetPositionConstrain,e.WidgetStack,e.WidgetTransition,e.WidgetTrigger],{initializer:function(){var t=this;t._eventHandles=[e.after(t._afterUiSetTrigger,t,"_uiSetTrigger"),e.on("scroll",e.debounce(t._onScroll,100,t)),e.on("windowresize",e.bind(t._onResize,t))]},destructor:function(){(new e.EventHandle(this._eventHandles)).detach()},renderUI:function(){var t=this,n=t.get("boundingBox"),r=t.get("contentBox");r.addClass(s),n.append(e.Tooltip.TEMPLATES.arrow)},bindUI:function(){var t=this,n=t.get("trigger");n&&n.on("hover",e.bind(t._onBoundingBoxMouseenter,t),e.bind(t._onBoundingBoxMouseleave,t)),t.get("boundingBox").on("hover",e.bind(t._onBoundingBoxMouseenter,t),e.bind(t._onBoundingBoxMouseleave,t))},_uiSetVisible:function(e){var t=this,n=t.get("boundingBox");t._widgetUiSetVisible(e),n.setStyle("opacity",e?t.get("opacity"):0),e&&t._loadTooltipContentFromTitle()},_afterUiSetTrigger:function(e){this._loadTooltipContentFromTitle(),this.suggestAlignment(e)},_borrowTitleAttribute:function(){var e=this.get("trigger"),t=e.getAttribute("title");t&&e.setAttribute("data-title",t).removeAttribute("title")},_setStdModSection:function(t){var r=this.get("formatter");return n.isString(t)&&(r&&(t=r.call(this,t)),this.get("html")||(t=e.Escape.html(t))),t},_loadTooltipContentFromTitle:function(){var t=this.get("trigger"),n;if(!t)return;this._borrowTitleAttribute(),n=t.getAttribute("data-title"),n&&this.setStdModContent(e.WidgetStdMod.BODY,n)},_onBoundingBoxMouseenter:function(){this.show()},_onBoundingBoxMouseleave:function(){this.hide()},_onResize:function(){this.suggestAlignment(this.get("trigger"))},_onScroll:function(){this.suggestAlignment(this.get("trigger"))},_widgetUiSetVisible:e.Widget.prototype._uiSetVisible},{CSS_PREFIX:r("tooltip"),ATTRS:{animated:{value:!0},bodyContent:{setter:"_setStdModSection"},constrain:{value:!0},footerContent:{setter:"_setStdModSection"},formatter:{validator:e.Lang.isFunction},headerContent:{setter:"_setStdModSection"},html:{value:!1,validator:n.isBoolean},opacity:{value:.8},triggerShowEvent:{validator:n.isString,value:"mouseenter"},zIndex:{value:1030}},TEMPLATES:{arrow:'<div class="'+i+'"></div>'}})},"3.0.3-deprecated.50",{requires:["escape","event-hover","widget","widget-autohide","widget-position","widget-position-align","widget-position-constrain","widget-stack","widget-stdmod","aui-classnamemanager","aui-component","aui-debounce","aui-widget-cssclass","aui-widget-toggle","aui-widget-transition","aui-widget-trigger","aui-widget-position-align-suggestion","aui-node-base","event-resize"],skinnable:!0});
YUI.add("aui-tooltip-delegate",function(e,t){var n=e.Lang,r=e.config.doc;e.TooltipDelegate=e.Base.create("tooltip-delegate",e.Base,[],{items:null,tooltip:null,initializer:function(){var e=this;e._eventHandles=[],e.bindUI()},destructor:function(){var t=this;(new e.EventHandle(t._eventHandles)).detach()},bindUI:function(){var t=this,n,r;n=t.get("container"),r=t.get("trigger"),t._eventHandles.push(n.delegate(t.get("triggerShowEvent"),e.bind(t._onUserShowInteraction,t),r),n.delegate(t.get("triggerHideEvent"),e.bind(t._onUserHideInteraction,t),r))},getTooltip:function(){var t=this,n=t.tooltip;return n||(n=t.tooltip=new e.Tooltip({align:t.get("align"),bindDOMEvents:!1,cssClass:t.get("cssClass"),duration:t.get("duration"),formatter:t.get("formatter"),opacity:t.get("opacity"),position:t.get("position"),html:t.get("html"),visible:!1,zIndex:t.get("zIndex")})),n},_onUserHideInteraction:function(){var e=this;e.getTooltip().hide()},_onUserShowInteraction:function(e){var t=this,n;n=e.currentTarget,t.getTooltip().show().set("trigger",n).render()},_validateTriggerEvent:function(t){return e.Lang.isString(t)?!0:e.Lang.isArray(t)?t.every(function(t){return e.Lang.isString(t)}):!1}},{ATTRS:{align:{value:null},container:{setter:e.one,value:r,writeOnce:!0},cssClass:{value:null},duration:{value:.15,writeOnce:!0},formatter:e.Tooltip.ATTRS.formatter,html:{value:!1,validator:n.isBoolean},opacity:{value:.8,writeOnce:!0},position:e.WidgetPositionAlignSuggestion.ATTRS.position,trigger:e.WidgetPositionAlignSuggestion.ATTRS.trigger,triggerHideEvent:{validator:"_validateTriggerEvent",value:"mouseleave",writeOnce:!0},triggerShowEvent:{validator:"_validateTriggerEvent",value:"mouseenter",writeOnce:!0},zIndex:{}}})},"3.0.3-deprecated.50",{requires:["node-event-delegate","aui-tooltip-base"]});
;(function(A, Liferay) {
	var Language = {};

	Language.get = function(key) {
		return key;
	};

	A.use(
		'io-base',
		function(A) {
			Language.get = A.cached(
				function(key, extraParams) {
					var instance = this;

					var url = themeDisplay.getPathContext() + '/language/' + themeDisplay.getLanguageId() + '/' + key + '/';

					if (extraParams) {
						if (typeof extraParams == 'string') {
							url += extraParams;
						}
						else if (Array.isArray(extraParams)) {
							url += extraParams.join('/');
						}
					}

					var headers = {
						'X-CSRF-Token': Liferay.authToken
					};

					var value = '';

					A.io(
						url,
						{
							headers: headers,
							method: 'GET',
							on: {
								complete: function(i, o) {
									value = o.responseText;
								}
							},
							sync: true
						}
					);

					return value;
				}
			);
		}
	);

	Liferay.Language = Language;
})(AUI(), Liferay);
YUI.add("timers",function(e,t){function i(e){return s}function s(e){this.capacity=this.snap(e),this.length=0,this.front=0,this.initialize()}function o(e,t,n,r,i){for(var s=0;s<i;++s)n[s+r]=e[s+t]}function u(e){return e>>>=0,e-=1,e|=e>>1,e|=e>>2,e|=e>>4,e|=e>>8,e|=e>>16,e+1}function v(){while(a.length>0){var e=a.shift();try{e.call()}catch(t){if(d)throw l(),t;setTimeout(function(){throw t},0)}}f=!1}function y(e){d&&p.domain&&(e=p.domain.bind(e)),a.push(e),f||(l(),f=!0)}function b(e){var t;return b._asynchronizer(function(){t||e()}),{cancel:function(){t=1}}}var n={},r=e.config.global;"use strict",n.exports=s,s.prototype.push=function(e){var t=this.length;this.capacity<=t&&this.grow(this.snap(this.capacity*this.growFactor));var n=this.front+t&this.capacity-1;this[n]=e,this.length=t+1},s.prototype.shift=function(){var e=this.front,t=this[e];return this[e]=void 0,this.front=e+1&this.capacity-1,this.length--,t},s.prototype.grow=function(e){var t=this.front,n=this.capacity,r=new Array(n),i=this.length;o(this,0,r,0,n),this.capacity=e,this.initialize(),this.front=0;if(t+i<=n)o(r,t,this,0,i);else{var s=i-(t+i&n-1);o(r,t,this,0,s),o(r,0,this,s,i-s)}},s.prototype.initialize=function(){var e=this.capacity;for(var t=0;t<e;++t)this[t]=void 0},s.prototype.snap=function(e){return typeof e!="number"?this.minCapacity:u(Math.min(this.maxCapacity,Math.max(this.minCapacity,e)))},s.prototype.maxCapacity=1<<30|0,s.prototype.minCapacity=16,s.prototype.growFactor=8,"use strict";var s=i("./queue"),a=new s(1024),f=!1,l=void 0,c=typeof setImmediate=="function",h,p=r.process,d=!!p&&{}.toString.call(p)==="[object process]";if(d)l=function(){var e=p.domain;e&&(h=h||(1,i)("domain"),h.active=p.domain=null),f&&c?setImmediate(v):p.nextTick(v),e&&(h.active=p.domain=e)};else if(c)l=function(){setImmediate(v)};else if(typeof MessageChannel!="undefined"){var m=new MessageChannel;m.port1.onmessage=function(){l=g,m.port1.onmessage=v,v()};var g=function(){m.port2.postMessage(0)};l=function(){setTimeout(v,0),g()}}else l=function(){setTimeout(v,0)};n.exports=y,b._asynchronizer=y,b._impl="asap",e.soon=b},"patched-v3.18.1",{requires:["yui-base"]});
YUI.add("aui-alert",function(e,t){var n=e.getClassName,r=n("close"),i=n("alert","info"),s=n("alert","dismissable");e.Alert=e.Base.create("alert",e.Widget,[e.WidgetCssClass,e.WidgetStdMod,e.WidgetTransition],{CONTENT_TEMPLATE:null,_eventHandle:null,renderUI:function(){this._uiSetCloseable(this.get("closeable"))},bindUI:function(){this.on("closeableChange",this._onCloseableChange),this.after("visibleChange",this._afterVisibleChange)},_afterVisibleChange:function(t){!t.newVal&&this.get("destroyOnHide")&&e.soon(e.bind("destroy",this))},_onClickBoundingBox:function(e){e.target.test("."+r)&&this.hide()},_onCloseableChange:function(e){this._uiSetCloseable(e.newVal)},_uiSetCloseable:function(e){var t=this.get("boundingBox"),n=this.get("closeableNode");t.toggleClass(s,e),n.remove(),this._eventHandle&&this._eventHandle.detach(),e&&(t.insert(n,0),this._eventHandle=t.on("click",this._onClickBoundingBox,this))}},{ATTRS:{closeable:{validator:e.Lang.isBoolean,value:!0},closeableNode:{valueFn:function(){return e.Node.create('<button type="button" class="close">\u00d7</button>')}},cssClass:{value:i},destroyOnHide:{validator:e.Lang.isBoolean,value:!1}},CSS_PREFIX:"alert",HTML_PARSER:{closeableNode:"."+r}})},"3.0.3-deprecated.50",{requires:["timers","widget","widget-stdmod","aui-classnamemanager","aui-widget-cssclass","aui-widget-transition"],skinnable:!0});