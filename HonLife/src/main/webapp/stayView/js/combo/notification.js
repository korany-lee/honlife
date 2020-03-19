AUI.add(
	'liferay-node',
	function(A) {
		var getRegExp = A.DOM._getRegExp;

		var prefix = A.Lang.String.prefix;

		var formatSelectorNS = function(ns, selector) {
			return selector.replace(getRegExp('(#|\\[id=(\\\"|\\\'))(?!' + ns + ')', 'g'), '$1' + ns);
		};

		A.mix(
			A.Node.prototype,
			{
				allNS: function(ns, selector) {
					var instance = this;

					return instance.all(formatSelectorNS(ns, selector));
				},

				oneNS: function(ns, selector) {
					var instance = this;

					return instance.one(formatSelectorNS(ns, selector));
				}
			}
		);

		A.Node.formatSelectorNS = formatSelectorNS;

		A.queryNS = function(ns, selector, methodName) {
			return A[methodName || 'one'](formatSelectorNS(ns, selector));
		};

		A.oneNS = A.queryNS;

		A.allNS = function(ns, selector) {
			return A.queryNS(ns, selector, 'all');
		};

		A.byIdNS = function(ns, id) {
			return A.one('#' + prefix(ns, id));
		};
	},
	'',
	{
		requires: ['aui-node-base']
	}
);
AUI.add(
	'liferay-portlet-base',
	function(A) {
		var PortletBase = function(config) {
			var instance = this;

			var namespace;

			if ('namespace' in config) {
				namespace = config.namespace;
			}
			else {
				namespace = A.guid();
			}

			instance.NS = namespace;
			instance.ID = namespace.replace(/^_(.*)_$/, '$1');

			if (config.rootNode) {
				instance._setRootNode(config.rootNode);
			}
		};

		PortletBase.ATTRS = {
			namespace: {
				getter: '_getNS',
				writeOnce: true
			},
			rootNode: {
				getter: '_getRootNode',
				setter: '_setRootNode',
				valueFn: function() {
					var instance = this;

					return A.one('#p_p_id' + instance.NS);
				}
			}
		};

		PortletBase.prototype = {
			all: function(selector, root) {
				var instance = this;

				root = A.one(root) || instance.rootNode || A;

				return root.allNS(instance.NS, selector);
			},

			byId: function(id) {
				var instance = this;

				return A.byIdNS(instance.NS, id);
			},

			ns: function(str) {
				var instance = this;

				return Liferay.Util.ns(instance.NS, str);
			},

			one: function(selector, root) {
				var instance = this;

				root = A.one(root) || instance.rootNode || A;

				return root.oneNS(instance.NS, selector);
			},

			_getNS: function(value) {
				var instance = this;

				return instance.NS;
			},

			_getRootNode: function(value) {
				var instance = this;

				return instance.rootNode;
			},

			_setRootNode: function(value) {
				var instance = this;

				var rootNode = A.one(value);

				instance.rootNode = rootNode;

				return rootNode;
			}
		};

		Liferay.PortletBase = PortletBase;
	},
	'',
	{
		requires: ['aui-base', 'liferay-node']
	}
);
AUI.add(
	'liferay-alert',
	function(A) {
		var Lang = A.Lang;

		var Alert = A.Component.create(
			{
				ATTRS: {
					animated: {
						validator: Lang.isBoolean,
						value: true
					},

					closeableNode: {
						valueFn: function() {
							return A.Node.create('<button class="close" type="button">' + Liferay.Util.getLexiconIconTpl('times', 'icon-monospaced') + '</button>');
						}
					},

					icon: {
						validator: Lang.isString,
						value: 'info-circle'
					},

					message: {
						validator: Lang.isString,
						value: ''
					},

					title: {
						validator: Lang.isString
					},

					type: {
						validator: Lang.isString,
						value: 'info'
					}
				},

				AUGMENTS: [Liferay.PortletBase],

				EXTENDS: A.Alert,

				NAME: 'liferayalert',

				prototype: {
					TPL_ALERT_NODE: '<div class="container-fluid-1280 lfr-alert-wrapper"></div>',

					TPL_ALERTS_CONTAINER: '<div class="lfr-alert-container"></div>',

					TPL_CONTENT: '<strong class="lead"><svg class="lexicon-icon" focusable="false"><use data-href="{pathThemeImages}/lexicon/icons.svg#{icon}" /></svg> {title}</strong>{message}',

					bindUI: function() {
						var instance = this;

						var boundingBox = instance.get('boundingBox');

						instance._eventHandles = [
							instance.after(['iconChange', 'messageChange', 'titleChange'], instance._updateBodyContent, instance),
							instance.after('typeChange', instance._afterTypeChange, instance),
							boundingBox.on('mouseenter', instance._cancelHide, instance),
							boundingBox.on('mouseleave', instance._onMouseLeave, instance)
						];

						Alert.superclass.bindUI.call(this);
					},

					render: function(parentNode) {
						var instance = this;

						instance._updateBodyContent();
						instance._updateCssClass();

						parentNode = A.one(parentNode);

						return Alert.superclass.render.call(this, this._getParentNode(parentNode));
					},

					_afterTypeChange: function(event) {
						var instance = this;

						instance._updateCssClass();
					},

					_cancelHide: function() {
						var instance = this;

						instance._clearHideTimer();

						instance._set('visible', true);
					},

					_getAlertsContainer: function(targetNode) {
						var instance = this;

						var alertsContainer = instance._alertsContainer;

						if (!alertsContainer) {
							var rootNode = targetNode || instance.get('rootNode') || A;

							alertsContainer = (targetNode && targetNode.one('.lfr-alert-container')) || rootNode.one('.lfr-alert-container');

							if (!alertsContainer) {
								alertsContainer = A.Node.create(instance.TPL_ALERTS_CONTAINER);

								if (targetNode) {
									targetNode.prepend(alertsContainer);
								}
								else {
									var navbar = rootNode.one('.portlet-body > .navbar');

									if (navbar) {
										navbar.placeAfter(alertsContainer);
									}
									else {
										var prependTarget = rootNode.one('.portlet-body') || rootNode;

										prependTarget.prepend(alertsContainer);
									}
								}
							}

							instance._alertsContainer = alertsContainer;
						}

						return alertsContainer;
					},

					_getParentNode: function(targetNode) {
						var instance = this;

						var parentNode = instance._parentNode;

						if (!parentNode) {
							parentNode = A.Node.create(instance.TPL_ALERT_NODE);

							var alertsContainer = instance._getAlertsContainer(targetNode);

							alertsContainer.prepend(parentNode);

							instance._parentNode = parentNode;
						}

						return parentNode;
					},

					_maybeHide: function() {
						var instance = this;

						if (instance._ignoreHideDelay) {
							instance._prepareTransition(false);
							instance._transition(false);
						}
						else {
							Alert.superclass._maybeHide.call(this);
						}
					},

					_onClickBoundingBox: function(event) {
						if (event.target.ancestor('.close', true, '.liferayalert')) {
							this._ignoreHideDelay = true;

							this.hide();
						}
					},

					_onMouseLeave: function(event) {
						var instance = this;

						var delay = instance.get('delay');

						if (delay.hide > 0) {
							instance.hide();
						}
					},

					_prepareTransition: function(visible) {
						var instance = this;

						var parentNode = instance._getParentNode();

						instance._clearHideTimer();

						if (visible && !parentNode.test('.in')) {
							instance._uiSetVisibleHost(true);

							parentNode.setStyle('height', 0);
						}
					},

					_transition: function(visible) {
						var instance = this;

						var parentNode = instance._getParentNode();

						if (!visible || !parentNode.test('.in')) {
							parentNode.transition(
								{
									duration: instance.get('duration') / 1000,
									easing: 'ease-out',
									height: visible ? instance.get('boundingBox').outerHeight() + 'px' : 0
								},
								function() {
									parentNode.toggleClass('in', visible);

									instance._uiSetVisibleHost(visible);

									var delay = instance.get('delay');

									if (visible && delay.hide) {
										instance.hide();
									}
									else if (instance.get('destroyOnHide')) {
										A.soon(A.bind('destroy', instance));
									}
								}
							);
						}
					},

					_updateBodyContent: function() {
						var instance = this;

						var bodyContent = Lang.sub(
							instance.TPL_CONTENT,
							{
								icon: instance.get('icon'),
								message: instance.get('message'),
								pathThemeImages: themeDisplay.getPathThemeImages(),
								title: instance.get('title') || ''
							}
						);

						instance.set('bodyContent', bodyContent);
					},

					_updateCssClass: function() {
						var instance = this;

						instance.set('cssClass', 'alert-' + instance.get('type'));
					}
				}
			}
		);

		Liferay.Alert = Alert;
	},
	'',
	{
		requires: ['aui-alert', 'aui-component', 'event-mouseenter', 'liferay-portlet-base', 'timers']
	}
);
AUI.add(
	'liferay-notification',
	function(A) {
		var Notification = A.Component.create(
			{
				EXTENDS: Liferay.Alert,

				NAME: 'liferaynotification',

				prototype: {
					TPL_ALERT_NODE: '<div class="lfr-notification-wrapper"></div>',

					TPL_ALERTS_CONTAINER: '<div class="lfr-notification-container"></div>',

					_getAlertsContainer: function(targetNode) {
						var instance = this;

						targetNode = targetNode || A.one('body');

						var alertsContainer = instance._alertsContainer;

						if (!alertsContainer) {
							var rootNode = targetNode || instance.get('rootNode') || A;

							alertsContainer = (targetNode && targetNode.one('.lfr-notification-container')) || rootNode.one('.lfr-notification-container');

							if (!alertsContainer) {
								alertsContainer = A.Node.create(instance.TPL_ALERTS_CONTAINER);

								targetNode.prepend(alertsContainer);
							}

							instance._alertsContainer = alertsContainer;
						}

						return alertsContainer;
					}
				}
			}
		);

		Liferay.Notification = Notification;
	},
	'',
	{
		requires: ['liferay-alert']
	}
);
