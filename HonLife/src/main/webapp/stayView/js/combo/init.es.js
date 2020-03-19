Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-uri/src/Uri", ['exports', 'metal/src/metal', './parse', 'metal-structs/src/all/structs'], function (exports, _metal, _parse, _structs) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _parse2 = _interopRequireDefault(_parse);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	var _slicedToArray = function () {
		function sliceIterator(arr, i) {
			var _arr = [];
			var _n = true;
			var _d = false;
			var _e = undefined;

			try {
				for (var _i = arr[Symbol.iterator](), _s; !(_n = (_s = _i.next()).done); _n = true) {
					_arr.push(_s.value);

					if (i && _arr.length === i) break;
				}
			} catch (err) {
				_d = true;
				_e = err;
			} finally {
				try {
					if (!_n && _i["return"]) _i["return"]();
				} finally {
					if (_d) throw _e;
				}
			}

			return _arr;
		}

		return function (arr, i) {
			if (Array.isArray(arr)) {
				return arr;
			} else if (Symbol.iterator in Object(arr)) {
				return sliceIterator(arr, i);
			} else {
				throw new TypeError("Invalid attempt to destructure non-iterable instance");
			}
		};
	}();

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	var parseFn_ = _parse2.default;

	var Uri = function () {

		/**
   * This class contains setters and getters for the parts of the URI.
   * The following figure displays an example URIs and their component parts.
   *
   *                                  path
   *	                             ┌───┴────┐
   *	  abc://example.com:123/path/data?key=value#fragid1
   *	  └┬┘   └────┬────┘ └┬┘           └───┬───┘ └──┬──┘
   * protocol  hostname  port            search    hash
   *          └──────┬───────┘
   *                host
   *
   * @param {*=} opt_uri Optional string URI to parse
   * @constructor
   */
		function Uri() {
			var opt_uri = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : '';

			_classCallCheck(this, Uri);

			this.url = Uri.parse(this.maybeAddProtocolAndHostname_(opt_uri));
		}

		/**
   * Adds parameters to uri from a <code>MultiMap</code> as source.
   * @param {MultiMap} multimap The <code>MultiMap</code> containing the
   *   parameters.
   * @protected
   * @chainable
   */


		_createClass(Uri, [{
			key: 'addParametersFromMultiMap',
			value: function addParametersFromMultiMap(multimap) {
				var _this = this;

				multimap.names().forEach(function (name) {
					multimap.getAll(name).forEach(function (value) {
						_this.addParameterValue(name, value);
					});
				});
				return this;
			}
		}, {
			key: 'addParameterValue',
			value: function addParameterValue(name, value) {
				this.ensureQueryInitialized_();
				if ((0, _metal.isDef)(value)) {
					value = String(value);
				}
				this.query.add(name, value);
				return this;
			}
		}, {
			key: 'addParameterValues',
			value: function addParameterValues(name, values) {
				var _this2 = this;

				values.forEach(function (value) {
					return _this2.addParameterValue(name, value);
				});
				return this;
			}
		}, {
			key: 'ensureQueryInitialized_',
			value: function ensureQueryInitialized_() {
				var _this3 = this;

				if (this.query) {
					return;
				}
				this.query = new _structs.MultiMap();
				var search = this.url.search;
				if (search) {
					search.substring(1).split('&').forEach(function (param) {
						var _param$split = param.split('='),
						    _param$split2 = _slicedToArray(_param$split, 2),
						    key = _param$split2[0],
						    value = _param$split2[1];

						if ((0, _metal.isDef)(value)) {
							value = Uri.urlDecode(value);
						}
						_this3.addParameterValue(key, value);
					});
				}
			}
		}, {
			key: 'getHash',
			value: function getHash() {
				return this.url.hash || '';
			}
		}, {
			key: 'getHost',
			value: function getHost() {
				var host = this.getHostname();
				if (host) {
					var port = this.getPort();
					if (port && port !== '80') {
						host += ':' + port;
					}
				}
				return host;
			}
		}, {
			key: 'getHostname',
			value: function getHostname() {
				var hostname = this.url.hostname;
				if (hostname === Uri.HOSTNAME_PLACEHOLDER) {
					return '';
				}
				return hostname;
			}
		}, {
			key: 'getOrigin',
			value: function getOrigin() {
				var host = this.getHost();
				if (host) {
					return this.getProtocol() + '//' + host;
				}
				return '';
			}
		}, {
			key: 'getParameterValue',
			value: function getParameterValue(name) {
				this.ensureQueryInitialized_();
				return this.query.get(name);
			}
		}, {
			key: 'getParameterValues',
			value: function getParameterValues(name) {
				this.ensureQueryInitialized_();
				return this.query.getAll(name);
			}
		}, {
			key: 'getParameterNames',
			value: function getParameterNames() {
				this.ensureQueryInitialized_();
				return this.query.names();
			}
		}, {
			key: 'getPathname',
			value: function getPathname() {
				return this.url.pathname;
			}
		}, {
			key: 'getPort',
			value: function getPort() {
				return this.url.port;
			}
		}, {
			key: 'getProtocol',
			value: function getProtocol() {
				return this.url.protocol;
			}
		}, {
			key: 'getSearch',
			value: function getSearch() {
				var _this4 = this;

				var search = '';
				var querystring = '';
				this.getParameterNames().forEach(function (name) {
					_this4.getParameterValues(name).forEach(function (value) {
						querystring += name;
						if ((0, _metal.isDef)(value)) {
							querystring += '=' + encodeURIComponent(value);
						}
						querystring += '&';
					});
				});
				querystring = querystring.slice(0, -1);
				if (querystring) {
					search += '?' + querystring;
				}
				return search;
			}
		}, {
			key: 'hasParameter',
			value: function hasParameter(name) {
				this.ensureQueryInitialized_();
				return this.query.contains(name);
			}
		}, {
			key: 'makeUnique',
			value: function makeUnique() {
				this.setParameterValue(Uri.RANDOM_PARAM, _metal.string.getRandomString());
				return this;
			}
		}, {
			key: 'maybeAddProtocolAndHostname_',
			value: function maybeAddProtocolAndHostname_(opt_uri) {
				var url = opt_uri;
				if (opt_uri.indexOf('://') === -1 && opt_uri.indexOf('javascript:') !== 0) {
					// jshint ignore:line

					url = Uri.DEFAULT_PROTOCOL;
					if (opt_uri[0] !== '/' || opt_uri[1] !== '/') {
						url += '//';
					}

					switch (opt_uri.charAt(0)) {
						case '.':
						case '?':
						case '#':
							url += Uri.HOSTNAME_PLACEHOLDER;
							url += '/';
							url += opt_uri;
							break;
						case '':
						case '/':
							if (opt_uri[1] !== '/') {
								url += Uri.HOSTNAME_PLACEHOLDER;
							}
							url += opt_uri;
							break;
						default:
							url += opt_uri;
					}
				}
				return url;
			}
		}, {
			key: 'removeParameter',
			value: function removeParameter(name) {
				this.ensureQueryInitialized_();
				this.query.remove(name);
				return this;
			}
		}, {
			key: 'removeUnique',
			value: function removeUnique() {
				this.removeParameter(Uri.RANDOM_PARAM);
				return this;
			}
		}, {
			key: 'setHash',
			value: function setHash(hash) {
				this.url.hash = hash;
				return this;
			}
		}, {
			key: 'setHostname',
			value: function setHostname(hostname) {
				this.url.hostname = hostname;
				return this;
			}
		}, {
			key: 'setParameterValue',
			value: function setParameterValue(name, value) {
				this.removeParameter(name);
				this.addParameterValue(name, value);
				return this;
			}
		}, {
			key: 'setParameterValues',
			value: function setParameterValues(name, values) {
				var _this5 = this;

				this.removeParameter(name);
				values.forEach(function (value) {
					return _this5.addParameterValue(name, value);
				});
				return this;
			}
		}, {
			key: 'setPathname',
			value: function setPathname(pathname) {
				this.url.pathname = pathname;
				return this;
			}
		}, {
			key: 'setPort',
			value: function setPort(port) {
				this.url.port = port;
				return this;
			}
		}, {
			key: 'setProtocol',
			value: function setProtocol(protocol) {
				this.url.protocol = protocol;
				if (this.url.protocol[this.url.protocol.length - 1] !== ':') {
					this.url.protocol += ':';
				}
				return this;
			}
		}, {
			key: 'toString',
			value: function toString() {
				var href = '';
				var host = this.getHost();
				if (host) {
					href += this.getProtocol() + '//';
				}
				href += host + this.getPathname() + this.getSearch() + this.getHash();
				return href;
			}
		}], [{
			key: 'getParseFn',
			value: function getParseFn() {
				return parseFn_;
			}
		}, {
			key: 'normalizeObject',
			value: function normalizeObject(parsed) {
				var length = parsed.pathname ? parsed.pathname.length : 0;
				if (length > 1 && parsed.pathname[length - 1] === '/') {
					parsed.pathname = parsed.pathname.substr(0, length - 1);
				}
				return parsed;
			}
		}, {
			key: 'parse',
			value: function parse(opt_uri) {
				return Uri.normalizeObject(parseFn_(opt_uri));
			}
		}, {
			key: 'setParseFn',
			value: function setParseFn(parseFn) {
				parseFn_ = parseFn;
			}
		}, {
			key: 'joinPaths',
			value: function joinPaths(basePath) {
				for (var _len = arguments.length, paths = Array(_len > 1 ? _len - 1 : 0), _key = 1; _key < _len; _key++) {
					paths[_key - 1] = arguments[_key];
				}

				if (basePath.charAt(basePath.length - 1) === '/') {
					basePath = basePath.substring(0, basePath.length - 1);
				}
				paths = paths.map(function (path) {
					return path.charAt(0) === '/' ? path.substring(1) : path;
				});
				return [basePath].concat(paths).join('/').replace(/\/$/, '');
			}
		}, {
			key: 'urlDecode',
			value: function urlDecode(str) {
				return decodeURIComponent(str.replace(/\+/g, ' '));
			}
		}]);

		return Uri;
	}();

	/**
  * Default protocol value.
  * @type {string}
  * @default http:
  * @static
  */
	Uri.DEFAULT_PROTOCOL = 'http:';

	/**
  * Hostname placeholder. Relevant to internal usage only.
  * @type {string}
  * @static
  */
	Uri.HOSTNAME_PLACEHOLDER = 'hostname' + Date.now();

	/**
  * Name used by the param generated by `makeUnique`.
  * @type {string}
  * @static
  */
	Uri.RANDOM_PARAM = 'zx';

	exports.default = Uri;
});
//# sourceMappingURL=Uri.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-ajax/src/Ajax", ['exports', 'metal/src/metal', 'metal-uri/src/Uri', 'metal-promise/src/promise/Promise'], function (exports, _metal, _Uri, _Promise) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _Uri2 = _interopRequireDefault(_Uri);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	var Ajax = function () {
		function Ajax() {
			_classCallCheck(this, Ajax);
		}

		_createClass(Ajax, null, [{
			key: 'parseResponseHeaders',
			value: function parseResponseHeaders(allHeaders) {
				var headers = [];
				if (!allHeaders) {
					return headers;
				}
				var pairs = allHeaders.split('\r\n');
				for (var i = 0; i < pairs.length; i++) {
					var index = pairs[i].indexOf(': ');
					if (index > 0) {
						var name = pairs[i].substring(0, index);
						var value = pairs[i].substring(index + 2);
						headers.push({
							name: name,
							value: value
						});
					}
				}
				return headers;
			}
		}, {
			key: 'request',
			value: function request(url, method, body, opt_headers, opt_params, opt_timeout, opt_sync, opt_withCredentials) {
				url = url || '';
				method = method || 'GET';

				var request = new XMLHttpRequest();

				var promise = new _Promise.CancellablePromise(function (resolve, reject) {
					request.onload = function () {
						if (request.aborted) {
							request.onerror();
							return;
						}
						resolve(request);
					};
					request.onerror = function () {
						var error = new Error('Request error');
						error.request = request;
						reject(error);
					};
				}).thenCatch(function (reason) {
					request.abort();
					throw reason;
				}).thenAlways(function () {
					clearTimeout(timeout);
				});

				if (opt_params) {
					url = new _Uri2.default(url).addParametersFromMultiMap(opt_params).toString();
				}

				request.open(method, url, !opt_sync);

				if (opt_withCredentials) {
					request.withCredentials = true;
				}

				if (opt_headers) {
					opt_headers.names().forEach(function (name) {
						request.setRequestHeader(name, opt_headers.getAll(name).join(', '));
					});
				}

				request.send((0, _metal.isDef)(body) ? body : null);

				if ((0, _metal.isDefAndNotNull)(opt_timeout)) {
					var timeout = setTimeout(function () {
						promise.cancel('Request timeout');
					}, opt_timeout);
				}

				return promise;
			}
		}]);

		return Ajax;
	}();

	exports.default = Ajax;
});
//# sourceMappingURL=Ajax.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/senna/src/errors/errors", ['exports'], function (exports) {
  'use strict';

  /**
   * Holds value error messages.
   * @const
   */

  Object.defineProperty(exports, "__esModule", {
    value: true
  });

  function _classCallCheck(instance, Constructor) {
    if (!(instance instanceof Constructor)) {
      throw new TypeError("Cannot call a class as a function");
    }
  }

  var errors = function errors() {
    _classCallCheck(this, errors);
  };

  /**
   * Invalid status error message.
   * @type {string}
   * @static
   */
  errors.INVALID_STATUS = 'Invalid status code';

  /**
   * Request error message.
   * @type {string}
   * @static
   */
  errors.REQUEST_ERROR = 'Request error';

  /**
   * Request timeout error message.
   * @type {string}
   * @static
   */
  errors.REQUEST_TIMEOUT = 'Request timeout';

  exports.default = errors;
});
//# sourceMappingURL=errors.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/senna/src/utils/utils", ['exports', '../globals/globals', 'metal-uri/src/Uri'], function (exports, _globals, _Uri) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _globals2 = _interopRequireDefault(_globals);

	var _Uri2 = _interopRequireDefault(_Uri);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	var utils = function () {
		function utils() {
			_classCallCheck(this, utils);
		}

		_createClass(utils, null, [{
			key: 'copyNodeAttributes',
			value: function copyNodeAttributes(source, target) {
				Array.prototype.slice.call(source.attributes).forEach(function (attribute) {
					return target.setAttribute(attribute.name, attribute.value);
				});
			}
		}, {
			key: 'getCurrentBrowserPath',
			value: function getCurrentBrowserPath() {
				return this.getCurrentBrowserPathWithoutHash() + _globals2.default.window.location.hash;
			}
		}, {
			key: 'getCurrentBrowserPathWithoutHash',
			value: function getCurrentBrowserPathWithoutHash() {
				return _globals2.default.window.location.pathname + _globals2.default.window.location.search;
			}
		}, {
			key: 'getUrlPath',
			value: function getUrlPath(url) {
				var uri = new _Uri2.default(url);
				return uri.getPathname() + uri.getSearch() + uri.getHash();
			}
		}, {
			key: 'getUrlPathWithoutHash',
			value: function getUrlPathWithoutHash(url) {
				var uri = new _Uri2.default(url);
				return uri.getPathname() + uri.getSearch();
			}
		}, {
			key: 'getUrlPathWithoutHashAndSearch',
			value: function getUrlPathWithoutHashAndSearch(url) {
				var uri = new _Uri2.default(url);
				return uri.getPathname();
			}
		}, {
			key: 'isCurrentBrowserPath',
			value: function isCurrentBrowserPath(url) {
				if (url) {
					var currentBrowserPath = this.getCurrentBrowserPathWithoutHash();
					// the getUrlPath will create a Uri and will normalize the path and
					// remove the trailling '/' for properly comparing paths.
					return utils.getUrlPathWithoutHash(url) === this.getUrlPath(currentBrowserPath);
				}
				return false;
			}
		}, {
			key: 'isHtml5HistorySupported',
			value: function isHtml5HistorySupported() {
				return !!(_globals2.default.window.history && _globals2.default.window.history.pushState);
			}
		}, {
			key: 'clearNodeAttributes',
			value: function clearNodeAttributes(node) {
				Array.prototype.slice.call(node.attributes).forEach(function (attribute) {
					return node.removeAttribute(attribute.name);
				});
			}
		}]);

		return utils;
	}();

	exports.default = utils;
});
//# sourceMappingURL=utils.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/senna/src/cacheable/Cacheable", ['exports', 'metal/src/metal'], function (exports, _metal) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	var Cacheable = function (_Disposable) {
		_inherits(Cacheable, _Disposable);

		/**
   * Abstract class for defining cacheable behavior.
   * @constructor
   */
		function Cacheable() {
			_classCallCheck(this, Cacheable);

			var _this = _possibleConstructorReturn(this, (Cacheable.__proto__ || Object.getPrototypeOf(Cacheable)).call(this));

			/**
    * Holds the cached data.
    * @type {!Object}
    * @default null
    * @protected
    */
			_this.cache = null;

			/**
    * Holds whether class is cacheable.
    * @type {boolean}
    * @default false
    * @protected
    */
			_this.cacheable = false;
			return _this;
		}

		/**
   * Adds content to the cache.
   * @param {string} content Content to be cached.
   * @chainable
   */


		_createClass(Cacheable, [{
			key: 'addCache',
			value: function addCache(content) {
				if (this.cacheable) {
					this.cache = content;
				}
				return this;
			}
		}, {
			key: 'clearCache',
			value: function clearCache() {
				this.cache = null;
				return this;
			}
		}, {
			key: 'disposeInternal',
			value: function disposeInternal() {
				this.clearCache();
			}
		}, {
			key: 'getCache',
			value: function getCache() {
				return this.cache;
			}
		}, {
			key: 'isCacheable',
			value: function isCacheable() {
				return this.cacheable;
			}
		}, {
			key: 'setCacheable',
			value: function setCacheable(cacheable) {
				if (!cacheable) {
					this.clearCache();
				}
				this.cacheable = cacheable;
			}
		}]);

		return Cacheable;
	}(_metal.Disposable);

	exports.default = Cacheable;
});
//# sourceMappingURL=Cacheable.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/senna/src/screen/Screen", ['exports', 'metal/src/metal', 'metal-dom/src/all/dom', '../cacheable/Cacheable', 'metal-promise/src/promise/Promise'], function (exports, _metal, _dom, _Cacheable2, _Promise) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _Cacheable3 = _interopRequireDefault(_Cacheable2);

	var _Promise2 = _interopRequireDefault(_Promise);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	var _get = function get(object, property, receiver) {
		if (object === null) object = Function.prototype;
		var desc = Object.getOwnPropertyDescriptor(object, property);

		if (desc === undefined) {
			var parent = Object.getPrototypeOf(object);

			if (parent === null) {
				return undefined;
			} else {
				return get(parent, property, receiver);
			}
		} else if ("value" in desc) {
			return desc.value;
		} else {
			var getter = desc.get;

			if (getter === undefined) {
				return undefined;
			}

			return getter.call(receiver);
		}
	};

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	var Screen = function (_Cacheable) {
		_inherits(Screen, _Cacheable);

		/**
   * Screen class is a special type of route handler that provides helper
   * utilities that adds lifecycle and methods to provide content to each
   * registered surface.
   * @constructor
   * @extends {Cacheable}
   */
		function Screen() {
			_classCallCheck(this, Screen);

			var _this = _possibleConstructorReturn(this, (Screen.__proto__ || Object.getPrototypeOf(Screen)).call(this));

			/**
    * Holds the screen id.
    * @type {string}
    * @protected
    */
			_this.id = _this.makeId_(_metal.core.getUid());

			/**
    * Holds the screen title. Relevant when the page title should be
    * upadated when screen is rendered.
    * @type {?string=}
    * @default null
    * @protected
    */
			_this.title = null;
			return _this;
		}

		/**
   * Fires when the screen is active. Allows a screen to perform any setup
   * that requires its DOM to be visible. Lifecycle.
   */


		_createClass(Screen, [{
			key: 'activate',
			value: function activate() {
				void 0;
			}
		}, {
			key: 'beforeDeactivate',
			value: function beforeDeactivate() {
				void 0;
			}
		}, {
			key: 'beforeUpdateHistoryPath',
			value: function beforeUpdateHistoryPath(path) {
				return path;
			}
		}, {
			key: 'beforeUpdateHistoryState',
			value: function beforeUpdateHistoryState(state) {
				return state;
			}
		}, {
			key: 'deactivate',
			value: function deactivate() {
				void 0;
			}
		}, {
			key: 'disposeInternal',
			value: function disposeInternal() {
				_get(Screen.prototype.__proto__ || Object.getPrototypeOf(Screen.prototype), 'disposeInternal', this).call(this);
				void 0;
			}
		}, {
			key: 'evaluateScripts',
			value: function evaluateScripts(surfaces) {
				Object.keys(surfaces).forEach(function (sId) {
					if (surfaces[sId].activeChild) {
						_dom.globalEval.runScriptsInElement(surfaces[sId].activeChild);
					}
				});
				return _Promise2.default.resolve();
			}
		}, {
			key: 'evaluateStyles',
			value: function evaluateStyles() {
				return _Promise2.default.resolve();
			}
		}, {
			key: 'flip',
			value: function flip(surfaces) {
				var _this2 = this;

				void 0;

				var transitions = [];

				Object.keys(surfaces).forEach(function (sId) {
					var surface = surfaces[sId];
					var deferred = surface.show(_this2.id);
					transitions.push(deferred);
				});

				return _Promise2.default.all(transitions);
			}
		}, {
			key: 'getId',
			value: function getId() {
				return this.id;
			}
		}, {
			key: 'getSurfaceContent',
			value: function getSurfaceContent() {
				void 0;
			}
		}, {
			key: 'getTitle',
			value: function getTitle() {
				return this.title;
			}
		}, {
			key: 'load',
			value: function load() {
				void 0;
				return _Promise2.default.resolve();
			}
		}, {
			key: 'makeId_',
			value: function makeId_(id) {
				return 'screen_' + id;
			}
		}, {
			key: 'setId',
			value: function setId(id) {
				this.id = id;
			}
		}, {
			key: 'setTitle',
			value: function setTitle(title) {
				this.title = title;
			}
		}, {
			key: 'toString',
			value: function toString() {
				return this.id;
			}
		}]);

		return Screen;
	}(_Cacheable3.default);

	/**
  * @param {*} object
  * @return {boolean} Whether a given instance implements
  * <code>Screen</code>.
  */
	Screen.isImplementedBy = function (object) {
		return object instanceof Screen;
	};

	exports.default = Screen;
});
//# sourceMappingURL=Screen.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-useragent/src/UA", ['exports'], function (exports) {
	'use strict';

	/**
  * Metal.js browser user agent detection. It's extremely recommended the usage
  * of feature checking over browser user agent sniffing. Unfortunately, in some
  * situations feature checking can be slow or even impossible, therefore use
  * this utility with caution.
  * @see <a href="http://www.useragentstring.com/">User agent strings</a>.
  */

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	var UA = function () {
		function UA() {
			_classCallCheck(this, UA);
		}

		_createClass(UA, null, [{
			key: 'getNativeUserAgent',
			value: function getNativeUserAgent() {
				var navigator = UA.globals.window.navigator;
				if (navigator) {
					var userAgent = navigator.userAgent;
					if (userAgent) {
						return userAgent;
					}
				}
				return '';
			}
		}, {
			key: 'getNativePlatform',
			value: function getNativePlatform() {
				var navigator = UA.globals.window.navigator;
				if (navigator) {
					var platform = navigator.platform;
					if (platform) {
						return platform;
					}
				}
				return '';
			}
		}, {
			key: 'matchPlatform',
			value: function matchPlatform(str) {
				return UA.platform.indexOf(str) !== -1;
			}
		}, {
			key: 'matchUserAgent',
			value: function matchUserAgent(str) {
				return UA.userAgent.indexOf(str) !== -1;
			}
		}, {
			key: 'testUserAgent',
			value: function testUserAgent() {
				var userAgent = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : '';
				var platform = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : '';

				/**
     * Holds the user agent value extracted from browser native user agent.
     * @type {string}
     * @static
     */
				UA.userAgent = userAgent;

				/**
     * Holds the platform value extracted from browser native platform.
     * @type {string}
     * @static
     */
				UA.platform = platform;

				/**
     * Whether the user's OS is Mac.
     * @type {boolean}
     * @static
     */
				UA.isMac = UA.matchPlatform('Mac');

				/**
     * Whether the user's OS is Win.
     * @type {boolean}
     * @static
     */
				UA.isWin = UA.matchPlatform('Win');

				/**
     * Whether the user's browser is Opera.
     * @type {boolean}
     * @static
     */
				UA.isOpera = UA.matchUserAgent('Opera') || UA.matchUserAgent('OPR');

				/**
     * Whether the user's browser is IE.
     * @type {boolean}
     * @static
     */
				UA.isIe = UA.matchUserAgent('Trident') || UA.matchUserAgent('MSIE');

				/**
     * Whether the user's browser is Edge.
     * @type {boolean}
     * @static
     */
				UA.isEdge = UA.matchUserAgent('Edge');

				/**
     * Whether the user's browser is IE or Edge.
     * @type {boolean}
     * @static
     */
				UA.isIeOrEdge = UA.isIe || UA.isEdge;

				/**
     * Whether the user's browser is Chrome.
     * @type {boolean}
     * @static
     */
				UA.isChrome = (UA.matchUserAgent('Chrome') || UA.matchUserAgent('CriOS')) && !UA.isOpera && !UA.isEdge;

				/**
     * Whether the user's browser is Safari.
     * @type {boolean}
     * @static
     */
				UA.isSafari = UA.matchUserAgent('Safari') && !(UA.isChrome || UA.isOpera || UA.isEdge);

				/**
     * Whether the user's browser is Firefox.
     * @type {boolean}
     * @static
     */
				UA.isFirefox = UA.matchUserAgent('Firefox');
			}
		}]);

		return UA;
	}();

	/**
  * Exposes global references.
  * @type {object}
  * @static
  */
	UA.globals = {
		window: window
	};

	UA.testUserAgent(UA.getNativeUserAgent(), UA.getNativePlatform());

	exports.default = UA;
});
//# sourceMappingURL=UA.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/senna/src/screen/RequestScreen", ['exports', 'metal/src/metal', 'metal-ajax/src/Ajax', 'metal-structs/src/all/structs', 'metal-promise/src/promise/Promise', '../errors/errors', '../utils/utils', '../globals/globals', './Screen', 'metal-uri/src/Uri', 'metal-useragent/src/UA'], function (exports, _metal, _Ajax, _structs, _Promise, _errors, _utils, _globals, _Screen2, _Uri, _UA) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _Ajax2 = _interopRequireDefault(_Ajax);

	var _Promise2 = _interopRequireDefault(_Promise);

	var _errors2 = _interopRequireDefault(_errors);

	var _utils2 = _interopRequireDefault(_utils);

	var _globals2 = _interopRequireDefault(_globals);

	var _Screen3 = _interopRequireDefault(_Screen2);

	var _Uri2 = _interopRequireDefault(_Uri);

	var _UA2 = _interopRequireDefault(_UA);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	var RequestScreen = function (_Screen) {
		_inherits(RequestScreen, _Screen);

		/**
   * Request screen abstract class to perform io operations on descendant
   * screens.
   * @constructor
   * @extends {Screen}
   */
		function RequestScreen() {
			_classCallCheck(this, RequestScreen);

			var _this = _possibleConstructorReturn(this, (RequestScreen.__proto__ || Object.getPrototypeOf(RequestScreen)).call(this));

			/**
    * @inheritDoc
    * @default true
    */
			_this.cacheable = true;

			/**
    * Holds default http headers to set on request.
    * @type {?Object=}
    * @default {
    *   'X-PJAX': 'true',
    *   'X-Requested-With': 'XMLHttpRequest'
    * }
    * @protected
    */
			_this.httpHeaders = {
				'X-PJAX': 'true',
				'X-Requested-With': 'XMLHttpRequest'
			};

			/**
    * Holds default http method to perform the request.
    * @type {!string}
    * @default RequestScreen.GET
    * @protected
    */
			_this.httpMethod = RequestScreen.GET;

			/**
    * Holds the XHR object responsible for the request.
    * @type {XMLHttpRequest}
    * @default null
    * @protected
    */
			_this.request = null;

			/**
    * Holds the request timeout in milliseconds.
    * @type {!number}
    * @default 30000
    * @protected
    */
			_this.timeout = 30000;
			return _this;
		}

		/**
   * Asserts that response status code is valid.
   * @param {number} status
   * @protected
   */


		_createClass(RequestScreen, [{
			key: 'assertValidResponseStatusCode',
			value: function assertValidResponseStatusCode(status) {
				if (!this.isValidResponseStatusCode(status)) {
					var error = new Error(_errors2.default.INVALID_STATUS);
					error.invalidStatus = true;
					error.statusCode = status;
					throw error;
				}
			}
		}, {
			key: 'beforeUpdateHistoryPath',
			value: function beforeUpdateHistoryPath(path) {
				var redirectPath = this.getRequestPath();
				if (redirectPath && redirectPath !== path) {
					return redirectPath;
				}
				return path;
			}
		}, {
			key: 'beforeUpdateHistoryState',
			value: function beforeUpdateHistoryState(state) {
				// If state is ours and navigate to post-without-redirect-get set
				// history state to null, that way Senna will reload the page on
				// popstate since it cannot predict post data.
				if (state.senna && state.form && state.redirectPath === state.path) {
					return null;
				}
				return state;
			}
		}, {
			key: 'formatLoadPath',
			value: function formatLoadPath(path) {
				var uri = new _Uri2.default(path);

				uri.setHostname(_globals2.default.window.location.hostname);
				uri.setProtocol(_globals2.default.window.location.protocol);

				if (_globals2.default.window.location.port) {
					uri.setPort(_globals2.default.window.location.port);
				}

				if (_UA2.default.isIeOrEdge && this.httpMethod === RequestScreen.GET) {
					return uri.makeUnique().toString();
				}

				return uri.toString();
			}
		}, {
			key: 'getHttpHeaders',
			value: function getHttpHeaders() {
				return this.httpHeaders;
			}
		}, {
			key: 'getHttpMethod',
			value: function getHttpMethod() {
				return this.httpMethod;
			}
		}, {
			key: 'getRequestPath',
			value: function getRequestPath() {
				var request = this.getRequest();
				if (request) {
					var requestPath = request.requestPath;
					var responseUrl = this.maybeExtractResponseUrlFromRequest(request);
					if (responseUrl) {
						requestPath = responseUrl;
					}
					if (_UA2.default.isIeOrEdge && this.httpMethod === RequestScreen.GET) {
						requestPath = new _Uri2.default(requestPath).removeUnique().toString();
					}
					return _utils2.default.getUrlPath(requestPath);
				}
				return null;
			}
		}, {
			key: 'getRequest',
			value: function getRequest() {
				return this.request;
			}
		}, {
			key: 'getTimeout',
			value: function getTimeout() {
				return this.timeout;
			}
		}, {
			key: 'isValidResponseStatusCode',
			value: function isValidResponseStatusCode(statusCode) {
				return statusCode >= 200 && statusCode <= 399;
			}
		}, {
			key: 'load',
			value: function load(path) {
				var _this2 = this;

				var cache = this.getCache();
				if (_metal.core.isDefAndNotNull(cache)) {
					return _Promise2.default.resolve(cache);
				}
				var body = null;
				var httpMethod = this.httpMethod;
				var headers = new _structs.MultiMap();
				Object.keys(this.httpHeaders).forEach(function (header) {
					return headers.add(header, _this2.httpHeaders[header]);
				});
				if (_globals2.default.capturedFormElement) {
					body = new FormData(_globals2.default.capturedFormElement);
					this.maybeAppendSubmitButtonValue(body);
					httpMethod = RequestScreen.POST;
					if (_UA2.default.isIeOrEdge) {
						headers.add('If-None-Match', '"0"');
					}
				}
				var requestPath = this.formatLoadPath(path);
				return _Ajax2.default.request(requestPath, httpMethod, body, headers, null, this.timeout).then(function (xhr) {
					_this2.setRequest(xhr);
					_this2.assertValidResponseStatusCode(xhr.status);
					if (httpMethod === RequestScreen.GET && _this2.isCacheable()) {
						_this2.addCache(xhr.responseText);
					}
					xhr.requestPath = requestPath;
					return xhr.responseText;
				}).catch(function (reason) {
					switch (reason.message) {
						case _errors2.default.REQUEST_TIMEOUT:
							reason.timeout = true;
							break;
						case _errors2.default.REQUEST_ERROR:
							reason.requestError = true;
							break;
					}
					throw reason;
				});
			}
		}, {
			key: 'maybeAppendSubmitButtonValue',
			value: function maybeAppendSubmitButtonValue(body) {
				var button = _globals2.default.capturedFormButtonElement;
				if (button && button.name) {
					body.append(button.name, button.value);
				}
			}
		}, {
			key: 'maybeExtractResponseUrlFromRequest',
			value: function maybeExtractResponseUrlFromRequest(request) {
				var responseUrl = request.responseURL;
				if (responseUrl) {
					return responseUrl;
				}
				return request.getResponseHeader(RequestScreen.X_REQUEST_URL_HEADER);
			}
		}, {
			key: 'setHttpHeaders',
			value: function setHttpHeaders(httpHeaders) {
				this.httpHeaders = httpHeaders;
			}
		}, {
			key: 'setHttpMethod',
			value: function setHttpMethod(httpMethod) {
				this.httpMethod = httpMethod.toLowerCase();
			}
		}, {
			key: 'setRequest',
			value: function setRequest(request) {
				this.request = request;
			}
		}, {
			key: 'setTimeout',
			value: function setTimeout(timeout) {
				this.timeout = timeout;
			}
		}]);

		return RequestScreen;
	}(_Screen3.default);

	/**
  * Holds value for method get.
  * @type {string}
  * @default 'get'
  * @static
  */
	RequestScreen.GET = 'get';

	/**
  * Holds value for method post.
  * @type {string}
  * @default 'post'
  * @static
  */
	RequestScreen.POST = 'post';

	/**
  * Fallback http header to retrieve response request url.
  * @type {string}
  * @default 'X-Request-URL'
  * @static
  */
	RequestScreen.X_REQUEST_URL_HEADER = 'X-Request-URL';

	exports.default = RequestScreen;
});
//# sourceMappingURL=RequestScreen.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/senna/src/surface/Surface", ['exports', '../globals/globals', 'metal/src/metal', 'metal-dom/src/all/dom', 'metal-promise/src/promise/Promise'], function (exports, _globals, _metal, _dom, _Promise) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _globals2 = _interopRequireDefault(_globals);

	var _dom2 = _interopRequireDefault(_dom);

	var _Promise2 = _interopRequireDefault(_Promise);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	var Surface = function (_Disposable) {
		_inherits(Surface, _Disposable);

		/**
   * Surface class representing the references to elements on the page that
   * can potentially be updated by <code>App</code>.
   * @param {string} id
   * @constructor
   */
		function Surface(id) {
			_classCallCheck(this, Surface);

			var _this = _possibleConstructorReturn(this, (Surface.__proto__ || Object.getPrototypeOf(Surface)).call(this));

			if (!id) {
				throw new Error('Surface element id not specified. A surface element requires a valid id.');
			}

			/**
    * Holds the active child element.
    * @type {Element}
    * @default null
    * @protected
    */
			_this.activeChild = null;

			/**
    * Holds the default child element.
    * @type {Element}
    * @default null
    * @protected
    */
			_this.defaultChild = null;

			/**
    * Holds the element with the specified surface id, if not found creates a
    * new element with the specified id.
    * @type {Element}
    * @default null
    * @protected
    */
			_this.element = null;

			/**
    * Holds the surface id.
    * @type {String}
    * @default null
    * @protected
    */
			_this.id = id;

			/**
    * Holds the default transitionFn for the surfaces.
    * @param {?Element=} from The visible surface element.
    * @param {?Element=} to The surface element to be flipped.
    * @default null
    */
			_this.transitionFn = null;

			_this.defaultChild = _this.getChild(Surface.DEFAULT);
			_this.maybeWrapContentAsDefault_();
			_this.activeChild = _this.defaultChild;
			return _this;
		}

		/**
   * Adds screen content to a surface. If content hasn't been passed, see if
   * an element exists in the DOM that matches the id. By convention, the
   * element should already be nested in the right element and should have an
   * id that is a concatentation of the surface id + '-' + the screen id.
   * @param {!string} screenId The screen id the content belongs too.
   * @param {?string|Element=} opt_content The string content or element to
   *     add be added as surface content.
   * @return {Element}
   */


		_createClass(Surface, [{
			key: 'addContent',
			value: function addContent(screenId, opt_content) {
				var child = this.defaultChild;

				if (_metal.core.isDefAndNotNull(opt_content)) {
					child = this.getChild(screenId);
					if (child) {
						_dom2.default.removeChildren(child);
					} else {
						child = this.createChild(screenId);
						this.transition(child, null);
					}
					_dom2.default.append(child, opt_content);
				}

				var element = this.getElement();

				if (element && child) {
					_dom2.default.append(element, child);
				}

				return child;
			}
		}, {
			key: 'createChild',
			value: function createChild(screenId) {
				var child = _globals2.default.document.createElement('div');
				child.setAttribute('id', this.makeId_(screenId));
				return child;
			}
		}, {
			key: 'getChild',
			value: function getChild(screenId) {
				return _globals2.default.document.getElementById(this.makeId_(screenId));
			}
		}, {
			key: 'getElement',
			value: function getElement() {
				if (this.element) {
					return this.element;
				}
				this.element = _globals2.default.document.getElementById(this.id);
				return this.element;
			}
		}, {
			key: 'getId',
			value: function getId() {
				return this.id;
			}
		}, {
			key: 'getTransitionFn',
			value: function getTransitionFn() {
				return this.transitionFn;
			}
		}, {
			key: 'makeId_',
			value: function makeId_(screenId) {
				return this.id + '-' + screenId;
			}
		}, {
			key: 'maybeWrapContentAsDefault_',
			value: function maybeWrapContentAsDefault_() {
				var element = this.getElement();
				if (element && !this.defaultChild) {
					var fragment = _globals2.default.document.createDocumentFragment();
					while (element.firstChild) {
						fragment.appendChild(element.firstChild);
					}
					this.defaultChild = this.addContent(Surface.DEFAULT, fragment);
					this.transition(null, this.defaultChild);
				}
			}
		}, {
			key: 'setId',
			value: function setId(id) {
				this.id = id;
			}
		}, {
			key: 'setTransitionFn',
			value: function setTransitionFn(transitionFn) {
				this.transitionFn = transitionFn;
			}
		}, {
			key: 'show',
			value: function show(screenId) {
				var from = this.activeChild;
				var to = this.getChild(screenId);
				if (!to) {
					to = this.defaultChild;
				}
				this.activeChild = to;
				return this.transition(from, to).thenAlways(function () {
					if (from && from !== to) {
						_dom2.default.exitDocument(from);
					}
				});
			}
		}, {
			key: 'remove',
			value: function remove(screenId) {
				var child = this.getChild(screenId);
				if (child) {
					_dom2.default.exitDocument(child);
				}
			}
		}, {
			key: 'toString',
			value: function toString() {
				return this.id;
			}
		}, {
			key: 'transition',
			value: function transition(from, to) {
				var transitionFn = this.transitionFn || Surface.defaultTransition;
				return _Promise2.default.resolve(transitionFn.call(this, from, to));
			}
		}]);

		return Surface;
	}(_metal.Disposable);

	/**
    * Holds the default surface name. Elements on the page must contain a child
    * element containing the default content, this element must be as following:
    *
    * Example:
    * <code>
    *   <div id="mysurface">
    *     <div id="mysurface-default">Default surface content.</div>
    *   </div>
    * </code>
    *
    * The default content is relevant for the initial page content. When a
    * screen doesn't provide content for the surface the default content is
    * restored into the page.
    *
    * @type {!String}
    * @default default
    * @static
    */
	Surface.DEFAULT = 'default';

	/**
  * Holds the default transition for all surfaces. Each surface could have its
  * own transition.
  *
  * Example:
  *
  * <code>
  * surface.setTransitionFn(function(from, to) {
  *   if (from) {
  *     from.style.display = 'none';
  *     from.classList.remove('flipped');
  *   }
  *   if (to) {
  *     to.style.display = 'block';
  *     to.classList.add('flipped');
  *   }
  *   return null;
  * });
  * </code>
  *
  * @param {?Element=} from The visible surface element.
  * @param {?Element=} to The surface element to be flipped.
  * @static
  */
	Surface.defaultTransition = function (from, to) {
		if (from) {
			from.style.display = 'none';
			from.classList.remove('flipped');
		}
		if (to) {
			to.style.display = 'block';
			to.classList.add('flipped');
		}
	};

	exports.default = Surface;
});
//# sourceMappingURL=Surface.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/senna/src/screen/HtmlScreen", ['exports', 'metal/src/metal', 'metal-dom/src/all/dom', 'metal-promise/src/promise/Promise', '../globals/globals', './RequestScreen', '../surface/Surface', 'metal-useragent/src/UA', 'metal-uri/src/Uri', '../utils/utils'], function (exports, _metal, _dom, _Promise, _globals, _RequestScreen2, _Surface, _UA, _Uri, _utils) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _Promise2 = _interopRequireDefault(_Promise);

	var _globals2 = _interopRequireDefault(_globals);

	var _RequestScreen3 = _interopRequireDefault(_RequestScreen2);

	var _Surface2 = _interopRequireDefault(_Surface);

	var _UA2 = _interopRequireDefault(_UA);

	var _Uri2 = _interopRequireDefault(_Uri);

	var _utils2 = _interopRequireDefault(_utils);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	var _get = function get(object, property, receiver) {
		if (object === null) object = Function.prototype;
		var desc = Object.getOwnPropertyDescriptor(object, property);

		if (desc === undefined) {
			var parent = Object.getPrototypeOf(object);

			if (parent === null) {
				return undefined;
			} else {
				return get(parent, property, receiver);
			}
		} else if ("value" in desc) {
			return desc.value;
		} else {
			var getter = desc.get;

			if (getter === undefined) {
				return undefined;
			}

			return getter.call(receiver);
		}
	};

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	var HtmlScreen = function (_RequestScreen) {
		_inherits(HtmlScreen, _RequestScreen);

		/**
   * Screen class that perform a request and extracts surface contents from
   * the response content.
   * @constructor
   * @extends {RequestScreen}
   */
		function HtmlScreen() {
			_classCallCheck(this, HtmlScreen);

			var _this = _possibleConstructorReturn(this, (HtmlScreen.__proto__ || Object.getPrototypeOf(HtmlScreen)).call(this));

			/**
    * Holds the title selector. Relevant to extract the <code><title></code>
    * element from request fragments to use as the screen title.
    * @type {!string}
    * @default title
    * @protected
    */
			_this.titleSelector = 'title';
			return _this;
		}

		/**
   * @inheritDoc
   */


		_createClass(HtmlScreen, [{
			key: 'activate',
			value: function activate() {
				_get(HtmlScreen.prototype.__proto__ || Object.getPrototypeOf(HtmlScreen.prototype), 'activate', this).call(this);
				this.releaseVirtualDocument();
				this.pendingStyles = null;
			}
		}, {
			key: 'allocateVirtualDocumentForContent',
			value: function allocateVirtualDocumentForContent(htmlString) {
				if (!this.virtualDocument) {
					this.virtualDocument = _globals2.default.document.createElement('html');
				}

				this.copyNodeAttributesFromContent_(htmlString, this.virtualDocument);

				this.virtualDocument.innerHTML = htmlString;
			}
		}, {
			key: 'appendStyleIntoDocument_',
			value: function appendStyleIntoDocument_(newStyle) {
				var isTemporaryStyle = _dom.dom.match(newStyle, HtmlScreen.selectors.stylesTemporary);
				if (isTemporaryStyle) {
					this.pendingStyles.push(newStyle);
				}
				if (newStyle.id) {
					var styleInDoc = _globals2.default.document.getElementById(newStyle.id);
					if (styleInDoc) {
						styleInDoc.parentNode.insertBefore(newStyle, styleInDoc.nextSibling);
						return;
					}
				}
				_globals2.default.document.head.appendChild(newStyle);
			}
		}, {
			key: 'assertSameBodyIdInVirtualDocument',
			value: function assertSameBodyIdInVirtualDocument() {
				var bodySurface = this.virtualDocument.querySelector('body');
				if (!_globals2.default.document.body.id) {
					_globals2.default.document.body.id = 'senna_surface_' + _metal.core.getUid();
				}
				if (bodySurface) {
					bodySurface.id = _globals2.default.document.body.id;
				}
			}
		}, {
			key: 'copyNodeAttributesFromContent_',
			value: function copyNodeAttributesFromContent_(content, node) {
				content = content.replace(/[<]\s*html/ig, '<senna');
				content = content.replace(/\/html\s*\>/ig, '/senna>');
				node.innerHTML = content;
				var placeholder = node.querySelector('senna');
				if (placeholder) {
					_utils2.default.clearNodeAttributes(node);
					_utils2.default.copyNodeAttributes(placeholder, node);
				}
			}
		}, {
			key: 'disposeInternal',
			value: function disposeInternal() {
				this.disposePendingStyles();
				_get(HtmlScreen.prototype.__proto__ || Object.getPrototypeOf(HtmlScreen.prototype), 'disposeInternal', this).call(this);
			}
		}, {
			key: 'disposePendingStyles',
			value: function disposePendingStyles() {
				if (this.pendingStyles) {
					this.pendingStyles.forEach(function (style) {
						return _dom.dom.exitDocument(style);
					});
				}
			}
		}, {
			key: 'evaluateScripts',
			value: function evaluateScripts(surfaces) {
				var _this2 = this;

				var evaluateTrackedScripts = this.evaluateTrackedResources_(_dom.globalEval.runScriptsInElement, HtmlScreen.selectors.scripts, HtmlScreen.selectors.scriptsTemporary, HtmlScreen.selectors.scriptsPermanent);

				return evaluateTrackedScripts.then(function () {
					return _get(HtmlScreen.prototype.__proto__ || Object.getPrototypeOf(HtmlScreen.prototype), 'evaluateScripts', _this2).call(_this2, surfaces);
				});
			}
		}, {
			key: 'evaluateStyles',
			value: function evaluateStyles(surfaces) {
				var _this3 = this;

				this.pendingStyles = [];
				var evaluateTrackedStyles = this.evaluateTrackedResources_(_dom.globalEvalStyles.runStylesInElement, HtmlScreen.selectors.styles, HtmlScreen.selectors.stylesTemporary, HtmlScreen.selectors.stylesPermanent, this.appendStyleIntoDocument_.bind(this));

				return evaluateTrackedStyles.then(function () {
					return _get(HtmlScreen.prototype.__proto__ || Object.getPrototypeOf(HtmlScreen.prototype), 'evaluateStyles', _this3).call(_this3, surfaces);
				});
			}
		}, {
			key: 'evaluateTrackedResources_',
			value: function evaluateTrackedResources_(evaluatorFn, selector, selectorTemporary, selectorPermanent, opt_appendResourceFn) {
				var _this4 = this;

				var tracked = this.virtualQuerySelectorAll_(selector);
				var temporariesInDoc = this.querySelectorAll_(selectorTemporary);
				var permanentsInDoc = this.querySelectorAll_(selectorPermanent);

				// Adds permanent resources in document to cache.
				permanentsInDoc.forEach(function (resource) {
					var resourceKey = _this4.getResourceKey_(resource);
					if (resourceKey) {
						HtmlScreen.permanentResourcesInDoc[resourceKey] = true;
					}
				});

				var frag = _dom.dom.buildFragment();
				tracked.forEach(function (resource) {
					var resourceKey = _this4.getResourceKey_(resource);
					// Do not load permanent resources if already in document.
					if (!HtmlScreen.permanentResourcesInDoc[resourceKey]) {
						frag.appendChild(resource);
					}
					// If resource has key and is permanent add to cache.
					if (resourceKey && _dom.dom.match(resource, selectorPermanent)) {
						HtmlScreen.permanentResourcesInDoc[resourceKey] = true;
					}
				});

				return new _Promise2.default(function (resolve) {
					evaluatorFn(frag, function () {
						temporariesInDoc.forEach(function (resource) {
							return _dom.dom.exitDocument(resource);
						});
						resolve();
					}, opt_appendResourceFn);
				});
			}
		}, {
			key: 'flip',
			value: function flip(surfaces) {
				var _this5 = this;

				return _get(HtmlScreen.prototype.__proto__ || Object.getPrototypeOf(HtmlScreen.prototype), 'flip', this).call(this, surfaces).then(function () {
					_utils2.default.clearNodeAttributes(document.documentElement);
					_utils2.default.copyNodeAttributes(_this5.virtualDocument, document.documentElement);
				});
			}
		}, {
			key: 'getResourceKey_',
			value: function getResourceKey_(resource) {
				return resource.id || resource.href || resource.src || '';
			}
		}, {
			key: 'getSurfaceContent',
			value: function getSurfaceContent(surfaceId) {
				var surface = this.virtualDocument.querySelector('#' + surfaceId);
				if (surface) {
					var defaultChild = surface.querySelector('#' + surfaceId + '-' + _Surface2.default.DEFAULT);
					if (defaultChild) {
						return defaultChild.innerHTML;
					}
					return surface.innerHTML; // If default content not found, use surface content
				}
			}
		}, {
			key: 'getTitleSelector',
			value: function getTitleSelector() {
				return this.titleSelector;
			}
		}, {
			key: 'load',
			value: function load(path) {
				var _this6 = this;

				return _get(HtmlScreen.prototype.__proto__ || Object.getPrototypeOf(HtmlScreen.prototype), 'load', this).call(this, path).then(function (content) {
					_this6.allocateVirtualDocumentForContent(content);
					_this6.resolveTitleFromVirtualDocument();
					_this6.assertSameBodyIdInVirtualDocument();
					if (_UA2.default.isIe) {
						_this6.makeTemporaryStylesHrefsUnique_();
					}
					return content;
				});
			}
		}, {
			key: 'makeTemporaryStylesHrefsUnique_',
			value: function makeTemporaryStylesHrefsUnique_() {
				var _this7 = this;

				var temporariesInDoc = this.virtualQuerySelectorAll_(HtmlScreen.selectors.stylesTemporary);
				temporariesInDoc.forEach(function (style) {
					return _this7.replaceStyleAndMakeUnique_(style);
				});
			}
		}, {
			key: 'replaceStyleAndMakeUnique_',
			value: function replaceStyleAndMakeUnique_(style) {
				if (style.href) {
					var newStyle = _globals2.default.document.createElement(style.tagName);
					style.href = new _Uri2.default(style.href).makeUnique().toString();
					_utils2.default.copyNodeAttributes(style, newStyle);
					style.parentNode.replaceChild(newStyle, style);
					style.disabled = true;
				}
			}
		}, {
			key: 'virtualQuerySelectorAll_',
			value: function virtualQuerySelectorAll_(selector) {
				return Array.prototype.slice.call(this.virtualDocument.querySelectorAll(selector));
			}
		}, {
			key: 'querySelectorAll_',
			value: function querySelectorAll_(selector) {
				return Array.prototype.slice.call(_globals2.default.document.querySelectorAll(selector));
			}
		}, {
			key: 'releaseVirtualDocument',
			value: function releaseVirtualDocument() {
				this.virtualDocument = null;
			}
		}, {
			key: 'resolveTitleFromVirtualDocument',
			value: function resolveTitleFromVirtualDocument() {
				var title = this.virtualDocument.querySelector(this.titleSelector);
				if (title) {
					this.setTitle(title.textContent.trim());
				}
			}
		}, {
			key: 'setTitleSelector',
			value: function setTitleSelector(titleSelector) {
				this.titleSelector = titleSelector;
			}
		}]);

		return HtmlScreen;
	}(_RequestScreen3.default);

	/**
  * Helper selectors for tracking resources.
  * @type {object}
  * @protected
  * @static
  */
	HtmlScreen.selectors = {
		scripts: 'script[data-senna-track]',
		scriptsPermanent: 'script[data-senna-track="permanent"]',
		scriptsTemporary: 'script[data-senna-track="temporary"]',
		styles: 'style[data-senna-track],link[data-senna-track]',
		stylesPermanent: 'style[data-senna-track="permanent"],link[data-senna-track="permanent"]',
		stylesTemporary: 'style[data-senna-track="temporary"],link[data-senna-track="temporary"]'
	};

	/**
  * Caches permanent resource keys.
  * @type {object}
  * @protected
  * @static
  */
	HtmlScreen.permanentResourcesInDoc = {};

	exports.default = HtmlScreen;
});
//# sourceMappingURL=HtmlScreen.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/liferay/util/Utils.es", ['exports'], function (exports) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	var MAX_TIMEOUT = Math.pow(2, 31) - 1;

	var Utils = function () {
		function Utils() {
			_classCallCheck(this, Utils);
		}

		_createClass(Utils, null, [{
			key: 'getMaxTimeout',
			value: function getMaxTimeout() {
				return MAX_TIMEOUT;
			}
		}, {
			key: 'getPortletBoundaryId',
			value: function getPortletBoundaryId(portletId) {
				return 'p_p_id_' + portletId + '_';
			}
		}, {
			key: 'getPortletBoundaryIds',
			value: function getPortletBoundaryIds(portletIds) {
				return portletIds.map(function (portletId) {
					return Utils.getPortletBoundaryId(portletId);
				});
			}
		}, {
			key: 'resetAllPortlets',
			value: function resetAllPortlets() {
				Utils.getPortletBoundaryIds(Liferay.Portlet.list).forEach(function (value, index, collection) {
					var portlet = document.querySelector('#' + value);

					if (portlet) {
						Liferay.Portlet.destroy(portlet);

						portlet.portletProcessed = false;
					}
				});

				Liferay.Portlet.readyCounter = 0;
			}
		}]);

		return Utils;
	}();

	exports.default = Utils;
});
//# sourceMappingURL=Utils.es.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/liferay/screen/EventScreen.es", ['exports', 'senna/src/screen/HtmlScreen', 'senna/src/globals/globals', 'metal-promise/src/promise/Promise', '../util/Utils.es'], function (exports, _HtmlScreen2, _globals, _Promise, _Utils) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _HtmlScreen3 = _interopRequireDefault(_HtmlScreen2);

	var _globals2 = _interopRequireDefault(_globals);

	var _Utils2 = _interopRequireDefault(_Utils);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	var _get = function get(object, property, receiver) {
		if (object === null) object = Function.prototype;
		var desc = Object.getOwnPropertyDescriptor(object, property);

		if (desc === undefined) {
			var parent = Object.getPrototypeOf(object);

			if (parent === null) {
				return undefined;
			} else {
				return get(parent, property, receiver);
			}
		} else if ("value" in desc) {
			return desc.value;
		} else {
			var getter = desc.get;

			if (getter === undefined) {
				return undefined;
			}

			return getter.call(receiver);
		}
	};

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	var EventScreen = function (_HtmlScreen) {
		_inherits(EventScreen, _HtmlScreen);

		function EventScreen() {
			_classCallCheck(this, EventScreen);

			var _this = _possibleConstructorReturn(this, (EventScreen.__proto__ || Object.getPrototypeOf(EventScreen)).call(this));

			_this.cacheable = false;
			return _this;
		}

		_createClass(EventScreen, [{
			key: 'dispose',
			value: function dispose() {
				_get(EventScreen.prototype.__proto__ || Object.getPrototypeOf(EventScreen.prototype), 'dispose', this).call(this);

				Liferay.fire('screenDispose', {
					app: Liferay.SPA.app,
					screen: this
				});
			}
		}, {
			key: 'activate',
			value: function activate() {
				_get(EventScreen.prototype.__proto__ || Object.getPrototypeOf(EventScreen.prototype), 'activate', this).call(this);

				Liferay.fire('screenActivate', {
					app: Liferay.SPA.app,
					screen: this
				});
			}
		}, {
			key: 'addCache',
			value: function addCache(content) {
				_get(EventScreen.prototype.__proto__ || Object.getPrototypeOf(EventScreen.prototype), 'addCache', this).call(this, content);

				this.cacheLastModified = new Date().getTime();
			}
		}, {
			key: 'checkRedirectPath',
			value: function checkRedirectPath(redirectPath) {
				var app = Liferay.SPA.app;

				if (!_globals2.default.capturedFormElement && !app.findRoute(redirectPath)) {
					window.location.href = redirectPath;
				}
			}
		}, {
			key: 'deactivate',
			value: function deactivate() {
				_get(EventScreen.prototype.__proto__ || Object.getPrototypeOf(EventScreen.prototype), 'deactivate', this).call(this);

				Liferay.fire('screenDeactivate', {
					app: Liferay.SPA.app,
					screen: this
				});
			}
		}, {
			key: 'beforeScreenFlip',
			value: function beforeScreenFlip() {
				Liferay.fire('beforeScreenFlip', {
					app: Liferay.SPA.app,
					screen: this
				});
			}
		}, {
			key: 'copyBodyAttributes',
			value: function copyBodyAttributes() {
				var virtualBody = this.virtualDocument.querySelector('body');

				document.body.className = virtualBody.className;
				document.body.onload = virtualBody.onload;
			}
		}, {
			key: 'flip',
			value: function flip(surfaces) {
				var _this2 = this;

				this.copyBodyAttributes();

				return _Promise.CancellablePromise.resolve(_Utils2.default.resetAllPortlets()).then(_Promise.CancellablePromise.resolve(this.beforeScreenFlip())).then(_get(EventScreen.prototype.__proto__ || Object.getPrototypeOf(EventScreen.prototype), 'flip', this).call(this, surfaces)).then(function () {
					_this2.runBodyOnLoad();

					Liferay.fire('screenFlip', {
						app: Liferay.SPA.app,
						screen: _this2
					});
				});
			}
		}, {
			key: 'getCache',
			value: function getCache() {
				var app = Liferay.SPA.app;

				if (app.isCacheEnabled() && !app.isScreenCacheExpired(this)) {
					return _get(EventScreen.prototype.__proto__ || Object.getPrototypeOf(EventScreen.prototype), 'getCache', this).call(this);
				}

				return null;
			}
		}, {
			key: 'getCacheLastModified',
			value: function getCacheLastModified() {
				return this.cacheLastModified;
			}
		}, {
			key: 'isValidResponseStatusCode',
			value: function isValidResponseStatusCode(statusCode) {
				var validStatusCodes = Liferay.SPA.app.getValidStatusCodes();

				return statusCode >= 200 && statusCode <= 500 || validStatusCodes.indexOf(statusCode) > -1;
			}
		}, {
			key: 'load',
			value: function load(path) {
				var _this3 = this;

				return _get(EventScreen.prototype.__proto__ || Object.getPrototypeOf(EventScreen.prototype), 'load', this).call(this, path).then(function (content) {
					var redirectPath = _this3.beforeUpdateHistoryPath(path);

					_this3.checkRedirectPath(redirectPath);

					Liferay.fire('screenLoad', {
						app: Liferay.SPA.app,
						content: content,
						screen: _this3
					});

					return content;
				});
			}
		}, {
			key: 'runBodyOnLoad',
			value: function runBodyOnLoad() {
				var onLoad = document.body.onload;

				if (onLoad) {
					onLoad();
				}
			}
		}]);

		return EventScreen;
	}(_HtmlScreen3.default);

	exports.default = EventScreen;
});
//# sourceMappingURL=EventScreen.es.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/liferay/screen/ActionURLScreen.es", ['exports', './EventScreen.es', 'metal-uri/src/Uri', 'senna/src/utils/utils'], function (exports, _EventScreen2, _Uri, _utils) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _EventScreen3 = _interopRequireDefault(_EventScreen2);

	var _Uri2 = _interopRequireDefault(_Uri);

	var _utils2 = _interopRequireDefault(_utils);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	var _get = function get(object, property, receiver) {
		if (object === null) object = Function.prototype;
		var desc = Object.getOwnPropertyDescriptor(object, property);

		if (desc === undefined) {
			var parent = Object.getPrototypeOf(object);

			if (parent === null) {
				return undefined;
			} else {
				return get(parent, property, receiver);
			}
		} else if ("value" in desc) {
			return desc.value;
		} else {
			var getter = desc.get;

			if (getter === undefined) {
				return undefined;
			}

			return getter.call(receiver);
		}
	};

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	var ActionURLScreen = function (_EventScreen) {
		_inherits(ActionURLScreen, _EventScreen);

		function ActionURLScreen() {
			_classCallCheck(this, ActionURLScreen);

			var _this = _possibleConstructorReturn(this, (ActionURLScreen.__proto__ || Object.getPrototypeOf(ActionURLScreen)).call(this));

			_this.httpMethod = 'POST';
			return _this;
		}

		_createClass(ActionURLScreen, [{
			key: 'getRequestPath',
			value: function getRequestPath() {
				var request = this.getRequest();

				if (request) {
					var uri = new _Uri2.default(_get(ActionURLScreen.prototype.__proto__ || Object.getPrototypeOf(ActionURLScreen.prototype), 'getRequestPath', this).call(this));

					if (uri.getParameterValue('p_p_lifecycle') === '1') {
						uri.setParameterValue('p_p_lifecycle', '0');
					}

					return _utils2.default.getUrlPath(uri.toString());
				}

				return null;
			}
		}]);

		return ActionURLScreen;
	}(_EventScreen3.default);

	exports.default = ActionURLScreen;
});
//# sourceMappingURL=ActionURLScreen.es.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-debounce/src/debounce", ['exports'], function (exports) {
	'use strict';

	/**
   * Debounces function execution.
   * @param {!function()} fn
   * @param {number} delay
   * @return {!function()}
   */

	Object.defineProperty(exports, "__esModule", {
		value: true
	});
	function debounce(fn, delay) {
		return function debounced() {
			var args = arguments;
			cancelDebounce(debounced);
			debounced.id = setTimeout(function () {
				fn.apply(null, args);
			}, delay);
		};
	}

	/**
  * Cancels the scheduled debounced function.
  */
	function cancelDebounce(debounced) {
		clearTimeout(debounced.id);
	}

	exports.default = debounce;
	exports.cancelDebounce = cancelDebounce;
	exports.debounce = debounce;
});
//# sourceMappingURL=debounce.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-path-parser/src/pathParser", ['exports', 'metal/src/metal'], function (exports, _metal) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});
	exports.parse = parse;
	exports.toRegex = toRegex;
	exports.extractData = extractData;

	var _metal2 = _interopRequireDefault(_metal);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	var REGEX = /([\/])?(?:(?:\:(\w+)(?:\(((?:\\.|[^\\()])*)\))?|\(((?:\\.|[^\\()])+)\))([+*?])?)/g;

	/**
  * Converts the given array of regex matches to a more readable object format.
  * @param {!Array<string>} matches
  * @return {!Object}
  */
	function convertMatchesToObj(matches) {
		return {
			match: matches[0],
			prefix: matches[1],
			name: matches[2],
			paramPattern: matches[3],
			unnamedPattern: matches[4],
			modifier: matches[5]
		};
	}

	/**
  * Converts the given tokens parsed from a route format string to a regex.
  * @param {!Array<string|!Object>} tokens
  * @return {!RegExp}
  */
	function convertTokensToRegex(tokens) {
		var regex = '';
		for (var i = 0; i < tokens.length; i++) {
			if (_metal2.default.isString(tokens[i])) {
				regex += escape(tokens[i]);
			} else {
				var capture = encloseNonCapturingGroup(tokens[i].pattern);
				if (tokens[i].repeat) {
					capture += encloseNonCapturingGroup('\\/' + capture) + '*';
				}
				capture = escape(tokens[i].prefix) + ('(' + capture + ')');
				if (tokens[i].optional) {
					if (!tokens[i].partial) {
						capture = encloseNonCapturingGroup(capture);
					}
					capture += '?';
				}
				regex += capture;
			}
		}
		return new RegExp('^' + makeTrailingSlashOptional(regex) + '$');
	}

	/**
  * Encloses the given regex pattern into a non capturing group.
  * @param {string} pattern
  * @return {string}
  */
	function encloseNonCapturingGroup(pattern) {
		return '(?:' + pattern + ')';
	}

	/**
  * Escapes the given string to show up in the path regex.
  * @param {string} str
  * @return {string}
  */
	function escape(str) {
		return str.replace(/([.+*?=^!:${}()[\]|\/\\])/g, '\\$1');
	}

	/**
  * Makes trailing slash optional on paths.
  * @param {string} regex
  * @param {string}
  */
	function makeTrailingSlashOptional(regex) {
		if (/\/$/.test(regex)) {
			regex += '?';
		} else {
			regex += '\\/?';
		}
		return regex;
	}

	/**
  * Parses the given route format string into tokens representing its contents.
  * @param {!Array|string} routeOrTokens Either a route format string or tokens
  *     previously parsed via the `parse` function.
  * @return {!Array<string|!Object>} An array of tokens that can be either plain
  *     strings (part of the route) or objects containing informations on params.
  */
	function parse(routeOrTokens) {
		if (!_metal2.default.isString(routeOrTokens)) {
			return routeOrTokens;
		}

		var route = routeOrTokens;
		var unnamedCount = 0;
		var tokens = [];
		var currPath = '';
		var index = 0;

		var matches = REGEX.exec(route);
		while (matches) {
			var data = convertMatchesToObj(matches);

			currPath = route.slice(index, matches.index);
			index = matches.index + data.match.length;
			tokens.push(currPath);

			tokens.push({
				name: data.name ? data.name : '' + unnamedCount++,
				partial: route[index] && route[index] !== data.prefix,
				prefix: data.prefix || '',
				pattern: data.paramPattern || data.unnamedPattern || '[^\\/]+',
				repeat: data.modifier === '*' || data.modifier === '+',
				optional: data.modifier === '*' || data.modifier === '?'
			});

			matches = REGEX.exec(route);
		}

		if (index < route.length) {
			tokens.push(route.substr(index));
		}
		return tokens;
	}

	/**
  * Converts the given route format string to a regex that can extract param
  * data from paths matching it.
  * @param {!Array|string} routeOrTokens Either a route format string or tokens
  *     previously parsed via the `parse` function.
  * @return {!RegExp}
  */
	function toRegex(routeOrTokens) {
		return convertTokensToRegex(parse(routeOrTokens));
	}

	/**
  * Extracts data from the given path according to the specified route format.
  * @param {!Array|string} routeOrTokens Either a route format string or tokens
  *     previously parsed via the `parse` function.
  * @param {string} The path to extract param data from.
  * @return {Object<string, string>} The data object, or null if the path doesn't
  *     match the given format.
  */
	function extractData(routeOrTokens, path) {
		var data = {};
		var tokens = parse(routeOrTokens);
		var match = path.match(convertTokensToRegex(tokens));

		if (!match) {
			return null;
		}

		var paramIndex = 1;
		for (var i = 0; i < tokens.length; i++) {
			if (!_metal2.default.isString(tokens[i])) {
				var value = match[paramIndex++];
				if (_metal2.default.isDef(value)) {
					if (tokens[i].repeat) {
						value = value.split('/');
					}
					data[tokens[i].name] = value;
				}
			}
		}
		return data;
	}
});
//# sourceMappingURL=pathParser.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/senna/src/route/Route", ['exports', 'metal/src/metal', 'metal-path-parser/src/pathParser'], function (exports, _metal, _pathParser) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	var Route = function () {

		/**
   * Route class.
   * @param {!string|RegExp|Function} path
   * @param {!Function} handler
   * @constructor
   */
		function Route(path, handler) {
			_classCallCheck(this, Route);

			if (!_metal.core.isDefAndNotNull(path)) {
				throw new Error('Route path not specified.');
			}
			if (!_metal.core.isFunction(handler)) {
				throw new Error('Route handler is not a function.');
			}

			/**
    * Defines the handler which will execute once a URL in the application
    * matches the path.
    * @type {!Function}
    * @protected
    */
			this.handler = handler;

			/**
    * Defines the path which will trigger the route handler.
    * @type {!string|RegExp|Function}
    * @protected
    */
			this.path = path;
		}

		/**
  * Builds parsed data (regex and tokens) for this route.
  * @return {!Object}
  * @protected
  */


		_createClass(Route, [{
			key: 'buildParsedData_',
			value: function buildParsedData_() {
				if (!this.parsedData_) {
					var tokens = (0, _pathParser.parse)(this.path);
					var regex = (0, _pathParser.toRegex)(tokens);
					this.parsedData_ = {
						regex: regex,
						tokens: tokens
					};
				}
				return this.parsedData_;
			}
		}, {
			key: 'extractParams',
			value: function extractParams(path) {
				if (_metal.core.isString(this.path)) {
					return (0, _pathParser.extractData)(this.buildParsedData_().tokens, path);
				}
				return {};
			}
		}, {
			key: 'getHandler',
			value: function getHandler() {
				return this.handler;
			}
		}, {
			key: 'getPath',
			value: function getPath() {
				return this.path;
			}
		}, {
			key: 'matchesPath',
			value: function matchesPath(value) {
				var path = this.path;

				if (_metal.core.isFunction(path)) {
					return path(value);
				}
				if (_metal.core.isString(path)) {
					path = this.buildParsedData_().regex;
				}
				if (path instanceof RegExp) {
					return value.search(path) > -1;
				}

				return false;
			}
		}]);

		return Route;
	}();

	exports.default = Route;
});
//# sourceMappingURL=Route.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/senna/src/app/App", ['exports', 'metal/src/metal', 'metal-debounce/src/debounce', 'metal-dom/src/all/dom', 'metal-promise/src/promise/Promise', 'metal-events/src/events', '../utils/utils', '../globals/globals', '../route/Route', '../screen/Screen', '../surface/Surface', 'metal-uri/src/Uri'], function (exports, _metal, _debounce, _dom, _Promise, _events, _utils, _globals, _Route, _Screen, _Surface, _Uri) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _debounce2 = _interopRequireDefault(_debounce);

	var _dom2 = _interopRequireDefault(_dom);

	var _Promise2 = _interopRequireDefault(_Promise);

	var _utils2 = _interopRequireDefault(_utils);

	var _globals2 = _interopRequireDefault(_globals);

	var _Route2 = _interopRequireDefault(_Route);

	var _Screen2 = _interopRequireDefault(_Screen);

	var _Surface2 = _interopRequireDefault(_Surface);

	var _Uri2 = _interopRequireDefault(_Uri);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	var _get = function get(object, property, receiver) {
		if (object === null) object = Function.prototype;
		var desc = Object.getOwnPropertyDescriptor(object, property);

		if (desc === undefined) {
			var parent = Object.getPrototypeOf(object);

			if (parent === null) {
				return undefined;
			} else {
				return get(parent, property, receiver);
			}
		} else if ("value" in desc) {
			return desc.value;
		} else {
			var getter = desc.get;

			if (getter === undefined) {
				return undefined;
			}

			return getter.call(receiver);
		}
	};

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	var App = function (_EventEmitter) {
		_inherits(App, _EventEmitter);

		/**
   * App class that handle routes and screens lifecycle.
   * @constructor
   * @extends {EventEmitter}
   */
		function App() {
			_classCallCheck(this, App);

			var _this = _possibleConstructorReturn(this, (App.__proto__ || Object.getPrototypeOf(App)).call(this));

			/**
    * Holds the active screen.
    * @type {?Screen}
    * @protected
    */
			_this.activeScreen = null;

			/**
    * Holds the active path containing the query parameters.
    * @type {?string}
    * @protected
    */
			_this.activePath = null;

			/**
    * Allows prevent navigate from dom prevented event.
    * @type {boolean}
    * @default true
    * @protected
    */
			_this.allowPreventNavigate = true;

			/**
    * Holds link base path.
    * @type {!string}
    * @default ''
    * @protected
    */
			_this.basePath = '';

			/**
    * Holds the value of the browser path before a navigation is performed.
    * @type {!string}
    * @default the current browser path.
    * @protected
    */
			_this.browserPathBeforeNavigate = _utils2.default.getCurrentBrowserPathWithoutHash();

			/**
    * Captures scroll position from scroll event.
    * @type {!boolean}
    * @default true
    * @protected
    */
			_this.captureScrollPositionFromScrollEvent = true;

			/**
    * Holds the default page title.
    * @type {string}
    * @default null
    * @protected
    */
			_this.defaultTitle = _globals2.default.document.title;

			/**
    * Holds the form selector to define forms that are routed.
    * @type {!string}
    * @default form[enctype="multipart/form-data"]:not([data-senna-off])
    * @protected
    */
			_this.formSelector = 'form[enctype="multipart/form-data"]:not([data-senna-off])';

			/**
    * When enabled, the route matching ignores query string from the path.
    * @type {boolean}
    * @default false
    * @protected
    */
			_this.ignoreQueryStringFromRoutePath = false;

			/**
    * Holds the link selector to define links that are routed.
    * @type {!string}
    * @default a:not([data-senna-off])
    * @protected
    */
			_this.linkSelector = 'a:not([data-senna-off])';

			/**
    * Holds the loading css class.
    * @type {!string}
    * @default senna-loading
    * @protected
    */
			_this.loadingCssClass = 'senna-loading';

			/**
    * Using the History API to manage your URLs is awesome and, as it happens,
    * a crucial feature of good web apps. One of its downsides, however, is
    * that scroll positions are stored and then, more importantly, restored
    * whenever you traverse the history. This often means unsightly jumps as
    * the scroll position changes automatically, and especially so if your app
    * does transitions, or changes the contents of the page in any way.
    * Ultimately this leads to an horrible user experience. The good news is,
    * however, that there’s a potential fix: history.scrollRestoration.
    * https://developers.google.com/web/updates/2015/09/history-api-scroll-restoration
    * @type {boolean}
    * @protected
    */
			_this.nativeScrollRestorationSupported = 'scrollRestoration' in _globals2.default.window.history;

			/**
    * When set to true there is a pendingNavigate that has not yet been
    * resolved or rejected.
    * @type {boolean}
    * @default false
    * @protected
    */
			_this.isNavigationPending = false;

			/**
    * Holds a deferred with the current navigation.
    * @type {?CancellablePromise}
    * @default null
    * @protected
    */
			_this.pendingNavigate = null;

			/**
    * Holds the window horizontal scroll position when the navigation using
    * back or forward happens to be restored after the surfaces are updated.
    * @type {!Number}
    * @default 0
    * @protected
    */
			_this.popstateScrollLeft = 0;

			/**
    * Holds the window vertical scroll position when the navigation using
    * back or forward happens to be restored after the surfaces are updated.
    * @type {!Number}
    * @default 0
    * @protected
    */
			_this.popstateScrollTop = 0;

			/**
    * Holds the redirect path containing the query parameters.
    * @type {?string}
    * @protected
    */
			_this.redirectPath = null;

			/**
    * Holds the screen routes configuration.
    * @type {?Array}
    * @default []
    * @protected
    */
			_this.routes = [];

			/**
    * Maps the screen instances by the url containing the parameters.
    * @type {?Object}
    * @default {}
    * @protected
    */
			_this.screens = {};

			/**
    * When set to true the first erroneous popstate fired on page load will be
    * ignored, only if <code>globals.window.history.state</code> is also
    * <code>null</code>.
    * @type {boolean}
    * @default false
    * @protected
    */
			_this.skipLoadPopstate = false;

			/**
    * Maps that index the surfaces instances by the surface id.
    * @type {?Object}
    * @default {}
    * @protected
    */
			_this.surfaces = {};

			/**
    * When set to true, moves the scroll position after popstate, or to the
    * top of the viewport for new navigation. If false, the browser will
    * take care of scroll restoration.
    * @type {!boolean}
    * @default true
    * @protected
    */
			_this.updateScrollPosition = true;

			_this.appEventHandlers_ = new _events.EventHandler();

			_this.appEventHandlers_.add(_dom2.default.on(_globals2.default.window, 'scroll', (0, _debounce2.default)(_this.onScroll_.bind(_this), 100)), _dom2.default.on(_globals2.default.window, 'load', _this.onLoad_.bind(_this)), _dom2.default.on(_globals2.default.window, 'popstate', _this.onPopstate_.bind(_this)));

			_this.on('startNavigate', _this.onStartNavigate_);
			_this.on('beforeNavigate', _this.onBeforeNavigate_);
			_this.on('beforeNavigate', _this.onBeforeNavigateDefault_, true);

			_this.setLinkSelector(_this.linkSelector);
			_this.setFormSelector(_this.formSelector);
			return _this;
		}

		/**
   * Adds one or more screens to the application.
   *
   * Example:
   *
   * <code>
   *   app.addRoutes({ path: '/foo', handler: FooScreen });
   *   or
   *   app.addRoutes([{ path: '/foo', handler: function(route) { return new FooScreen(); } }]);
   * </code>
   *
   * @param {Object} or {Array} routes Single object or an array of object.
   *     Each object should contain <code>path</code> and <code>screen</code>.
   *     The <code>path</code> should be a string or a regex that maps the
   *     navigation route to a screen class definition (not an instance), e.g:
   *         <code>{ path: "/home:param1", handler: MyScreen }</code>
   *         <code>{ path: /foo.+/, handler: MyScreen }</code>
   * @chainable
   */


		_createClass(App, [{
			key: 'addRoutes',
			value: function addRoutes(routes) {
				var _this2 = this;

				if (!Array.isArray(routes)) {
					routes = [routes];
				}
				routes.forEach(function (route) {
					if (!(route instanceof _Route2.default)) {
						route = new _Route2.default(route.path, route.handler);
					}
					_this2.routes.push(route);
				});
				return this;
			}
		}, {
			key: 'addSurfaces',
			value: function addSurfaces(surfaces) {
				var _this3 = this;

				if (!Array.isArray(surfaces)) {
					surfaces = [surfaces];
				}
				surfaces.forEach(function (surface) {
					if (_metal.core.isString(surface)) {
						surface = new _Surface2.default(surface);
					}
					_this3.surfaces[surface.getId()] = surface;
				});
				return this;
			}
		}, {
			key: 'canNavigate',
			value: function canNavigate(url) {
				var path = _utils2.default.getUrlPath(url);
				var uri = new _Uri2.default(url);

				if (!this.isLinkSameOrigin_(uri.getHostname())) {
					void 0;
					return false;
				}
				if (!this.isSameBasePath_(path)) {
					void 0;
					return false;
				}
				// Prevents navigation if it's a hash change on the same url.
				if (uri.getHash() && _utils2.default.isCurrentBrowserPath(path)) {
					return false;
				}
				if (!this.findRoute(path)) {
					void 0;
					return false;
				}

				return true;
			}
		}, {
			key: 'clearScreensCache',
			value: function clearScreensCache() {
				var _this4 = this;

				Object.keys(this.screens).forEach(function (path) {
					if (path === _this4.activePath) {
						_this4.activeScreen.clearCache();
					} else {
						_this4.removeScreen(path);
					}
				});
			}
		}, {
			key: 'createScreenInstance',
			value: function createScreenInstance(path, route) {
				if (!this.pendingNavigate && path === this.activePath) {
					void 0;
					return this.activeScreen;
				}
				/* jshint newcap: false */
				var screen = this.screens[path];
				if (!screen) {
					var handler = route.getHandler();
					if (handler === _Screen2.default || _Screen2.default.isImplementedBy(handler.prototype)) {
						screen = new handler();
					} else {
						screen = handler(route) || new _Screen2.default();
					}
					void 0;
				}
				return screen;
			}
		}, {
			key: 'disposeInternal',
			value: function disposeInternal() {
				if (this.activeScreen) {
					this.removeScreen(this.activePath);
				}
				this.clearScreensCache();
				this.formEventHandler_.removeListener();
				this.linkEventHandler_.removeListener();
				this.appEventHandlers_.removeAllListeners();
				_get(App.prototype.__proto__ || Object.getPrototypeOf(App.prototype), 'disposeInternal', this).call(this);
			}
		}, {
			key: 'dispatch',
			value: function dispatch() {
				return this.navigate(_utils2.default.getCurrentBrowserPath(), true);
			}
		}, {
			key: 'doNavigate_',
			value: function doNavigate_(path, opt_replaceHistory) {
				var _this5 = this;

				if (this.activeScreen && this.activeScreen.beforeDeactivate()) {
					this.pendingNavigate = _Promise2.default.reject(new _Promise2.default.CancellationError('Cancelled by active screen'));
					return this.pendingNavigate;
				}

				var route = this.findRoute(path);
				if (!route) {
					this.pendingNavigate = _Promise2.default.reject(new _Promise2.default.CancellationError('No route for ' + path));
					return this.pendingNavigate;
				}

				void 0;

				this.stopPendingNavigate_();
				this.isNavigationPending = true;

				var nextScreen = this.createScreenInstance(path, route);

				return nextScreen.load(path).then(function () {
					if (_this5.activeScreen) {
						_this5.activeScreen.deactivate();
					}
					_this5.prepareNavigateHistory_(path, nextScreen, opt_replaceHistory);
					_this5.prepareNavigateSurfaces_(nextScreen, _this5.surfaces, _this5.extractParams(route, path));
				}).then(function () {
					return nextScreen.evaluateStyles(_this5.surfaces);
				}).then(function () {
					return nextScreen.flip(_this5.surfaces);
				}).then(function () {
					return nextScreen.evaluateScripts(_this5.surfaces);
				}).then(function () {
					return _this5.maybeUpdateScrollPositionState_();
				}).then(function () {
					return _this5.syncScrollPositionSyncThenAsync_();
				}).then(function () {
					return _this5.finalizeNavigate_(path, nextScreen);
				}).catch(function (reason) {
					_this5.isNavigationPending = false;
					_this5.handleNavigateError_(path, nextScreen, reason);
					throw reason;
				});
			}
		}, {
			key: 'extractParams',
			value: function extractParams(route, path) {
				return route.extractParams(this.getRoutePath(path));
			}
		}, {
			key: 'finalizeNavigate_',
			value: function finalizeNavigate_(path, nextScreen) {
				nextScreen.activate();

				if (this.activeScreen && !this.activeScreen.isCacheable()) {
					if (this.activeScreen !== nextScreen) {
						this.removeScreen(this.activePath);
					}
				}

				this.activePath = path;
				this.activeScreen = nextScreen;
				this.browserPathBeforeNavigate = _utils2.default.getCurrentBrowserPathWithoutHash();
				this.screens[path] = nextScreen;
				this.isNavigationPending = false;
				this.pendingNavigate = null;
				_globals2.default.capturedFormElement = null;
				_globals2.default.capturedFormButtonElement = null;
				void 0;
			}
		}, {
			key: 'findRoute',
			value: function findRoute(path) {
				path = this.getRoutePath(path);
				for (var i = 0; i < this.routes.length; i++) {
					var route = this.routes[i];
					if (route.matchesPath(path)) {
						return route;
					}
				}

				return null;
			}
		}, {
			key: 'getAllowPreventNavigate',
			value: function getAllowPreventNavigate() {
				return this.allowPreventNavigate;
			}
		}, {
			key: 'getBasePath',
			value: function getBasePath() {
				return this.basePath;
			}
		}, {
			key: 'getDefaultTitle',
			value: function getDefaultTitle() {
				return this.defaultTitle;
			}
		}, {
			key: 'getFormSelector',
			value: function getFormSelector() {
				return this.formSelector;
			}
		}, {
			key: 'getIgnoreQueryStringFromRoutePath',
			value: function getIgnoreQueryStringFromRoutePath() {
				return this.ignoreQueryStringFromRoutePath;
			}
		}, {
			key: 'getLinkSelector',
			value: function getLinkSelector() {
				return this.linkSelector;
			}
		}, {
			key: 'getLoadingCssClass',
			value: function getLoadingCssClass() {
				return this.loadingCssClass;
			}
		}, {
			key: 'getRoutePath',
			value: function getRoutePath(path) {
				if (this.getIgnoreQueryStringFromRoutePath()) {
					path = _utils2.default.getUrlPathWithoutHashAndSearch(path);
					return _utils2.default.getUrlPathWithoutHashAndSearch(path.substr(this.basePath.length));
				}

				path = _utils2.default.getUrlPathWithoutHash(path);
				return _utils2.default.getUrlPathWithoutHash(path.substr(this.basePath.length));
			}
		}, {
			key: 'getUpdateScrollPosition',
			value: function getUpdateScrollPosition() {
				return this.updateScrollPosition;
			}
		}, {
			key: 'handleNavigateError_',
			value: function handleNavigateError_(path, nextScreen, err) {
				var _this6 = this;

				void 0;
				if (!_utils2.default.isCurrentBrowserPath(path)) {
					if (this.isNavigationPending && this.pendingNavigate) {
						this.pendingNavigate.thenAlways(function () {
							return _this6.removeScreen(path);
						}, this);
					} else {
						this.removeScreen(path);
					}
				}
			}
		}, {
			key: 'hasRoutes',
			value: function hasRoutes() {
				return this.routes.length > 0;
			}
		}, {
			key: 'isLinkSameOrigin_',
			value: function isLinkSameOrigin_(hostname) {
				return hostname === _globals2.default.window.location.hostname;
			}
		}, {
			key: 'isSameBasePath_',
			value: function isSameBasePath_(path) {
				return path.indexOf(this.basePath) === 0;
			}
		}, {
			key: 'lockHistoryScrollPosition_',
			value: function lockHistoryScrollPosition_() {
				var state = _globals2.default.window.history.state;
				if (!state) {
					return;
				}
				// Browsers are inconsistent when re-positioning the scroll history on
				// popstate. At some browsers, history scroll happens before popstate, then
				// lock the scroll on the last known position as soon as possible after the
				// current JS execution context and capture the current value. Some others,
				// history scroll happens after popstate, in this case, we bind an once
				// scroll event to lock the las known position. Lastly, the previous two
				// behaviors can happen even on the same browser, hence the race will decide
				// the winner.
				var winner = false;
				var switchScrollPositionRace = function switchScrollPositionRace() {
					_globals2.default.document.removeEventListener('scroll', switchScrollPositionRace, false);
					if (!winner) {
						_globals2.default.window.scrollTo(state.scrollLeft, state.scrollTop);
						winner = true;
					}
				};
				_metal.async.nextTick(switchScrollPositionRace);
				_globals2.default.document.addEventListener('scroll', switchScrollPositionRace, false);
			}
		}, {
			key: 'maybeDisableNativeScrollRestoration',
			value: function maybeDisableNativeScrollRestoration() {
				if (this.nativeScrollRestorationSupported) {
					this.nativeScrollRestoration_ = _globals2.default.window.history.scrollRestoration;
					_globals2.default.window.history.scrollRestoration = 'manual';
				}
			}
		}, {
			key: 'maybeNavigate_',
			value: function maybeNavigate_(href, event) {
				if (!this.canNavigate(href)) {
					return;
				}

				_globals2.default.capturedFormElement = event.capturedFormElement;
				_globals2.default.capturedFormButtonElement = event.capturedFormButtonElement;

				var navigateFailed = false;
				try {
					this.navigate(_utils2.default.getUrlPath(href), false, event);
				} catch (err) {
					// Do not prevent link navigation in case some synchronous error occurs
					navigateFailed = true;
				}

				if (!navigateFailed) {
					event.preventDefault();
				}
			}
		}, {
			key: 'maybeRepositionScrollToHashedAnchor',
			value: function maybeRepositionScrollToHashedAnchor() {
				var hash = _globals2.default.window.location.hash;
				if (hash) {
					var anchorElement = _globals2.default.document.getElementById(hash.substring(1));
					if (anchorElement) {
						_globals2.default.window.scrollTo(anchorElement.offsetLeft, anchorElement.offsetTop);
					}
				}
			}
		}, {
			key: 'maybeRestoreNativeScrollRestoration',
			value: function maybeRestoreNativeScrollRestoration() {
				if (this.nativeScrollRestorationSupported && this.nativeScrollRestoration_) {
					_globals2.default.window.history.scrollRestoration = this.nativeScrollRestoration_;
				}
			}
		}, {
			key: 'maybeRestoreRedirectPathHash_',
			value: function maybeRestoreRedirectPathHash_(path, redirectPath, hash) {
				if (redirectPath === _utils2.default.getUrlPathWithoutHash(path)) {
					return redirectPath + hash;
				}
				return redirectPath;
			}
		}, {
			key: 'maybeUpdateScrollPositionState_',
			value: function maybeUpdateScrollPositionState_() {
				var hash = _globals2.default.window.location.hash;
				var anchorElement = _globals2.default.document.getElementById(hash.substring(1));
				if (anchorElement) {
					this.saveHistoryCurrentPageScrollPosition_(anchorElement.offsetTop, anchorElement.offsetLeft);
				}
			}
		}, {
			key: 'navigate',
			value: function navigate(path, opt_replaceHistory, opt_event) {
				if (!_utils2.default.isHtml5HistorySupported()) {
					throw new Error('HTML5 History is not supported. Senna will not intercept navigation.');
				}

				// When reloading the same path do replaceState instead of pushState to
				// avoid polluting history with states with the same path.
				if (path === this.activePath) {
					opt_replaceHistory = true;
				}

				this.emit('beforeNavigate', {
					event: opt_event,
					path: path,
					replaceHistory: !!opt_replaceHistory
				});

				return this.pendingNavigate;
			}
		}, {
			key: 'onBeforeNavigate_',
			value: function onBeforeNavigate_(event) {
				if (_globals2.default.capturedFormElement) {
					event.form = _globals2.default.capturedFormElement;
				}
			}
		}, {
			key: 'onBeforeNavigateDefault_',
			value: function onBeforeNavigateDefault_(event) {
				if (this.pendingNavigate) {
					if (this.pendingNavigate.path === event.path) {
						void 0;
						return;
					}
				}

				this.emit('startNavigate', {
					form: event.form,
					path: event.path,
					replaceHistory: event.replaceHistory
				});
			}
		}, {
			key: 'onDocClickDelegate_',
			value: function onDocClickDelegate_(event) {
				if (event.altKey || event.ctrlKey || event.metaKey || event.shiftKey || event.button) {
					void 0;
					return;
				}
				this.maybeNavigate_(event.delegateTarget.href, event);
			}
		}, {
			key: 'onDocSubmitDelegate_',
			value: function onDocSubmitDelegate_(event) {
				var form = event.delegateTarget;
				if (form.method === 'get') {
					void 0;
					return;
				}
				event.capturedFormElement = form;
				var buttonSelector = 'button:not([type]),button[type=submit],input[type=submit]';
				if (_dom2.default.match(_globals2.default.document.activeElement, buttonSelector)) {
					event.capturedFormButtonElement = _globals2.default.document.activeElement;
				} else {
					event.capturedFormButtonElement = form.querySelector(buttonSelector);
				}
				this.maybeNavigate_(form.action, event);
			}
		}, {
			key: 'onLoad_',
			value: function onLoad_() {
				var _this7 = this;

				this.skipLoadPopstate = true;
				setTimeout(function () {
					// The timeout ensures that popstate events will be unblocked right
					// after the load event occured, but not in the same event-loop cycle.
					_this7.skipLoadPopstate = false;
				}, 0);
				// Try to reposition scroll to the hashed anchor when page loads.
				this.maybeRepositionScrollToHashedAnchor();
			}
		}, {
			key: 'onPopstate_',
			value: function onPopstate_(event) {
				if (this.skipLoadPopstate) {
					return;
				}

				// Do not navigate if the popstate was triggered by a hash change.
				if (_utils2.default.isCurrentBrowserPath(this.browserPathBeforeNavigate)) {
					this.maybeRepositionScrollToHashedAnchor();
					return;
				}

				var state = event.state;

				if (!state) {
					if (_globals2.default.window.location.hash) {
						// If senna is on an redirect path and a hash popstate happens
						// to a different url, reload the browser. This behavior doesn't
						// require senna to route hashed links and is closer to native
						// browser behavior.
						if (this.redirectPath && !_utils2.default.isCurrentBrowserPath(this.redirectPath)) {
							this.reloadPage();
						}
						// Always try to reposition scroll to the hashed anchor when
						// hash popstate happens.
						this.maybeRepositionScrollToHashedAnchor();
					} else {
						this.reloadPage();
					}
					return;
				}

				if (state.senna) {
					void 0;
					this.popstateScrollTop = state.scrollTop;
					this.popstateScrollLeft = state.scrollLeft;
					if (!this.nativeScrollRestorationSupported) {
						this.lockHistoryScrollPosition_();
					}
					this.navigate(state.path, true);
				}
			}
		}, {
			key: 'onScroll_',
			value: function onScroll_() {
				if (this.captureScrollPositionFromScrollEvent) {
					this.saveHistoryCurrentPageScrollPosition_(_globals2.default.window.pageYOffset, _globals2.default.window.pageXOffset);
				}
			}
		}, {
			key: 'onStartNavigate_',
			value: function onStartNavigate_(event) {
				var _this8 = this;

				this.maybeDisableNativeScrollRestoration();
				this.captureScrollPositionFromScrollEvent = false;
				_dom2.default.addClasses(_globals2.default.document.documentElement, this.loadingCssClass);

				var endNavigatePayload = {
					form: event.form,
					path: event.path
				};

				this.pendingNavigate = this.doNavigate_(event.path, event.replaceHistory).catch(function (reason) {
					endNavigatePayload.error = reason;
					throw reason;
				}).thenAlways(function () {
					if (!_this8.pendingNavigate) {
						_dom2.default.removeClasses(_globals2.default.document.documentElement, _this8.loadingCssClass);
						_this8.maybeRestoreNativeScrollRestoration();
						_this8.captureScrollPositionFromScrollEvent = true;
					}
					_this8.emit('endNavigate', endNavigatePayload);
				});

				this.pendingNavigate.path = event.path;
			}
		}, {
			key: 'prefetch',
			value: function prefetch(path) {
				var _this9 = this;

				var route = this.findRoute(path);
				if (!route) {
					return _Promise2.default.reject(new _Promise2.default.CancellationError('No route for ' + path));
				}

				void 0;

				var nextScreen = this.createScreenInstance(path, route);

				return nextScreen.load(path).then(function () {
					return _this9.screens[path] = nextScreen;
				}).catch(function (reason) {
					_this9.handleNavigateError_(path, nextScreen, reason);
					throw reason;
				});
			}
		}, {
			key: 'prepareNavigateHistory_',
			value: function prepareNavigateHistory_(path, nextScreen, opt_replaceHistory) {
				var title = nextScreen.getTitle();
				if (!_metal.core.isString(title)) {
					title = this.getDefaultTitle();
				}
				var redirectPath = nextScreen.beforeUpdateHistoryPath(path);
				var historyState = {
					form: _metal.core.isDefAndNotNull(_globals2.default.capturedFormElement),
					path: path,
					redirectPath: redirectPath,
					scrollLeft: 0,
					scrollTop: 0,
					senna: true
				};
				if (opt_replaceHistory) {
					historyState.scrollTop = this.popstateScrollTop;
					historyState.scrollLeft = this.popstateScrollLeft;
				}
				var hash = new _Uri2.default(path).getHash();
				redirectPath = this.maybeRestoreRedirectPathHash_(path, redirectPath, hash);
				this.updateHistory_(title, redirectPath, nextScreen.beforeUpdateHistoryState(historyState), opt_replaceHistory);
				this.redirectPath = redirectPath;
			}
		}, {
			key: 'prepareNavigateSurfaces_',
			value: function prepareNavigateSurfaces_(nextScreen, surfaces, params) {
				Object.keys(surfaces).forEach(function (id) {
					var surfaceContent = nextScreen.getSurfaceContent(id, params);
					surfaces[id].addContent(nextScreen.getId(), surfaceContent);
					void 0;
				});
			}
		}, {
			key: 'reloadPage',
			value: function reloadPage() {
				_globals2.default.window.location.reload();
			}
		}, {
			key: 'removeRoute',
			value: function removeRoute(route) {
				return _metal.array.remove(this.routes, route);
			}
		}, {
			key: 'removeScreen',
			value: function removeScreen(path) {
				var _this10 = this;

				var screen = this.screens[path];
				if (screen) {
					Object.keys(this.surfaces).forEach(function (surfaceId) {
						return _this10.surfaces[surfaceId].remove(screen.getId());
					});
					screen.dispose();
					delete this.screens[path];
				}
			}
		}, {
			key: 'saveHistoryCurrentPageScrollPosition_',
			value: function saveHistoryCurrentPageScrollPosition_(scrollTop, scrollLeft) {
				var state = _globals2.default.window.history.state;
				if (state && state.senna) {
					var _ref = [scrollTop, scrollLeft];
					state.scrollTop = _ref[0];
					state.scrollLeft = _ref[1];

					_globals2.default.window.history.replaceState(state, null, null);
				}
			}
		}, {
			key: 'setAllowPreventNavigate',
			value: function setAllowPreventNavigate(allowPreventNavigate) {
				this.allowPreventNavigate = allowPreventNavigate;
			}
		}, {
			key: 'setBasePath',
			value: function setBasePath(basePath) {
				this.basePath = basePath;
			}
		}, {
			key: 'setDefaultTitle',
			value: function setDefaultTitle(defaultTitle) {
				this.defaultTitle = defaultTitle;
			}
		}, {
			key: 'setFormSelector',
			value: function setFormSelector(formSelector) {
				this.formSelector = formSelector;
				if (this.formEventHandler_) {
					this.formEventHandler_.removeListener();
				}
				this.formEventHandler_ = _dom2.default.delegate(document, 'submit', this.formSelector, this.onDocSubmitDelegate_.bind(this), this.allowPreventNavigate);
			}
		}, {
			key: 'setIgnoreQueryStringFromRoutePath',
			value: function setIgnoreQueryStringFromRoutePath(ignoreQueryStringFromRoutePath) {
				this.ignoreQueryStringFromRoutePath = ignoreQueryStringFromRoutePath;
			}
		}, {
			key: 'setLinkSelector',
			value: function setLinkSelector(linkSelector) {
				this.linkSelector = linkSelector;
				if (this.linkEventHandler_) {
					this.linkEventHandler_.removeListener();
				}
				this.linkEventHandler_ = _dom2.default.delegate(document, 'click', this.linkSelector, this.onDocClickDelegate_.bind(this), this.allowPreventNavigate);
			}
		}, {
			key: 'setLoadingCssClass',
			value: function setLoadingCssClass(loadingCssClass) {
				this.loadingCssClass = loadingCssClass;
			}
		}, {
			key: 'setUpdateScrollPosition',
			value: function setUpdateScrollPosition(updateScrollPosition) {
				this.updateScrollPosition = updateScrollPosition;
			}
		}, {
			key: 'stopPendingNavigate_',
			value: function stopPendingNavigate_() {
				if (this.pendingNavigate) {
					this.pendingNavigate.cancel('Cancel pending navigation');
					this.pendingNavigate = null;
				}
			}
		}, {
			key: 'syncScrollPositionSyncThenAsync_',
			value: function syncScrollPositionSyncThenAsync_() {
				var _this11 = this;

				var state = _globals2.default.window.history.state;
				if (!state) {
					return;
				}

				var scrollTop = state.scrollTop;
				var scrollLeft = state.scrollLeft;

				var sync = function sync() {
					if (_this11.updateScrollPosition) {
						_globals2.default.window.scrollTo(scrollLeft, scrollTop);
					}
				};

				return new _Promise2.default(function (resolve) {
					return sync() & _metal.async.nextTick(function () {
						return sync() & resolve();
					});
				});
			}
		}, {
			key: 'updateHistory_',
			value: function updateHistory_(title, path, state, opt_replaceHistory) {
				if (opt_replaceHistory) {
					_globals2.default.window.history.replaceState(state, title, path);
				} else {
					_globals2.default.window.history.pushState(state, title, path);
				}

				var titleNode = _globals2.default.document.querySelector('title');
				if (titleNode) {
					titleNode.innerHTML = title;
				} else {
					_globals2.default.document.title = title;
				}
			}
		}]);

		return App;
	}(_events.EventEmitter);

	exports.default = App;
});
//# sourceMappingURL=App.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/liferay/surface/Surface.es", ['exports', 'metal/src/core', 'metal-dom/src/dom', 'senna/src/surface/Surface'], function (exports, _core, _dom, _Surface2) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _core2 = _interopRequireDefault(_core);

	var _dom2 = _interopRequireDefault(_dom);

	var _Surface3 = _interopRequireDefault(_Surface2);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	var _get = function get(object, property, receiver) {
		if (object === null) object = Function.prototype;
		var desc = Object.getOwnPropertyDescriptor(object, property);

		if (desc === undefined) {
			var parent = Object.getPrototypeOf(object);

			if (parent === null) {
				return undefined;
			} else {
				return get(parent, property, receiver);
			}
		} else if ("value" in desc) {
			return desc.value;
		} else {
			var getter = desc.get;

			if (getter === undefined) {
				return undefined;
			}

			return getter.call(receiver);
		}
	};

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	var LiferaySurface = function (_Surface) {
		_inherits(LiferaySurface, _Surface);

		function LiferaySurface() {
			_classCallCheck(this, LiferaySurface);

			return _possibleConstructorReturn(this, (LiferaySurface.__proto__ || Object.getPrototypeOf(LiferaySurface)).apply(this, arguments));
		}

		_createClass(LiferaySurface, [{
			key: 'addContent',
			value: function addContent(screenId, content) {
				if (_core2.default.isString(content)) {
					content = _dom2.default.buildFragment(content);
				}

				Liferay.DOMTaskRunner.runTasks(content);

				return _get(LiferaySurface.prototype.__proto__ || Object.getPrototypeOf(LiferaySurface.prototype), 'addContent', this).call(this, screenId, content);
			}
		}]);

		return LiferaySurface;
	}(_Surface3.default);

	exports.default = LiferaySurface;
});
//# sourceMappingURL=Surface.es.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/liferay/app/App.es", ['exports', 'senna/src/app/App', 'metal/src/core', 'metal-dom/src/dom', '../surface/Surface.es', '../util/Utils.es', 'metal-promise/src/promise/Promise'], function (exports, _App2, _core, _dom, _Surface, _Utils, _Promise) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _App3 = _interopRequireDefault(_App2);

	var _core2 = _interopRequireDefault(_core);

	var _dom2 = _interopRequireDefault(_dom);

	var _Surface2 = _interopRequireDefault(_Surface);

	var _Utils2 = _interopRequireDefault(_Utils);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	var _createClass = function () {
		function defineProperties(target, props) {
			for (var i = 0; i < props.length; i++) {
				var descriptor = props[i];
				descriptor.enumerable = descriptor.enumerable || false;
				descriptor.configurable = true;
				if ("value" in descriptor) descriptor.writable = true;
				Object.defineProperty(target, descriptor.key, descriptor);
			}
		}

		return function (Constructor, protoProps, staticProps) {
			if (protoProps) defineProperties(Constructor.prototype, protoProps);
			if (staticProps) defineProperties(Constructor, staticProps);
			return Constructor;
		};
	}();

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	var _get = function get(object, property, receiver) {
		if (object === null) object = Function.prototype;
		var desc = Object.getOwnPropertyDescriptor(object, property);

		if (desc === undefined) {
			var parent = Object.getPrototypeOf(object);

			if (parent === null) {
				return undefined;
			} else {
				return get(parent, property, receiver);
			}
		} else if ("value" in desc) {
			return desc.value;
		} else {
			var getter = desc.get;

			if (getter === undefined) {
				return undefined;
			}

			return getter.call(receiver);
		}
	};

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	var LiferayApp = function (_App) {
		_inherits(LiferayApp, _App);

		function LiferayApp() {
			_classCallCheck(this, LiferayApp);

			var _this = _possibleConstructorReturn(this, (LiferayApp.__proto__ || Object.getPrototypeOf(LiferayApp)).call(this));

			_this.portletsBlacklist = {};
			_this.validStatusCodes = [];

			_this.timeout = Math.max(Liferay.SPA.requestTimeout, 0) || _Utils2.default.getMaxTimeout();
			_this.timeoutAlert = null;

			_this.setShouldUseFacade(true);

			var exceptionsSelector = ':not([target="_blank"]):not([data-senna-off]):not([data-resource-href])';

			_this.setFormSelector('form' + exceptionsSelector);
			_this.setLinkSelector('a' + exceptionsSelector);
			_this.setLoadingCssClass('lfr-spa-loading');

			_this.on('beforeNavigate', _this.onBeforeNavigate);
			_this.on('endNavigate', _this.onEndNavigate);
			_this.on('startNavigate', _this.onStartNavigate);

			Liferay.on('io:complete', _this.onLiferayIOComplete, _this);

			var body = document.body;

			if (!body.id) {
				body.id = 'senna_surface' + _core2.default.getUid();
			}

			_this.addSurfaces(new _Surface2.default(body.id));

			_dom2.default.append(body, '<div class="lfr-spa-loading-bar"></div>');
			return _this;
		}

		_createClass(LiferayApp, [{
			key: 'getCacheExpirationTime',
			value: function getCacheExpirationTime() {
				return Liferay.SPA.cacheExpirationTime;
			}
		}, {
			key: 'getValidStatusCodes',
			value: function getValidStatusCodes() {
				return this.validStatusCodes;
			}
		}, {
			key: 'isCacheEnabled',
			value: function isCacheEnabled() {
				return this.getCacheExpirationTime() > -1;
			}
		}, {
			key: 'isInPortletBlacklist',
			value: function isInPortletBlacklist(element) {
				return Object.keys(this.portletsBlacklist).some(function (portletId) {
					var boundaryId = _Utils2.default.getPortletBoundaryId(portletId);

					var portlets = document.querySelectorAll('[id^="' + boundaryId + '"]');

					return Array.prototype.slice.call(portlets).some(function (portlet) {
						return _dom2.default.contains(portlet, element);
					});
				});
			}
		}, {
			key: 'isScreenCacheExpired',
			value: function isScreenCacheExpired(screen) {
				if (this.getCacheExpirationTime() === 0) {
					return false;
				}

				var lastModifiedInterval = new Date().getTime() - screen.getCacheLastModified();

				return lastModifiedInterval > this.getCacheExpirationTime();
			}
		}, {
			key: 'onBeforeNavigate',
			value: function onBeforeNavigate(data, event) {
				if (Liferay.SPA.clearScreensCache || data.form) {
					this.clearScreensCache();
				}

				Liferay.fire('beforeNavigate', {
					app: this,
					originalEvent: event,
					path: data.path
				});
			}
		}, {
			key: 'onDocClickDelegate_',
			value: function onDocClickDelegate_(event) {
				if (this.isInPortletBlacklist(event.delegateTarget)) {
					return;
				}

				_get(LiferayApp.prototype.__proto__ || Object.getPrototypeOf(LiferayApp.prototype), 'onDocClickDelegate_', this).call(this, event);
			}
		}, {
			key: 'onDocSubmitDelegate_',
			value: function onDocSubmitDelegate_(event) {
				if (this.isInPortletBlacklist(event.delegateTarget)) {
					return;
				}

				_get(LiferayApp.prototype.__proto__ || Object.getPrototypeOf(LiferayApp.prototype), 'onDocSubmitDelegate_', this).call(this, event);
			}
		}, {
			key: 'onEndNavigate',
			value: function onEndNavigate(event) {
				Liferay.fire('endNavigate', {
					app: this,
					error: event.error,
					path: event.path
				});

				if (!this.pendingNavigate) {
					this._clearRequestTimer();
					this._hideTimeoutAlert();
				}

				if (event.error) {
					if (event.error.invalidStatus || event.error.requestError || event.error.timeout) {
						this._createNotification({
							message: '예기치\x20않은\x20오류가\x20발생\x20했습니다\x2e\x20현재\x20페이지를\x20새로\x20고치십시오\x2e',
							title: '과실',
							type: 'danger'
						});
					}
				} else if (Liferay.Layout && Liferay.Data.layoutConfig) {
					Liferay.Layout.init();
				}

				AUI().Get._insertCache = {};

				Liferay.DOMTaskRunner.reset();
			}
		}, {
			key: 'onLiferayIOComplete',
			value: function onLiferayIOComplete() {
				this.clearScreensCache();
			}
		}, {
			key: 'onStartNavigate',
			value: function onStartNavigate(event) {
				Liferay.fire('startNavigate', {
					app: this,
					path: event.path
				});

				this._startRequestTimer(event.path);
			}
		}, {
			key: 'setPortletsBlacklist',
			value: function setPortletsBlacklist(portletsBlacklist) {
				this.portletsBlacklist = portletsBlacklist;
			}
		}, {
			key: 'setValidStatusCodes',
			value: function setValidStatusCodes(validStatusCodes) {
				this.validStatusCodes = validStatusCodes;
			}
		}, {
			key: '_clearRequestTimer',
			value: function _clearRequestTimer() {
				if (this.requestTimer) {
					clearTimeout(this.requestTimer);
				}
			}
		}, {
			key: '_createNotification',
			value: function _createNotification(config) {
				return new _Promise.CancellablePromise(function (resolve) {
					AUI().use('liferay-notification', function () {
						resolve(new Liferay.Notification(Object.assign({
							closeable: true,
							delay: {
								hide: 0,
								show: 0
							},
							duration: 500,
							type: 'warning'
						}, config)).render('body'));
					});
				});
			}
		}, {
			key: '_hideTimeoutAlert',
			value: function _hideTimeoutAlert() {
				if (this.timeoutAlert) {
					this.timeoutAlert.hide();
				}
			}
		}, {
			key: '_startRequestTimer',
			value: function _startRequestTimer(path) {
				var _this2 = this;

				this._clearRequestTimer();

				if (Liferay.SPA.userNotification.timeout > 0) {
					this.requestTimer = setTimeout(function () {
						Liferay.fire('spaRequestTimeout', {
							path: path
						});

						if (!_this2.timeoutAlert) {
							_this2._createNotification({
								message: Liferay.SPA.userNotification.message,
								title: Liferay.SPA.userNotification.title,
								type: 'warning'
							}).then(function (alert) {
								_this2.timeoutAlert = alert;
							});
						} else {
							_this2.timeoutAlert.show();
						}
					}, Liferay.SPA.userNotification.timeout);
				}
			}
		}]);

		return LiferayApp;
	}(_App3.default);

	exports.default = LiferayApp;
});
//# sourceMappingURL=App.es.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/liferay/screen/RenderURLScreen.es", ['exports', './EventScreen.es'], function (exports, _EventScreen2) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _EventScreen3 = _interopRequireDefault(_EventScreen2);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	var RenderURLScreen = function (_EventScreen) {
		_inherits(RenderURLScreen, _EventScreen);

		function RenderURLScreen() {
			_classCallCheck(this, RenderURLScreen);

			var _this = _possibleConstructorReturn(this, (RenderURLScreen.__proto__ || Object.getPrototypeOf(RenderURLScreen)).call(this));

			_this.cacheable = true;
			return _this;
		}

		return RenderURLScreen;
	}(_EventScreen3.default);

	exports.default = RenderURLScreen;
});
//# sourceMappingURL=RenderURLScreen.es.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/liferay/init.es", ['exports', './screen/ActionURLScreen.es', './app/App.es', 'metal/src/async/async', 'senna/src/globals/globals', './screen/RenderURLScreen.es', 'metal-uri/src/Uri', 'senna/src/utils/utils'], function (exports, _ActionURLScreen, _App, _async, _globals, _RenderURLScreen, _Uri, _utils) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _ActionURLScreen2 = _interopRequireDefault(_ActionURLScreen);

	var _App2 = _interopRequireDefault(_App);

	var _async2 = _interopRequireDefault(_async);

	var _globals2 = _interopRequireDefault(_globals);

	var _RenderURLScreen2 = _interopRequireDefault(_RenderURLScreen);

	var _Uri2 = _interopRequireDefault(_Uri);

	var _utils2 = _interopRequireDefault(_utils);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	var initSPA = function initSPA(callback) {
		var app = new _App2.default();

		app.addRoutes([{
			handler: _ActionURLScreen2.default,
			path: function path(url) {
				var uri = new _Uri2.default(url);

				var loginRedirect = new _Uri2.default(Liferay.SPA.loginRedirect);

				var hostname = loginRedirect.getHostname() || window.location.hostname;

				if (!app.isLinkSameOrigin_(hostname)) {
					return false;
				}

				return uri.getParameterValue('p_p_lifecycle') === '1';
			}
		}, {
			handler: _RenderURLScreen2.default,
			path: function path(url) {
				if (url.indexOf(themeDisplay.getPathMain()) === 0) {
					return false;
				}

				var excluded = Liferay.SPA.excludedPaths.some(function (excludedPath) {
					return url.indexOf(excludedPath) === 0;
				});

				if (excluded) {
					return false;
				}

				var uri = new _Uri2.default(url);

				var lifecycle = uri.getParameterValue('p_p_lifecycle');

				return lifecycle === '0' || !lifecycle;
			}
		}]);

		Liferay.Util.submitForm = function (form) {
			_async2.default.nextTick(function () {
				var formElement = form.getDOM();
				var url = formElement.action;

				if (app.canNavigate(url) && formElement.method !== 'get' && !app.isInPortletBlacklist(formElement)) {
					Liferay.Util._submitLocked = false;

					_globals2.default.capturedFormElement = formElement;

					app.navigate(_utils2.default.getUrlPath(url));
				} else {
					formElement.submit();
				}
			});
		};

		Liferay.SPA.app = app;

		Liferay.fire('SPAReady');

		return app;
	};

	exports.default = {
		init: function init(callback) {
			var _this = this;

			if (_globals2.default.document.readyState == 'loading') {
				_globals2.default.document.addEventListener('DOMContentLoaded', function () {
					callback.call(_this, initSPA());
				});
			} else {
				callback.call(this, initSPA());
			}
		}
	};
});
//# sourceMappingURL=init.es.js.map

