YUI.add("event-valuechange",function(e,t){var n="_valuechange",r="value",i="nodeName",s,o={POLL_INTERVAL:50,TIMEOUT:1e4,_poll:function(t,r){var i=t._node,s=r.e,u=t._data&&t._data[n],a=0,f,l,c,h,p,d;if(!i||!u){o._stopPolling(t);return}l=u.prevVal,h=u.nodeName,u.isEditable?c=i.innerHTML:h==="input"||h==="textarea"?c=i.value:h==="select"&&(p=i.options[i.selectedIndex],c=p.value||p.text),c!==l&&(u.prevVal=c,f={_event:s,currentTarget:s&&s.currentTarget||t,newVal:c,prevVal:l,target:s&&s.target||t},e.Object.some(u.notifiers,function(e){var t=e.handle.evt,n;a!==1?e.fire(f):t.el===d&&e.fire(f),n=t&&t._facade?t._facade.stopped:0,n>a&&(a=n,a===1&&(d=t.el));if(a===2)return!0}),o._refreshTimeout(t))},_refreshTimeout:function(e,t){if(!e._node)return;var r=e.getData(n);o._stopTimeout(e),r.timeout=setTimeout(function(){o._stopPolling(e,t)},o.TIMEOUT)},_startPolling:function(t,s,u){var a,f;if(!t.test("input,textarea,select")&&!(f=o._isEditable(t)))return;a=t.getData(n),a||(a={nodeName:t.get(i).toLowerCase(),isEditable:f,prevVal:f?t.getDOMNode().innerHTML:t.get(r)},t.setData(n,a)),a.notifiers||(a.notifiers={});if(a.interval){if(!u.force){a.notifiers[e.stamp(s)]=s;return}o._stopPolling(t,s)}a.notifiers[e.stamp(s)]=s,a.interval=setInterval(function(){o._poll(t,u)},o.POLL_INTERVAL),o._refreshTimeout(t,s)},_stopPolling:function(t,r){if(!t._node)return;var i=t.getData(n)||{};clearInterval(i.interval),delete i.interval,o._stopTimeout(t),r?i.notifiers&&delete i.notifiers[e.stamp(r)]:i.notifiers={}},_stopTimeout:function(e){var t=e.getData(n)||{};clearTimeout(t.timeout),delete t.timeout},_isEditable:function(e){var t=e._node;return t.contentEditable==="true"||t.contentEditable===""},_onBlur:function(e,t){o._stopPolling(e.currentTarget,t)},_onFocus:function(e,t){var s=e.currentTarget,u=s.getData(n);u||(u={isEditable:o._isEditable(s),nodeName:s.get(i).toLowerCase()},s.setData(n,u)),u.prevVal=u.isEditable?s.getDOMNode().innerHTML:s.get(r),o._startPolling(s,t,{e:e})},_onKeyDown:function(e,t){o._startPolling(e.currentTarget,t,{e:e})},_onKeyUp:function(e,t){(e.charCode===229||e.charCode===197)&&o._startPolling(e.currentTarget,t,{e:e,force:!0})},_onMouseDown:function(e,t){o._startPolling(e.currentTarget,t,{e:e})},_onSubscribe:function(t,s,u,a){var f,l,c,h,p;l={blur:o._onBlur,focus:o._onFocus,keydown:o._onKeyDown,keyup:o._onKeyUp,mousedown:o._onMouseDown},f=u._valuechange={};if(a)f.delegated=!0,f.getNodes=function(){return h=t.all("input,textarea,select").filter(a),p=t.all('[contenteditable="true"],[contenteditable=""]').filter(a),h.concat(p)},f.getNodes().each(function(e){e.getData(n)||e.setData(n,{nodeName:e.get(i).toLowerCase(),isEditable:o._isEditable(e),prevVal:c?e.getDOMNode().innerHTML:e.get(r)})}),u._handles=e.delegate(l,t,a,null,u);else{c=o._isEditable(t);if(!t.test("input,textarea,select")&&!c)return;t.getData(n)||t.setData(n,{nodeName:t.get(i).toLowerCase(),isEditable:c,prevVal:c?t.getDOMNode().innerHTML:t.get(r)}),u._handles=t.on(l,null,null,u)}},_onUnsubscribe:function(e,t,n){var r=n._valuechange;n._handles&&n._handles.detach(),r.delegated?r.getNodes().each(function(e){o._stopPolling(e,n)}):o._stopPolling(e,n)}};s={detach:o._onUnsubscribe,on:o._onSubscribe,delegate:o._onSubscribe,detachDelegate:o._onUnsubscribe,publishConfig:{emitFacade:!0}},e.Event.define("valuechange",s),e.Event.define("valueChange",s),e.ValueChange=o},"patched-v3.18.1",{requires:["event-focus","event-synthetic"]});
YUI.add("event-tap",function(e,t){function a(t,n){n=n||e.Object.values(u),e.Array.each(n,function(e){var n=t[e];n&&(n.detach(),t[e]=null)})}var n=e.config.doc,r=e.Event._GESTURE_MAP,i=r.start,s="tap",o=/pointer/i,u={START:"Y_TAP_ON_START_HANDLE",END:"Y_TAP_ON_END_HANDLE",CANCEL:"Y_TAP_ON_CANCEL_HANDLE"};e.Event.define(s,{publishConfig:{preventedFn:function(e){var t=e.target.once("click",function(e){e.preventDefault()});setTimeout(function(){t.detach()},100)}},processArgs:function(e,t){if(!t){var n=e[3];return e.splice(3,1),n}},on:function(e,t,n){t[u.START]=e.on(i,this._start,this,e,t,n)},detach:function(e,t,n){a(t)},delegate:function(t,n,r,s){n[u.START]=e.delegate(i,function(e){this._start(e,t,n,r,!0)},t,s,this)},detachDelegate:function(e,t,n){a(t)},_start:function(e,t,n,i,s){var a={canceled:!1,eventType:e.type},f=n.preventMouse||!1;if(e.button&&e.button===3)return;if(e.touches&&e.touches.length!==1)return;a.node=s?e.currentTarget:t,e.touches?a.startXY=[e.touches[0].pageX,e.touches[0].pageY]:a.startXY=[e.pageX,e.pageY],e.touches?(n[u.END]=t.once("touchend",this._end,this,t,n,i,s,a),n[u.CANCEL]=t.once("touchcancel",this.detach,this,t,n,i,s,a),n.preventMouse=!0):a.eventType.indexOf("mouse")!==-1&&!f?(n[u.END]=t.once("mouseup",this._end,this,t,n,i,s,a),n[u.CANCEL]=t.once("mousecancel",this.detach,this,t,n,i,s,a)):a.eventType.indexOf("mouse")!==-1&&f?n.preventMouse=!1:o.test(a.eventType)&&(n[u.END]=t.once(r.end,this._end,this,t,n,i,s,a),n[u.CANCEL]=t.once(r.cancel,this.detach,this,t,n,i,s,a))},_end:function(e,t,n,r,i,o){var f=o.startXY,l,c,h=15;n._extra&&n._extra.sensitivity>=0&&(h=n._extra.sensitivity),e.changedTouches?(l=[e.changedTouches[0].pageX,e.changedTouches[0].pageY],c=[e.changedTouches[0].clientX,e.changedTouches[0].clientY]):(l=[e.pageX,e.pageY],c=[e.clientX,e.clientY]),Math.abs(l[0]-f[0])<=h&&Math.abs(l[1]-f[1])<=h&&(e.type=s,e.pageX=l[0],e.pageY=l[1],e.clientX=c[0],e.clientY=c[1],e.currentTarget=o.node,r.fire(e)),a(n,[u.END,u.CANCEL])}})},"patched-v3.18.1",{requires:["node-base","event-base","event-touch","event-synthetic"]});
YUI.add("dd-ddm",function(e,t){e.mix(e.DD.DDM,{_pg:null,_debugShim:!1,_activateTargets:function(){},_deactivateTargets:function(){},_startDrag:function(){this.activeDrag&&this.activeDrag.get("useShim")&&(this._shimming=!0,this._pg_activate(),this._activateTargets())},_endDrag:function(){e.later(0,this,this._pg_deactivate),this._deactivateTargets()},_pg_deactivate:function(){this._pg.setStyle("display","none")},_pg_activate:function(){this._pg||this._createPG();var e=this.activeDrag.get("activeHandle"),t="auto";e&&(t=e.getStyle("cursor")),t==="auto"&&(t=this.get("dragCursor")),this._pg_size(),this._pg.setStyles({top:0,left:0,display:"block",opacity:this._debugShim?".5":"0",cursor:t})},_pg_size:function(){if(this.activeDrag){var t=e.one("body"),n=t.get("docHeight"),r=t.get("docWidth");this._pg.setStyles({height:n+"px",width:r+"px"})}},_createPG:function(){var t=e.Node.create("<div></div>"),n=e.one("body"),r;t.setStyles({top:"0",left:"0",position:"absolute",zIndex:"99999",overflow:"hidden",backgroundColor:"red",display:"none",height:"5px",width:"5px"}),t.set("id",e.stamp(t)),t.addClass(e.DD.DDM.CSS_PREFIX+"-shim"),n.prepend(t),this._pg=t,this._pg.on("mousemove",e.throttle(e.bind(this._move,this),this.get("throttleTime"))),this._pg.on("mouseup",e.bind(this._end,this)),r=e.one("win"),e.on("window:resize",e.bind(this._pg_size,this)),r.on("scroll",e.bind(this._pg_size,this))}},!0)},"patched-v3.18.1",{requires:["dd-ddm-base","event-resize"]});
YUI.add("dd-ddm-drop",function(e,t){e.mix(e.DD.DDM,{_noShim:!1,_activeShims:[],_hasActiveShim:function(){return this._noShim?!0:this._activeShims.length},_addActiveShim:function(e){this._activeShims.push(e)},_removeActiveShim:function(t){var n=[];e.Array.each(this._activeShims,function(e){e._yuid!==t._yuid&&n.push(e)}),this._activeShims=n},syncActiveShims:function(t){e.later(0,this,function(t){var n=t?this.targets:this._lookup();e.Array.each(n,function(e){e.sizeShim.call(e)},this)},t)},mode:0,POINT:0,INTERSECT:1,STRICT:2,useHash:!0,activeDrop:null,validDrops:[],otherDrops:{},targets:[],_addValid:function(e){return this.validDrops.push(e),this},_removeValid:function(t){var n=[];return e.Array.each(this.validDrops,function(e){e!==t&&n.push(e)}),this.validDrops=n,this},isOverTarget:function(e){if(this.activeDrag&&e){var t=this.activeDrag.mouseXY,n,r=this.activeDrag.get("dragMode"),i,s=e.shim;if(t&&this.activeDrag){i=this.activeDrag.region;if(r===this.STRICT)return this.activeDrag.get("dragNode").inRegion(e.region,!0,i);if(e&&e.shim)return r===this.INTERSECT&&this._noShim?(n=i||this.activeDrag.get("node"),e.get("node").intersect(n,e.region).inRegion):(this._noShim&&(s=e.get("node")),s.intersect({top:t[1],bottom:t[1],left:t[0],right:t[0]},e.region).inRegion)}}return!1},clearCache:function(){this.validDrops=[],this.otherDrops={},this._activeShims=[]},_activateTargets:function(){this._noShim=!0,this.clearCache(),e.Array.each(this.targets,function(e){e._activateShim([]),e.get("noShim")===!0&&(this._noShim=!1)},this),this._handleTargetOver()},getBestMatch:function(t,n){var r=null,i=0,s;return e.Object.each(t,function(e){var t=this.activeDrag.get("dragNode").intersect(e.get("node"));e.region.area=t.area,t.inRegion&&t.area>i&&(i=t.area,r=e)},this),n?(s=[],e.Object.each(t,function(e){e!==r&&s.push(e)},this),[r,s]):r},_deactivateTargets:function(){var t=[],n,r=this.activeDrag,i=this.activeDrop;r&&i&&this.otherDrops[i]?(r.get("dragMode")?(n=this.getBestMatch(this.otherDrops,!0),i=n[0],t=n[1]):(t=this.otherDrops,delete t[i]),r.get("node").removeClass(this.CSS_PREFIX+"-drag-over"),i&&(i.fire("drop:hit",{drag:r,drop:i,others:t}),r.fire("drag:drophit",{drag:r,drop:i,others:t}))):r&&r.get("dragging")&&(r.get("node").removeClass(this.CSS_PREFIX+"-drag-over"),r.fire("drag:dropmiss",{pageX:r.lastXY[0],pageY:r.lastXY[1]})),this.activeDrop=null,e.Array.each(this.targets,function(e){e._deactivateShim([])},this)},_dropMove:function(){this._hasActiveShim()?this._handleTargetOver():e.Object.each(this.otherDrops,function(e){e._handleOut.apply(e,[])})},_lookup:function(){if(!this.useHash||this._noShim)return this.validDrops;var t=[];return e.Array.each(this.validDrops,function(e){e.shim&&e.shim.inViewportRegion(!1,e.region)&&t.push(e)}),t},_handleTargetOver:function(){var t=this._lookup();e.Array.each(t,function(e){e._handleTargetOver.call(e)},this)},_regTarget:function(e){this.targets.push(e)},_unregTarget:function(t){var n=[],r;e.Array.each(this.targets,function(e){e!==t&&n.push(e)},this),this.targets=n,r=[],e.Array.each(this.validDrops,function(e){e!==t&&r.push(e)}),this.validDrops=r},getDrop:function(t){var n=!1,r=e.one(t);return r instanceof e.Node&&e.Array.each(this.targets,function(e){r.compareTo(e.get("node"))&&(n=e)}),n}},!0)},"patched-v3.18.1",{requires:["dd-ddm"]});
YUI.add("dd-drop",function(e,t){var n="node",r=e.DD.DDM,i="offsetHeight",s="offsetWidth",o="drop:over",u="drop:enter",a="drop:exit",f=function(){this._lazyAddAttrs=!1,f.superclass.constructor.apply(this,arguments),e.on("domready",e.bind(function(){e.later(100,this,this._createShim)},this)),r._regTarget(this)};f.NAME="drop",f.ATTRS={node:{setter:function(t){var n=e.one(t);return n||e.error("DD.Drop: Invalid Node Given: "+t),n}},groups:{value:["default"],getter:function(){return this._groups?e.Object.keys(this._groups):(this._groups={},[])},setter:function(t){return this._groups=e.Array.hash(t),t}},padding:{value:"0",setter:function(e){return r.cssSizestoObject(e)}},lock:{value:!1,setter:function(e){return e?this.get(n).addClass(r.CSS_PREFIX+"-drop-locked"):this.get(n).removeClass(r.CSS_PREFIX+"-drop-locked"),e}},bubbles:{setter:function(e){return this.addTarget(e),e}},useShim:{value:!0,setter:function(t){return e.DD.DDM._noShim=!t,t}}},e.extend(f,e.Base,{_bubbleTargets:e.DD.DDM,addToGroup:function(e){return this._groups[e]=!0,this},removeFromGroup:function(e){return delete this._groups[e],this},_createEvents:function(){var t=[o,u,a,"drop:hit"];e.Array.each(t,function(e){this.publish(e,{type:e,emitFacade:!0,preventable:!1,bubbles:!0,queuable:!1,prefix:"drop"})},this)},_valid:null,_groups:null,shim:null,region:null,overTarget:null,inGroup:function(t){this._valid=!1;var n=!1;return e.Array.each(t,function(e){this._groups[e]&&(n=!0,this._valid=!0)},this),n},initializer:function(){e.later(100,this,this._createEvents);var t=this.get(n),i;t.get("id")||(i=e.stamp(t),t.set("id",i)),t.addClass(r.CSS_PREFIX+"-drop"),this.set("groups",this.get("groups"))},destructor:function(){r._unregTarget(this),this.shim&&this.shim!==this.get(n)&&(this.shim.detachAll(),this.shim.remove(),this.shim=null),this.get(n).removeClass(r.CSS_PREFIX+"-drop"),this.detachAll()},_deactivateShim:function(){if(!this.shim)return!1;this.get(n).removeClass(r.CSS_PREFIX+"-drop-active-valid"),this.get(n).removeClass(r.CSS_PREFIX+"-drop-active-invalid"),this.get(n).removeClass(r.CSS_PREFIX+"-drop-over"),this.get("useShim")&&this.shim.setStyles({top:"-999px",left:"-999px",zIndex:"1"}),this.overTarget=!1},_activateShim:function(){if(!r.activeDrag)return!1;if(this.get(n)===r.activeDrag.get(n))return!1;if(this.get("lock"))return!1;var e=this.get(n);this.inGroup(r.activeDrag.get("groups"))?(e.removeClass(r.CSS_PREFIX+"-drop-active-invalid"),e.addClass(r.CSS_PREFIX+"-drop-active-valid"),r._addValid(this),this.overTarget=!1,this.get("useShim")||(this.shim=this.get(n)),this.sizeShim()):(r._removeValid(this),e.removeClass(r.CSS_PREFIX+"-drop-active-valid"),e.addClass(r.CSS_PREFIX+"-drop-active-invalid"))},sizeShim:function(){if(!r.activeDrag)return!1;if(this.get(n)===r.activeDrag.get(n))return!1;if(this.get("lock"))return!1;if(!this.shim)return e.later(100,this,this.sizeShim),!1;var t=this.get(n),o=t.get(i),u=t.get(s),a=t.getXY(),f=this.get("padding"),l,c,h;u=u+f.left+f.right,o=o+f.top+f.bottom,a[0]=a[0]-f.left,a[1]=a[1]-f.top,r.activeDrag.get("dragMode")===r.INTERSECT&&(l=r.activeDrag,c=l.get(n).get(i),h=l.get(n).get(s),o+=c,u+=h,a[0]=a[0]-(h-l.deltaXY[0]),a[1]=a[1]-(c-l.deltaXY[1])),this.get("useShim")&&this.shim.setStyles({height:o+"px",width:u+"px",top:a[1]+"px",left:a[0]+"px"}),this.region={0:a[0],1:a[1],area:0,top:a[1],right:a[0]+u,bottom:a[1]+o,left:a[0]}},_createShim:function(){if(!r._pg){e.later(10,this,this._createShim);return}if(this.shim)return;var t=this.get("node");this.get("useShim")&&(t=e.Node.create('<div id="'+this.get(n).get("id")+'_shim"></div>'),t.setStyles({height:this.get(n).get(i)+"px",width:this.get(n).get(s)+"px",backgroundColor:"yellow",opacity:".5",zIndex:"1",overflow:"hidden",top:"-900px",left:"-900px",position:"absolute"}),r._pg.appendChild(t),t.on("mouseover",e.bind(this._handleOverEvent,this)),t.on("mouseout",e.bind(this._handleOutEvent,this))),this.shim=t},_handleTargetOver:function(){r.isOverTarget(this)?(this.get(n).addClass(r.CSS_PREFIX+"-drop-over"),r.activeDrop=this,r.otherDrops[this]=this,this.overTarget?(r.activeDrag.fire("drag:over",{drop:this,drag:r.activeDrag}),this.fire(o,{drop:this,drag:r.activeDrag})):r.activeDrag.get("dragging")&&(this.overTarget=!0,this.fire(u,{drop:this,drag:r.activeDrag}),r.activeDrag.fire("drag:enter",{drop:this,drag:r.activeDrag}),r.activeDrag.get(n).addClass(r.CSS_PREFIX+"-drag-over"))):this._handleOut()},_handleOverEvent:function(){this.shim.setStyle("zIndex","999"),r._addActiveShim(this)},_handleOutEvent:function(){this.shim.setStyle("zIndex","1"),r._removeActiveShim(this)},_handleOut:function(e){(!r.isOverTarget(this)||e)&&this.overTarget&&(this.overTarget=!1,e||r._removeActiveShim(this),r.activeDrag&&(this.get(n).removeClass(r.CSS_PREFIX+"-drop-over"),r.activeDrag.get(n).removeClass(r.CSS_PREFIX+"-drag-over"),this.fire(a,{drop:this,drag:r.activeDrag}),r.activeDrag.fire("drag:exit",{drop:this,drag:r.activeDrag}),delete r.otherDrops[this]))}}),e.DD.Drop=f},"patched-v3.18.1",{requires:["dd-drag","dd-ddm-drop"]});
YUI.add("dd-drop-plugin",function(e,t){var n=function(e){e.node=e.host,n.superclass.constructor.apply(this,arguments)};n.NAME="dd-drop-plugin",n.NS="drop",e.extend(n,e.DD.Drop),e.namespace("Plugin"),e.Plugin.Drop=n},"patched-v3.18.1",{requires:["dd-drop"]});
YUI.add("dd-delegate",function(e,t){var n=function(){n.superclass.constructor.apply(this,arguments)},r="container",i="nodes",s=e.Node.create("<div>Temp Node</div>");e.extend(n,e.Base,{_bubbleTargets:e.DD.DDM,dd:null,_shimState:null,_handles:null,_onNodeChange:function(e){this.set("dragNode",e.newVal)},_afterDragEnd:function(){e.DD.DDM._noShim=this._shimState,this.set("lastNode",this.dd.get("node")),this.get("lastNode").removeClass(e.DD.DDM.CSS_PREFIX+"-dragging"),this.dd._unprep(),this.dd.set("node",s)},_delMouseDown:function(t){var n=t.currentTarget,r=this.dd,s=n,o=this.get("dragConfig"),u=r.get("node");n.test(this.get(i))&&!n.test(this.get("invalid"))&&(this._shimState=e.DD.DDM._noShim,e.DD.DDM._noShim=!0,this.set("currentNode",n),u.inDoc()&&r._unprep(),r.set("node",n),o&&o.dragNode?s=o.dragNode:r.proxy&&(s=e.DD.DDM._proxy),r.set("dragNode",s),r._prep(),r.fire("drag:mouseDown",{ev:t}))},_onMouseEnter:function(){this._shimState=e.DD.DDM._noShim,e.DD.DDM._noShim=!0},_onMouseLeave:function(){e.DD.DDM._noShim=this._shimState},initializer:function(){this._handles=[];var t=this.get("dragConfig")||{},n=this.get(r);t.node=s.cloneNode(!0),t.bubbleTargets=this,this.get("handles")&&(t.handles=this.get("handles")),this.dd=new e.DD.Drag(t),this.dd.after("drag:end",e.bind(this._afterDragEnd,this)),this.dd.on("dragNodeChange",e.bind(this._onNodeChange,this)),this.dd.after("drag:mouseup",function(){this._unprep()}),this._handles.push(e.delegate(e.DD.Drag.START_EVENT,e.bind(this._delMouseDown,this),n,this.get(i))),this._handles.push(e.on("mouseenter",e.bind(this._onMouseEnter,this),n)),this._handles.push(e.on("mouseleave",e.bind(this._onMouseLeave,this),n)),e.later(50,this,this.syncTargets),e.DD.DDM.regDelegate(this)},syncTargets:function(){if(!e.Plugin.Drop||this.get("destroyed"))return;var t,n,s;return this.get("target")&&(t=e.one(this.get(r)).all(this.get(i)),n=this.dd.get("groups"),s=this.get("dragConfig"),s&&s.groups&&(n=s.groups),t.each(function(e){this.createDrop(e,n)},this)),this},createDrop:function(t,n){var r={useShim:!1,bubbleTargets:this};return t.drop||t.plug(e.Plugin.Drop,r),t.drop.set("groups",n),t},destructor:function(){this.dd&&this.dd.destroy();if(e.Plugin.Drop){var t=e.one(this.get(r)).all(this.get(i));t.unplug(e.Plugin.Drop)}e.Array.each(this._handles,function(e){e.detach()})}},{NAME:"delegate",ATTRS:{container:{value:"body"},nodes:{value:".dd-draggable"},invalid:{value:"input, select, button, a, textarea"},lastNode:{value:s},currentNode:{value:s},dragNode:{value:s},over:{value:!1},target:{value:!1},dragConfig:{value:null},handles:{value:null}}}),e.mix(e.DD.DDM,{_delegates:[],regDelegate:function(e){this._delegates.push(e)},getDelegate:function(t){var n=null;return t=e.one(t),e.Array.each(this._delegates,function(e){t.test(e.get(r))&&(n=e)},this),n}}),e.namespace("DD"),e.DD.Delegate=n},"patched-v3.18.1",{requires:["dd-drag","dd-drop-plugin","event-mouseenter"]});
YUI.add("resize-base",function(e,t){function Lt(){Lt.superclass.constructor.apply(this,arguments)}var n=e.Lang,r=n.isArray,i=n.isBoolean,s=n.isNumber,o=n.isString,u=e.Array,a=n.trim,f=u.indexOf,l=",",c=".",h="",p="{handle}",d=" ",v="active",m="activeHandle",g="activeHandleNode",y="all",b="autoHide",w="border",E="bottom",S="className",x="color",T="defMinHeight",N="defMinWidth",C="handle",k="handles",L="handlesWrapper",A="hidden",O="inner",M="left",_="margin",D="node",P="nodeName",H="none",B="offsetHeight",j="offsetWidth",F="padding",I="parentNode",q="position",R="relative",U="resize",z="resizing",W="right",X="static",V="style",$="top",J="width",K="wrap",Q="wrapper",G="wrapTypes",Y="resize:mouseUp",Z="resize:resize",et="resize:align",tt="resize:end",nt="resize:start",rt="t",it="tr",st="r",ot="br",ut="b",at="bl",ft="l",lt="tl",ct=function(){return Array.prototype.slice.call(arguments).join(d)},ht=function(e){return Math.round(parseFloat(e))||0},pt=function(e,t){return e.getComputedStyle(t)},dt=function(e){return C+e.toUpperCase()},vt=function(t){return t instanceof e.Node},mt=e.cached(function(e){return e.substring(0,1).toUpperCase()+e.substring(1)}),gt=e.cached(function(){var e=[],t=u(arguments,0,!0);return u.each(t,function(t,n){n>0&&(t=mt(t)),e.push(t)}),e.join(h)}),yt=e.ClassNameManager.getClassName,bt=yt(U),wt=yt(U,C),Et=yt(U,C,v),St=yt(U,C,O),xt=yt(U,C,O,p),Tt=yt(U,C,p),Nt=yt(U,A,k),Ct=yt(U,k,Q),kt=yt(U,Q);e.mix(Lt,{NAME:U,ATTRS:{activeHandle:{value:null,validator:function(t){return e.Lang.isString(t)||e.Lang.isNull(t)}},activeHandleNode:{value:null,validator:vt},autoHide:{value:!1,validator:i},defMinHeight:{value:15,validator:s},defMinWidth:{value:15,validator:s},handles:{setter:"_setHandles",value:y},handlesWrapper:{readOnly:!0,setter:e.one,valueFn:"_valueHandlesWrapper"},node:{setter:e.one},resizing:{value:!1,validator:i},wrap:{setter:"_setWrap",value:!1,validator:i},wrapTypes:{readOnly:!0,value:/^canvas|textarea|input|select|button|img|iframe|table|embed$/i},wrapper:{readOnly:!0,valueFn:"_valueWrapper",writeOnce:!0}},RULES:{b:function(e,t,n){var r=e.info,i=e.originalInfo;r.offsetHeight=i.offsetHeight+n},l:function(e,t){var n=e.info,r=e.originalInfo;n.left=r.left+t,n.offsetWidth=r.offsetWidth-t},r:function(e,t){var n=e.info,r=e.originalInfo;n.offsetWidth=r.offsetWidth+t},t:function(e,t,n){var r=e.info,i=e.originalInfo;r.top=i.top+n,r.offsetHeight=i.offsetHeight-n},tr:function(){this.t.apply(this,arguments),this.r.apply(this,arguments)},bl:function(){this.b.apply(this,arguments),this.l.apply(this,arguments)},br:function(){this.b.apply(this,arguments),this.r.apply(this,arguments)},tl:function(){this.t.apply(this,arguments),this.l.apply(this,arguments)}},capitalize:gt}),e.Resize=e.extend(Lt,e.Base,{ALL_HANDLES:[rt,it,st,ot,ut,at,ft,lt],REGEX_CHANGE_HEIGHT:/^(t|tr|b|bl|br|tl)$/i,REGEX_CHANGE_LEFT:/^(tl|l|bl)$/i,REGEX_CHANGE_TOP:/^(tl|t|tr)$/i,REGEX_CHANGE_WIDTH:/^(bl|br|l|r|tl|tr)$/i,HANDLES_WRAP_TEMPLATE:'<div class="'+Ct+'"></div>',WRAP_TEMPLATE:'<div class="'+kt+'"></div>',HANDLE_TEMPLATE:'<div class="'+ct(wt,Tt)+'">'+'<div class="'+ct(St,xt)+'">&nbsp;</div>'+"</div>",totalHSurrounding:0,totalVSurrounding:0,nodeSurrounding:null,wrapperSurrounding:null,changeHeightHandles:!1,changeLeftHandles:!1,changeTopHandles:!1,changeWidthHandles:!1,delegate:null,info:null,lastInfo:null,originalInfo:null,initializer:function(){this._eventHandles=[],this.renderer()},renderUI:function(){var e=this;e._renderHandles()},bindUI:function(){var e=this;e._createEvents(),e._bindDD(),e._bindHandle()},syncUI:function(){var e=this;this.get(D).addClass(bt),e._setHideHandlesUI(e.get(b))},destructor:function(){var t=this,n=t.get(D),r=t.get(Q),i=r.get(I);e.each(t._eventHandles,function(e){e.detach()}),t._eventHandles.length=0,t.eachHandle(function(e){t.delegate.dd.destroy(),e.remove(!0)}),t.delegate.destroy(),t.get(K)&&(t._copyStyles(r,n),i&&i.insertBefore(n,r),r.remove(!0)),n.removeClass(bt),n.removeClass(Nt)},renderer:function(){this.renderUI(),this.bindUI(),this.syncUI()},eachHandle:function(t){var n=this;e.each(n.get(k),function(e,r){var i=n.get(dt(e));t.apply(n,[i,e,r])})},_bindDD:function(){var t=this;t.delegate=new e.DD.Delegate({bubbleTargets:t,container:t.get(L),dragConfig:{clickPixelThresh:0,clickTimeThresh:0,useShim:!0,move:!1},nodes:c+wt,target:!1}),t._eventHandles.push(t.on("drag:drag",t._handleResizeEvent),t.on("drag:dropmiss",t._handleMouseUpEvent),t.on("drag:end",t._handleResizeEndEvent),t.on("drag:start",t._handleResizeStartEvent))},_bindHandle:function(){var t=this,n=t.get(Q);t._eventHandles.push(n.on("mouseenter",e.bind(t._onWrapperMouseEnter,t)),n.on("mouseleave",e.bind(t._onWrapperMouseLeave,t)),n.delegate("mouseenter",e.bind(t._onHandleMouseEnter,t),c+wt),n.delegate("mouseleave",e.bind(t._onHandleMouseLeave,t),c+wt))},_createEvents:function(){var e=this,t=function(t,n){e.publish(t,{defaultFn:n,queuable:!1,emitFacade:!0,bubbles:!0,prefix:U})};t(nt,this._defResizeStartFn),t(Z,this._defResizeFn),t(et,this._defResizeAlignFn),t(tt,this._defResizeEndFn),t(Y,this._defMouseUpFn)},_renderHandles:function(){var e=this,t=e.get(Q),n=e.get(L);e.eachHandle(function(e){n.append(e)}),t.append(n)},_buildHandle:function(t){var n=this;return e.Node.create(e.Lang.sub(n.HANDLE_TEMPLATE,{handle:t}))},_calcResize:function(){var t=this,n=t.handle,r=t.info,i=t.originalInfo,s=r.actXY[0]-i.actXY[0],o=r.actXY[1]-i.actXY[1];n&&e.Resize.RULES[n]&&e.Resize.RULES[n](t,s,o)},_checkSize:function(e,t){var n=this,r=n.info,i=n.originalInfo,s=e===B?$:M;r[e]=t;if(s===M&&n.changeLeftHandles||s===$&&n.changeTopHandles)r[s]=i[s]+i[e]-t},_copyStyles:function(t,n){var r=t.getStyle(q).toLowerCase(),i=this._getBoxSurroundingInfo(t),s;r===X&&(r=R),s={position:r,left:pt(t,M),top:pt(t,$)},e.mix(s,i.margin),e.mix(s,i.border),n.setStyles(s),t.setStyles({border:0,margin:0}),n.sizeTo(t.get(j)+i.totalHBorder,t.get(B)+i.totalVBorder)},_extractHandleName:e.cached(function(e){var t=e.get(S),n=t.match(new RegExp(yt(U,C,"(\\w{1,2})\\b")));return n?n[1
]:null}),_getInfo:function(e,t){var n=[0,0],r=t.dragEvent.target,i=e.getXY(),s=i[0],o=i[1],u=e.get(B),a=e.get(j);return t&&(n=r.actXY.length?r.actXY:r.lastXY),{actXY:n,bottom:o+u,left:s,offsetHeight:u,offsetWidth:a,right:s+a,top:o}},_getBoxSurroundingInfo:function(t){var n={padding:{},margin:{},border:{}};return vt(t)&&e.each([$,W,E,M],function(e){var r=gt(F,e),i=gt(_,e),s=gt(w,e,J),o=gt(w,e,x),u=gt(w,e,V);n.border[o]=pt(t,o),n.border[u]=pt(t,u),n.border[s]=pt(t,s),n.margin[i]=pt(t,i),n.padding[r]=pt(t,r)}),n.totalHBorder=ht(n.border.borderLeftWidth)+ht(n.border.borderRightWidth),n.totalHPadding=ht(n.padding.paddingLeft)+ht(n.padding.paddingRight),n.totalVBorder=ht(n.border.borderBottomWidth)+ht(n.border.borderTopWidth),n.totalVPadding=ht(n.padding.paddingBottom)+ht(n.padding.paddingTop),n},_syncUI:function(){var t=this,n=t.info,r=t.wrapperSurrounding,i=t.get(Q),s=t.get(D);i.sizeTo(n.offsetWidth,n.offsetHeight),(t.changeLeftHandles||t.changeTopHandles)&&i.setXY([n.left,n.top]),i.compareTo(s)||s.sizeTo(n.offsetWidth-r.totalHBorder,n.offsetHeight-r.totalVBorder),e.UA.webkit&&s.setStyle(U,H)},_updateChangeHandleInfo:function(e){var t=this;t.changeHeightHandles=t.REGEX_CHANGE_HEIGHT.test(e),t.changeLeftHandles=t.REGEX_CHANGE_LEFT.test(e),t.changeTopHandles=t.REGEX_CHANGE_TOP.test(e),t.changeWidthHandles=t.REGEX_CHANGE_WIDTH.test(e)},_updateInfo:function(e){var t=this;t.info=t._getInfo(t.get(Q),e)},_updateSurroundingInfo:function(){var e=this,t=e.get(D),n=e.get(Q),r=e._getBoxSurroundingInfo(t),i=e._getBoxSurroundingInfo(n);e.nodeSurrounding=r,e.wrapperSurrounding=i,e.totalVSurrounding=r.totalVPadding+i.totalVBorder,e.totalHSurrounding=r.totalHPadding+i.totalHBorder},_setActiveHandlesUI:function(e){var t=this,n=t.get(g);n&&(e?(t.eachHandle(function(e){e.removeClass(Et)}),n.addClass(Et)):n.removeClass(Et))},_setHandles:function(t){var n=this,i=[];return r(t)?i=t:o(t)&&(t.toLowerCase()===y?i=n.ALL_HANDLES:e.each(t.split(l),function(e){var t=a(e);f(n.ALL_HANDLES,t)>-1&&i.push(t)})),i},_setHideHandlesUI:function(e){var t=this,n=t.get(Q);t.get(z)||(e?n.addClass(Nt):n.removeClass(Nt))},_setWrap:function(e){var t=this,n=t.get(D),r=n.get(P),i=t.get(G);return i.test(r)&&(e=!0),e},_defMouseUpFn:function(){var e=this;e.set(z,!1)},_defResizeFn:function(e){var t=this;t._resize(e)},_resize:function(e){var t=this;t._handleResizeAlignEvent(e.dragEvent),t._syncUI()},_defResizeAlignFn:function(e){var t=this;t._resizeAlign(e)},_resizeAlign:function(e){var t=this,n,r,i;t.lastInfo=t.info,t._updateInfo(e),n=t.info,t._calcResize(),t.con||(r=t.get(T)+t.totalVSurrounding,i=t.get(N)+t.totalHSurrounding,n.offsetHeight<=r&&t._checkSize(B,r),n.offsetWidth<=i&&t._checkSize(j,i))},_defResizeEndFn:function(e){var t=this;t._resizeEnd(e)},_resizeEnd:function(e){var t=this,n=e.dragEvent.target;n.actXY=[],t._syncUI(),t._setActiveHandlesUI(!1),t.set(m,null),t.set(g,null),t.handle=null},_defResizeStartFn:function(e){var t=this;t._resizeStart(e)},_resizeStart:function(e){var t=this,n=t.get(Q);t.handle=t.get(m),t.set(z,!0),t._updateSurroundingInfo(),t.originalInfo=t._getInfo(n,e),t._updateInfo(e)},_handleMouseUpEvent:function(e){this.fire(Y,{dragEvent:e,info:this.info})},_handleResizeEvent:function(e){this.fire(Z,{dragEvent:e,info:this.info})},_handleResizeAlignEvent:function(e){this.fire(et,{dragEvent:e,info:this.info})},_handleResizeEndEvent:function(e){this.fire(tt,{dragEvent:e,info:this.info})},_handleResizeStartEvent:function(e){this.get(m)||this._setHandleFromNode(e.target.get("node")),this.fire(nt,{dragEvent:e,info:this.info})},_onWrapperMouseEnter:function(){var e=this;e.get(b)&&e._setHideHandlesUI(!1)},_onWrapperMouseLeave:function(){var e=this;e.get(b)&&e._setHideHandlesUI(!0)},_setHandleFromNode:function(e){var t=this,n=t._extractHandleName(e);t.get(z)||(t.set(m,n),t.set(g,e),t._setActiveHandlesUI(!0),t._updateChangeHandleInfo(n))},_onHandleMouseEnter:function(e){this._setHandleFromNode(e.currentTarget)},_onHandleMouseLeave:function(){var e=this;e.get(z)||e._setActiveHandlesUI(!1)},_valueHandlesWrapper:function(){return e.Node.create(this.HANDLES_WRAP_TEMPLATE)},_valueWrapper:function(){var t=this,n=t.get(D),r=n.get(I),i=n;return t.get(K)&&(i=e.Node.create(t.WRAP_TEMPLATE),r&&r.insertBefore(i,n),i.append(n),t._copyStyles(n,i),n.setStyles({position:X,left:0,top:0})),i}}),e.each(e.Resize.prototype.ALL_HANDLES,function(t){e.Resize.ATTRS[dt(t)]={setter:function(){return this._buildHandle(t)},value:null,writeOnce:!0}})},"patched-v3.18.1",{requires:["base","widget","event","oop","dd-drag","dd-delegate","dd-drop"],skinnable:!0});
YUI.add("resize-plugin",function(e,t){var n=function(t){t.node=e.Widget&&t.host instanceof e.Widget?t.host.get("boundingBox"):t.host,t.host instanceof e.Widget?t.widget=t.host:t.widget=!1,n.superclass.constructor.call(this,t)};n.NAME="resize-plugin",n.NS="resize",n.ATTRS={node:{value:undefined},widget:{value:undefined}},e.extend(n,e.Resize,{initializer:function(e){this.set("node",e.node),this.set("widget",e.widget),this.on("resize:resize",function(e){this._correctDimensions(e)})},_correctDimensions:function(e){var t=this.get("node"),n={old:t.getX(),cur:e.currentTarget.info.left},r={old:t.getY(),cur:e.currentTarget.info.top};this.get("widget")&&this._setWidgetProperties(e,n,r),this._isDifferent(n.old,n.cur)&&t.set("x",n.cur),this._isDifferent(r.old,r.cur)&&t.set("y",r.cur)},_setWidgetProperties:function(t,n,r){var i=this.get("widget"),s=i.get("height"),o=i.get("width"),u=t.currentTarget.info.offsetWidth-t.currentTarget.totalHSurrounding,a=t.currentTarget.info.offsetHeight-t.currentTarget.totalVSurrounding;this._isDifferent(s,a)&&i.set("height",a),this._isDifferent(o,u)&&i.set("width",u),i.hasImpl&&i.hasImpl(e.WidgetPosition)&&(this._isDifferent(i.get("x"),n.cur)&&i.set("x",n.cur),this._isDifferent(i.get("y"),r.cur)&&i.set("y",r.cur))},_isDifferent:function(e,t){var n=!1;return e!==t&&(n=t),n}}),e.namespace("Plugin"),e.Plugin.Resize=n},"patched-v3.18.1",{requires:["resize-base","plugin"],optional:["resize-constrain"]});
YUI.add("aui-modal",function(e,t){var n=e.Lang,r=e.UA,i=e.WidgetStdMod,s=e.getClassName,o=s("modal-body"),u=s("modal-footer"),a=s("modal-header"),f=s("modal-open");e.Modal=e.Base.create("modal",e.Widget,[e.WidgetCssClass,e.WidgetPosition,e.WidgetStdMod,e.WidgetToggle,e.WidgetAutohide,e.WidgetToolbars,e.WidgetPositionAlign,e.WidgetPositionConstrain,e.WidgetStack,e.WidgetModality],{CONTENT_TEMPLATE:'<div class="modal-content"></div>',initializer:function(){var t=this,n;n=[e.after(t._afterFillHeight,t,"fillHeight"),e.after("windowresize",e.bind("_afterWindowResize",t)),t.after("render",t._afterRender),t.after("draggableChange",t._afterDraggableChange),t.after("visibleChange",t._afterVisibleChange)],t._applyPlugin(t._plugDrag),t._eventHandles=n},destructor:function(){var t=this;(new e.EventHandle(t._eventHandles)).detach(),t._userInteractionHandle&&t._userInteractionHandle.detach(),e.all("body,html").removeClass(f)},_addBubbleTargets:function(t){var r=this;return n.isObject(t)||(t={}),e.mix(t,{bubbleTargets:r})},_afterFillHeight:function(){var e=this;e._fillMaxHeight(e.get("height"))},_afterDraggableChange:function(t){var n=this;t.newVal?n._applyPlugin(n._plugDrag):n.unplug(e.Plugin.Drag)},_afterRender:function(){this.get("visible")&&e.all("body,html").addClass(f)},_afterVisibleChange:function(t){var n=this;!t.newVal&&n.get("destroyOnHide")&&e.soon(e.bind("destroy",n)),e.all("body,html").toggleClass(f,t.newVal)},_afterWindowResize:function(){var e=this;e.get("centered")&&e.align()},_applyPlugin:function(e){var t=this;r.touchEnabled?e.call(t):t._userInteractionHandle||(t._userInteractionHandle=t.once(["click","mousemove"],t._onUserInitInteraction,t))},_fillMaxHeight:function(e){var t=this,n=t.get("fillHeight"),r=t.getStdModNode(n,!0);r&&r.setStyle("maxHeight",e)},_getStdModTemplate:function(t){return e.Node.create(e.Modal.TEMPLATES[t],this._stdModNode.get("ownerDocument"))},_onUserInitInteraction:function(){var e=this;e._plugDrag(),e._userInteractionHandle.detach(),e._userInteractionHandle=null},_plugDrag:function(){var t=this,n=t.get("draggable");n&&t.plug(e.Plugin.Drag,t._addBubbleTargets(n))}},{CSS_PREFIX:s("modal-dialog"),ATTRS:{bodyContent:{value:""},destroyOnHide:{validator:n.isBoolean,value:!1},draggable:{value:{handles:["."+a],plugins:[{fn:e.Plugin.DDConstrained}]}},toolbars:{valueFn:function(){var e=this;return{header:[{cssClass:"close",discardDefaultButtonCssClasses:!0,labelHTML:"<span> \u00d7 </span>",on:{click:function(t){e.hide(),t.domEvent.stopPropagation()}},render:!0}]}}},toolbarCssClass:{value:{header:"pull-right"}}},TEMPLATES:{header:'<div class="'+i.SECTION_CLASS_NAMES[i.HEADER]+" "+a+'"></div>',body:'<div class="'+i.SECTION_CLASS_NAMES[i.BODY]+" "+o+'"></div>',footer:'<div class="'+i.SECTION_CLASS_NAMES[i.FOOTER]+" "+u+'"></div>'}})},"3.0.3-deprecated.50",{requires:["widget","widget-autohide","widget-buttons","widget-modality","widget-position","widget-position-align","widget-position-constrain","widget-stack","widget-stdmod","dd-plugin","dd-constrain","timers","aui-classnamemanager","aui-widget-cssclass","aui-widget-toggle","aui-widget-toolbars"],skinnable:!0});
YUI.add("aui-modal-resize",function(e,t){function n(){}n.prototype={initializer:function(){var t=this;t._eventHandles.push(e.after(t._plugResize,t,"_plugDrag"),t.after("resizableChange",t._afterResizableChange),t.after("resize:end",e.bind(t._syncResizeDimensions,t))),t._applyPlugin(t._plugResize)},_afterResizableChange:function(t){var n=this;t.newVal?n._applyPlugin(n._plugResize):n.unplug(e.Plugin.Resize)},_beforeResizeCorrectDimensions:function(){var t=this;if(t.resize.proxy)return new e.Do.Prevent},_plugResize:function(){var t=this,n=t.get("resizable");n&&!t.hasPlugin("resizable")&&(t.plug(e.Plugin.Resize,t._addBubbleTargets(n)),e.before(t._beforeResizeCorrectDimensions,t.resize,"_correctDimensions",t))},_syncResizeDimensions:function(e){var t=this,n=t.get("boundingBox"),r=e.info;t.set("width",r.offsetWidth-parseInt(n.getComputedStyle("borderRightWidth"),10)-parseInt(n.getComputedStyle("borderLeftWidth"),10)),t.set("height",r.offsetHeight-parseInt(n.getComputedStyle("borderTopWidth"),10)-parseInt(n.getComputedStyle("borderBottomWidth"),10))}},n.ATTRS={resizable:{value:{handles:"br"}}},e.Base.mix(e.Modal,[n])},"3.0.3-deprecated.50",{requires:["aui-modal","resize-plugin"]});
AUI.add(
	'liferay-widget-zindex',
	function(A) {
		var STR_HOST = 'host';

		var WidgetZIndex = A.Component.create(
			{
				EXTENDS: A.Plugin.Base,

				NAME: 'widgetzindex',

				NS: 'zindex',

				prototype: {
					initializer: function() {
						var instance = this;

						var host = instance.get(STR_HOST);

						if (!host.get('rendered') && host.get('visible')) {
							instance._setHostZIndex();
						}

						instance.onHostEvent(
							'visibleChange',
							function(event) {
								if (event.newVal) {
									instance._setHostZIndex();
								}
							}
						);
					},

					_setHostZIndex: function() {
						var instance = this;

						instance.get(STR_HOST).set('zIndex', ++Liferay.zIndex.WINDOW);
					}
				}
			}
		);

		Liferay.WidgetZIndex = WidgetZIndex;
	},
	'',
	{
		requires: ['aui-modal', 'plugin']
	}
);
AUI.add(
	'liferay-util-window',
	function(A) {
		var DOM = A.DOM;
		var Lang = A.Lang;
		var UA = A.UA;

		var Util = Liferay.Util;
		var Window = Util.Window;

		var IE9 = UA.ie == 9;

		var setWidth = function(modal, width) {
			if (IE9) {
				modal.set('width', width + 1);
				modal.set('width', width);
			}
		};

		var LiferayModal = A.Component.create(
			{
				ATTRS: {
					autoHeight: {
						value: false
					},

					autoHeightRatio: {
						value: 0.95
					},

					autoSizeNode: {
						setter: A.one
					},

					autoWidth: {
						value: false
					},

					autoWidthRatio: {
						value: 0.95
					},

					toolbars: {
						valueFn: function() {
							var instance = this;

							return {
								header: [
									{
										cssClass: 'close',
										discardDefaultButtonCssClasses: true,
										labelHTML: '<svg class="lexicon-icon" focusable="false"><use data-href="' + Liferay.ThemeDisplay.getPathThemeImages() + '/lexicon/icons.svg#times" /></svg>',
										on: {
											click: function(event) {
												instance.hide();

												event.domEvent.stopPropagation();
											}
										},
										render: true
									}
								]
							};
						}
					}
				},

				EXTENDS: A.Modal,

				NAME: A.Modal.NAME,

				prototype: {
				}
			}
		);

		A.mix(
			Window,
			{
				DEFAULTS: {
					centered: true,
					modal: true,
					visible: true,
					zIndex: Liferay.zIndex.WINDOW
				},

				IFRAME_SUFFIX: '_iframe_',

				TITLE_TEMPLATE: '<h3 class="modal-title" />',

				getByChild: function(child) {
					var instance = this;

					var node = A.one(child).ancestor('.modal', true);

					return A.Widget.getByNode(node);
				},

				getById: function(id) {
					var instance = this;

					return instance._map[id];
				},

				getWindow: function(config) {
					var instance = this;

					instance._ensureDefaultId(config);

					var modal = instance._getWindow(config);

					instance._bindDOMWinResizeIfNeeded();

					modal.render();

					instance._setWindowDefaultSizeIfNeeded(modal);

					modal.align();

					return modal;
				},

				hideByChild: function(child) {
					var instance = this;

					return instance.getByChild(child).hide();
				},

				refreshByChild: function(child) {
					var instance = this;

					var dialog = instance.getByChild(child);

					if (dialog && dialog.io) {
						dialog.io.start();
					}
				},

				_bindDOMWinResizeIfNeeded: function() {
					var instance = this;

					if (!instance._winResizeHandler) {
						instance._winResizeHandler = A.getWin().after('windowresize', instance._syncWindowsUI, instance);
					}
				},

				_bindWindowHooks: function(modal, config) {
					var instance = this;

					var id = modal.get('id');

					var openingWindow = config.openingWindow;

					var refreshWindow = config.refreshWindow;

					modal._opener = openingWindow;
					modal._refreshWindow = refreshWindow;

					modal.after(
						'destroy',
						function(event) {
							if (modal._opener) {
								var openerInFrame = !!modal._opener.frameElement;

								if (IE9 && openerInFrame) {
									instance._syncWindowsUI();
								}
							}

							instance._unregister(modal);

							modal = null;
						}
					);

					var liferayHandles = modal._liferayHandles;

					liferayHandles.push(
						Liferay.after(
							'hashChange',
							function(event) {
								modal.iframe.set('uri', event.uri);
							}
						)
					);

					liferayHandles.push(
						Liferay.after(
							'popupReady',
							function(event) {
								var iframeId = id + instance.IFRAME_SUFFIX;

								if (event.windowName === iframeId) {
									event.dialog = modal;
									event.details[0].dialog = modal;

									if (event.doc) {
										Util.afterIframeLoaded(event);

										var modalUtil = event.win.Liferay.Util;

										modalUtil.Window._opener = modal._opener;

										modalUtil.Window._name = id;
									}

									var iframeNode = modal.iframe.node;

									iframeNode.focus();

									if (UA.ios) {
										iframeNode.attr('scrolling', 'no');
									}
								}
							}
						)
					);
				},

				_ensureDefaultId: function(config) {
					var instance = this;

					if (!Lang.isValue(config.id)) {
						config.id = A.guid();
					}

					if (!config.iframeId) {
						config.iframeId = config.id + instance.IFRAME_SUFFIX;
					}
				},

				_getDialogIframeConfig: function(config) {
					var instance = this;

					var dialogIframeConfig;

					var iframeId = config.iframeId;

					var uri = config.uri;

					if (uri) {
						if (config.cache === false) {
							uri = Liferay.Util.addParams(A.guid() + '=' + Date.now(), uri);
						}

						var defaultDialogIframeConfig = {
							bodyCssClass: ''
						};

						dialogIframeConfig = A.merge(
							defaultDialogIframeConfig,
							config.dialogIframe,
							{
								bindLoadHandler: function() {
									var instance = this;

									var modal = instance.get('host');

									var popupReady = false;

									var liferayHandles = modal._liferayHandles;

									liferayHandles.push(
										Liferay.on(
											'popupReady',
											function(event) {
												instance.fire('load', event);

												popupReady = true;
											}
										)
									);

									liferayHandles.push(
										instance.node.on(
											'load',
											function(event) {
												if (!popupReady) {
													Liferay.fire(
														'popupReady',
														{
															windowName: iframeId
														}
													);
												}

												popupReady = false;
											}
										)
									);
								},

								iframeId: iframeId,
								uri: uri
							}
						);
					}

					return dialogIframeConfig;
				},

				_getWindow: function(config) {
					var instance = this;

					var id = config.id;

					var modalConfig = instance._getWindowConfig(config);

					var dialogIframeConfig = instance._getDialogIframeConfig(config);

					var modal = instance.getById(id);

					if (!modal) {
						var titleNode = A.Node.create(instance.TITLE_TEMPLATE);

						if (config.stack !== false) {
							A.mix(
								modalConfig,
								{
									plugins: [Liferay.WidgetZIndex]
								}
							);
						}

						modal = new LiferayModal(
							A.merge(
								{
									headerContent: titleNode,
									id: id
								},
								modalConfig
							)
						);

						Liferay.once(
							'screenLoad',
							function() {
								modal.destroy();
							}
						);

						modal.titleNode = titleNode;

						instance._register(modal);

						instance._bindWindowHooks(modal, config);
					}
					else {
						if (!config.zIndex && modal.hasPlugin('zindex')) {
							delete modalConfig.zIndex;
						}

						var openingWindow = config.openingWindow;

						modal._opener = openingWindow;
						modal._refreshWindow = config.refreshWindow;

						instance._map[id]._opener = openingWindow;

						modal.setAttrs(modalConfig);
					}

					if (dialogIframeConfig) {
						modal.iframeConfig = dialogIframeConfig;
						modal.plug(A.Plugin.DialogIframe, dialogIframeConfig);

						modal.get('boundingBox').addClass('dialog-iframe-modal');
					}

					if (!Lang.isValue(config.title)) {
						config.title = '&nbsp;';
					}

					modal.titleNode.html(config.title);

					modal.fillHeight(modal.bodyNode);

					return modal;
				},

				_getWindowConfig: function(config) {
					var instance = this;

					var modalConfig = A.merge(instance.DEFAULTS, config.dialog);

					var height = modalConfig.height;
					var width = modalConfig.width;

					if (height === 'auto' || height === '' || height === undefined || height > DOM.winHeight()) {
						modalConfig.autoHeight = true;
					}

					if (width === 'auto' || width === '' || width === undefined || width > DOM.winWidth()) {
						modalConfig.autoWidth = true;
					}

					modalConfig.id = config.id;

					return modalConfig;
				},

				_register: function(modal) {
					var instance = this;

					var id = modal.get('id');

					modal._liferayHandles = [];

					instance._map[id] = modal;
					instance._map[id + instance.IFRAME_SUFFIX] = modal;
				},

				_setWindowDefaultSizeIfNeeded: function(modal) {
					var instance = this;

					var autoSizeNode = modal.get('autoSizeNode');

					if (modal.get('autoHeight')) {
						var height;

						if (autoSizeNode) {
							height = autoSizeNode.get('offsetHeight');
						}
						else {
							height = DOM.winHeight();
						}

						height *= modal.get('autoHeightRatio');

						if (modal.get('height') === 'auto') {
							modal._fillMaxHeight(height);
						}
						else {
							modal.set('height', height);
						}
					}

					var widthInitial = modal.get('width');

					if (widthInitial !== 'auto') {
						if (modal.get('autoWidth')) {
							var width;

							if (autoSizeNode) {
								width = autoSizeNode.get('offsetWidth');
							}
							else {
								width = DOM.winWidth();
							}

							width *= modal.get('autoWidthRatio');

							if (width != widthInitial) {
								modal.set('width', width);
							}
							else {
								setWidth(modal, widthInitial);
							}
						}
						else {
							setWidth(modal, modal.get('width'));
						}
					}
				},

				_syncWindowsUI: function() {
					var instance = this;

					var modals = instance._map;

					A.each(
						modals,
						function(modal) {
							if (modal.get('visible')) {
								instance._setWindowDefaultSizeIfNeeded(modal);

								modal.align();
							}
						}
					);
				},

				_unregister: function(modal) {
					var instance = this;

					var id = modal.get('id');

					delete instance._map[id];
					delete instance._map[id + instance.IFRAME_SUFFIX];

					A.Array.invoke(modal._liferayHandles, 'detach');
				},

				_winResizeHandler: null
			}
		);
	},
	'',
	{
		requires: ['aui-dialog-iframe-deprecated', 'aui-modal', 'event-resize', 'liferay-widget-zindex']
	}
);
AUI.add(
	'liferay-sign-in-modal',
	function(A) {
		var	NAME = 'signinmodal';

		var WIN = A.config.win;

		var SignInModal = A.Component.create(
			{
				ATTRS: {
					resetFormValidator: {
						value: true
					},

					signInPortlet: {
						setter: A.one,
						value: '#p_p_id_com_liferay_login_web_portlet_LoginPortlet_'
					}
				},

				EXTENDS: A.Plugin.Base,

				NAME: NAME,

				NS: NAME,

				prototype: {
					initializer: function(config) {
						var instance = this;

						var signInPortlet = instance.get('signInPortlet');

						if (signInPortlet) {
							instance._signInPortletBody = signInPortlet.one('.portlet-body');
						}

						var host = instance.get('host');

						instance._host = host;
						instance._signInPortlet = signInPortlet;

						instance._signInURL = host.attr('href');

						if (signInPortlet) {
							var formNode = signInPortlet.one('form');

							if (formNode) {
								var form = Liferay.Form.get(formNode.attr('id'));

								instance._formValidator = '';

								if (form) {
									instance._formValidator = form.formValidator;
								}

								instance._hasSignInForm = formNode.hasClass('sign-in-form');
							}
						}

						instance._bindUI();
					},

					destructor: function() {
						var dialog = Liferay.Util.getWindow(NAME);

						if (dialog) {
							dialog.destroy();
						}
					},

					_bindUI: function() {
						var instance = this;

						instance._host.on('click', A.bind('_load', instance));

						var destroyModal = function(event) {
							instance.destroy();

							Liferay.detach('screenLoad', destroyModal);
						};

						Liferay.on('screenLoad', destroyModal);
					},

					_load: function(event) {
						var instance = this;

						event.preventDefault();

						if (instance._signInPortletBody && instance._hasSignInForm) {
							instance._loadDOM();
						}
						else {
							instance._loadIO();
						}
					},

					_loadDOM: function() {
						var instance = this;

						var signInPortletBody = instance._signInPortletBody;

						if (!instance._originalParentNode) {
							instance._originalParentNode = signInPortletBody.ancestor();
						}

						instance._setModalContent(signInPortletBody);

						Liferay.Util.focusFormField(signInPortletBody.one('input:text'));
					},

					_loadIO: function() {
						var instance = this;

						var modalSignInURL = Liferay.Util.addParams('windowState=exclusive', instance._signInURL);

						A.io.request(
							modalSignInURL,
							{
								on: {
									failure: A.bind('_redirectPage', instance),
									success: function(event, id, obj) {
										var responseData = this.get('responseData');

										if (responseData) {
											instance._setModalContent(responseData);
										}
										else {
											instance._redirectPage();
										}
									}
								}
							}
						);
					},

					_redirectPage: function() {
						var instance = this;

						WIN.location.href = instance._signInURL;
					},

					_setModalContent: function(content) {
						var instance = this;

						var dialog = Liferay.Util.getWindow(NAME);

						if (!dialog) {
							Liferay.Util.openWindow(
								{
									dialog: {
										after: {
											visibleChange: function(event) {
												var signInPortletBody = instance._signInPortletBody;

												var formValidator = instance._formValidator;

												if (formValidator && instance.get('resetFormValidator')) {
													formValidator.resetAllFields();
												}

												if (!event.newVal && signInPortletBody) {
													var originalParentNode = instance._originalParentNode;

													if (originalParentNode) {
														originalParentNode.append(signInPortletBody);
													}
												}
											}
										},
										height: 450,
										width: 560
									},
									id: NAME,
									title: '안으로의\x20표시'
								},
								function(dialogWindow) {
									var bodyNode = dialogWindow.bodyNode;

									bodyNode.plug(A.Plugin.ParseContent);

									bodyNode.setContent(content);
								}
							);
						}
						else {
							dialog.bodyNode.setContent(content);

							dialog.show();
						}
					}
				}
			}
		);

		Liferay.SignInModal = SignInModal;
	},
	'',
	{
		requires: ['aui-base', 'aui-component', 'aui-io-request', 'aui-parse-content', 'liferay-form', 'liferay-portlet-url', 'liferay-util-window', 'plugin']
	}
);
