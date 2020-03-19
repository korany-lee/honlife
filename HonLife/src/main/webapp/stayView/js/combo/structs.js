Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal/src/coreNamed", ['exports'], function (exports) {
  'use strict';

  /**
   * A collection of core utility functions.
   * @const
   */

  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.abstractMethod = abstractMethod;
  exports.disableCompatibilityMode = disableCompatibilityMode;
  exports.enableCompatibilityMode = enableCompatibilityMode;
  exports.getCompatibilityModeData = getCompatibilityModeData;
  exports.getFunctionName = getFunctionName;
  exports.getStaticProperty = getStaticProperty;
  exports.getUid = getUid;
  exports.identityFunction = identityFunction;
  exports.isBoolean = isBoolean;
  exports.isDef = isDef;
  exports.isDefAndNotNull = isDefAndNotNull;
  exports.isDocument = isDocument;
  exports.isDocumentFragment = isDocumentFragment;
  exports.isElement = isElement;
  exports.isFunction = isFunction;
  exports.isNull = isNull;
  exports.isNumber = isNumber;
  exports.isWindow = isWindow;
  exports.isObject = isObject;
  exports.isPromise = isPromise;
  exports.isString = isString;
  exports.nullFunction = nullFunction;

  var _typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) {
    return typeof obj;
  } : function (obj) {
    return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj;
  };

  var compatibilityModeData_ = void 0;

  /**
   * Counter for unique id.
   * @type {Number}
   * @private
   */
  var uniqueIdCounter_ = 1;

  /**
   * Unique id property prefix.
   * @type {String}
   * @protected
   */
  var UID_PROPERTY = exports.UID_PROPERTY = 'core_' + (Math.random() * 1e9 >>> 0);

  /**
   * When defining a class Foo with an abstract method bar(), you can do:
   * Foo.prototype.bar = abstractMethod
   *
   * Now if a subclass of Foo fails to override bar(), an error will be thrown
   * when bar() is invoked.
   *
   * @type {!Function}
   * @throws {Error} when invoked to indicate the method should be overridden.
   */
  function abstractMethod() {
    throw Error('Unimplemented abstract method');
  }

  /**
   * Disables Metal.js's compatibility mode.
   */
  function disableCompatibilityMode() {
    compatibilityModeData_ = undefined;
  }

  /**
   * Enables Metal.js's compatibility mode with the following features from rc
   * and 1.x versions:
   *     - Using "key" to reference component instances. In the current version
   *       this should be done via "ref" instead. This allows old code still
   *       using "key" to keep working like before. NOTE: this may cause
   *       problems, since "key" is meant to be used differently. Only use this
   *       if it's not possible to upgrade the code to use "ref" instead.
   * @param {Object=} opt_data Optional object with data to specify more
   *     details, such as:
   *         - renderers {Array} the template renderers that should be in
   *           compatibility mode, either their constructors or strings
   *           representing them (e.g. 'soy' or 'jsx'). By default, all the ones
   *           that extend from IncrementalDomRenderer.
   * @type {Object}
   */
  function enableCompatibilityMode() {
    var opt_data = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : {};

    compatibilityModeData_ = opt_data;
  }

  /**
   * Returns the data used for compatibility mode, or nothing if it hasn't been
   * enabled.
   * @return {Object}
   */
  function getCompatibilityModeData() {
    // Compatibility mode can be set via the __METAL_COMPATIBILITY__ global var.
    if (compatibilityModeData_ === undefined) {
      if (typeof window !== 'undefined' && window.__METAL_COMPATIBILITY__) {
        enableCompatibilityMode(window.__METAL_COMPATIBILITY__);
      }
    }
    return compatibilityModeData_;
  }

  /**
   * Returns the first argument if it's truthy, or the second otherwise.
   * @param {*} a
   * @param {*} b
   * @return {*}
   * @protected
   */
  function getFirstTruthy_(a, b) {
    return a || b;
  }

  /**
   * Gets the name of the given function. If the current browser doesn't
   * support the `name` property, this will calculate it from the function's
   * content string.
   * @param {!function()} fn
   * @return {string}
   */
  function getFunctionName(fn) {
    if (!fn.name) {
      var str = fn.toString();
      fn.name = str.substring(9, str.indexOf('('));
    }
    return fn.name;
  }

  /**
   * Gets the value of a static property in the given class. The value will be
   * inherited from ancestors as expected, unless a custom merge function is given,
   * which can change how the super classes' value for that property will be merged
   * together.
   * The final merged value will be stored in another property, so that it won't
   * be recalculated even if this function is called multiple times.
   * @param {!function()} ctor Class constructor.
   * @param {string} propertyName Property name to be merged.
   * @param {function(*, *):*=} opt_mergeFn Function that receives the merged
   *     value of the property so far and the next value to be merged to it.
   *     Should return these two merged together. If not passed the final property
   *     will be the first truthy value among ancestors.
   */
  function getStaticProperty(ctor, propertyName, opt_mergeFn) {
    var mergedName = propertyName + '_MERGED';
    if (!ctor.hasOwnProperty(mergedName)) {
      var merged = ctor.hasOwnProperty(propertyName) ? ctor[propertyName] : null;
      if (ctor.__proto__ && !ctor.__proto__.isPrototypeOf(Function)) {
        var mergeFn = opt_mergeFn || getFirstTruthy_;
        merged = mergeFn(merged, getStaticProperty(ctor.__proto__, propertyName, mergeFn));
      }
      ctor[mergedName] = merged;
    }
    return ctor[mergedName];
  }

  /**
   * Gets an unique id. If `opt_object` argument is passed, the object is
   * mutated with an unique id. Consecutive calls with the same object
   * reference won't mutate the object again, instead the current object uid
   * returns. See {@link UID_PROPERTY}.
   * @param {Object=} opt_object Optional object to be mutated with the uid. If
   *     not specified this method only returns the uid.
   * @param {boolean=} opt_noInheritance Optional flag indicating if this
   *     object's uid property can be inherited from parents or not.
   * @throws {Error} when invoked to indicate the method should be overridden.
   */
  function getUid(opt_object, opt_noInheritance) {
    if (opt_object) {
      var id = opt_object[UID_PROPERTY];
      if (opt_noInheritance && !opt_object.hasOwnProperty(UID_PROPERTY)) {
        id = null;
      }
      return id || (opt_object[UID_PROPERTY] = uniqueIdCounter_++);
    }
    return uniqueIdCounter_++;
  }

  /**
   * The identity function. Returns its first argument.
   * @param {*=} opt_returnValue The single value that will be returned.
   * @return {?} The first argument.
   */
  function identityFunction(opt_returnValue) {
    return opt_returnValue;
  }

  /**
   * Returns true if the specified value is a boolean.
   * @param {?} val Variable to test.
   * @return {boolean} Whether variable is boolean.
   */
  function isBoolean(val) {
    return typeof val === 'boolean';
  }

  /**
   * Returns true if the specified value is not undefined.
   * @param {?} val Variable to test.
   * @return {boolean} Whether variable is defined.
   */
  function isDef(val) {
    return val !== undefined;
  }

  /**
   * Returns true if value is not undefined or null.
   * @param {*} val
   * @return {boolean}
   */
  function isDefAndNotNull(val) {
    return isDef(val) && !isNull(val);
  }

  /**
   * Returns true if value is a document.
   * @param {*} val
   * @return {boolean}
   */
  function isDocument(val) {
    return val && (typeof val === 'undefined' ? 'undefined' : _typeof(val)) === 'object' && val.nodeType === 9;
  }

  /**
   * Returns true if value is a document-fragment.
   * @param {*} val
   * @return {boolean}
   */
  function isDocumentFragment(val) {
    return val && (typeof val === 'undefined' ? 'undefined' : _typeof(val)) === 'object' && val.nodeType === 11;
  }

  /**
   * Returns true if value is a dom element.
   * @param {*} val
   * @return {boolean}
   */
  function isElement(val) {
    return val && (typeof val === 'undefined' ? 'undefined' : _typeof(val)) === 'object' && val.nodeType === 1;
  }

  /**
   * Returns true if the specified value is a function.
   * @param {?} val Variable to test.
   * @return {boolean} Whether variable is a function.
   */
  function isFunction(val) {
    return typeof val === 'function';
  }

  /**
   * Returns true if value is null.
   * @param {*} val
   * @return {boolean}
   */
  function isNull(val) {
    return val === null;
  }

  /**
   * Returns true if the specified value is a number.
   * @param {?} val Variable to test.
   * @return {boolean} Whether variable is a number.
   */
  function isNumber(val) {
    return typeof val === 'number';
  }

  /**
   * Returns true if value is a window.
   * @param {*} val
   * @return {boolean}
   */
  function isWindow(val) {
    return val !== null && val === val.window;
  }

  /**
   * Returns true if the specified value is an object. This includes arrays
   * and functions.
   * @param {?} val Variable to test.
   * @return {boolean} Whether variable is an object.
   */
  function isObject(val) {
    var type = typeof val === 'undefined' ? 'undefined' : _typeof(val);
    return type === 'object' && val !== null || type === 'function';
  }

  /**
   * Returns true if value is a Promise.
   * @param {*} val
   * @return {boolean}
   */
  function isPromise(val) {
    return val && (typeof val === 'undefined' ? 'undefined' : _typeof(val)) === 'object' && typeof val.then === 'function';
  }

  /**
   * Returns true if value is a string.
   * @param {*} val
   * @return {boolean}
   */
  function isString(val) {
    return typeof val === 'string' || val instanceof String;
  }

  /**
   * Null function used for default values of callbacks, etc.
   * @return {void} Nothing.
   */
  function nullFunction() {}
});
//# sourceMappingURL=coreNamed.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal/src/core", ['exports', './coreNamed'], function (exports, _coreNamed) {
  'use strict';

  // This file exists just for backwards compatibility, making sure that old
  // default imports for this file still work. It's best to use the named exports
  // for each function instead though, since that allows bundlers like Rollup to
  // reduce the bundle size by removing unused code.

  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.core = undefined;
  Object.keys(_coreNamed).forEach(function (key) {
    if (key === "default" || key === "__esModule") return;
    Object.defineProperty(exports, key, {
      enumerable: true,
      get: function () {
        return _coreNamed[key];
      }
    });
  });

  var core = _interopRequireWildcard(_coreNamed);

  function _interopRequireWildcard(obj) {
    if (obj && obj.__esModule) {
      return obj;
    } else {
      var newObj = {};

      if (obj != null) {
        for (var key in obj) {
          if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key];
        }
      }

      newObj.default = obj;
      return newObj;
    }
  }

  exports.default = core;
  exports.core = core;
});
//# sourceMappingURL=core.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal/src/array/array", ['exports', '../core'], function (exports, _core) {
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

	var array = function () {
		function array() {
			_classCallCheck(this, array);
		}

		_createClass(array, null, [{
			key: 'equal',
			value: function equal(arr1, arr2) {
				if (arr1 === arr2) {
					return true;
				}
				if (arr1.length !== arr2.length) {
					return false;
				}
				for (var i = 0; i < arr1.length; i++) {
					if (arr1[i] !== arr2[i]) {
						return false;
					}
				}
				return true;
			}
		}, {
			key: 'firstDefinedValue',
			value: function firstDefinedValue(arr) {
				for (var i = 0; i < arr.length; i++) {
					if (arr[i] !== undefined) {
						return arr[i];
					}
				}
			}
		}, {
			key: 'flatten',
			value: function flatten(arr, opt_output) {
				var output = opt_output || [];
				for (var i = 0; i < arr.length; i++) {
					if (Array.isArray(arr[i])) {
						array.flatten(arr[i], output);
					} else {
						output.push(arr[i]);
					}
				}
				return output;
			}
		}, {
			key: 'remove',
			value: function remove(arr, obj) {
				var i = arr.indexOf(obj);
				var rv = void 0;
				if (rv = i >= 0) {
					array.removeAt(arr, i);
				}
				return rv;
			}
		}, {
			key: 'removeAt',
			value: function removeAt(arr, i) {
				return Array.prototype.splice.call(arr, i, 1).length === 1;
			}
		}, {
			key: 'slice',
			value: function slice(arr, start, opt_end) {
				var sliced = [];
				var end = (0, _core.isDef)(opt_end) ? opt_end : arr.length;
				for (var i = start; i < end; i++) {
					sliced.push(arr[i]);
				}
				return sliced;
			}
		}]);

		return array;
	}();

	exports.default = array;
});
//# sourceMappingURL=array.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal/src/async/async", ['exports'], function (exports) {
	/*!
  * Polyfill from Google's Closure Library.
  * Copyright 2013 The Closure Library Authors. All Rights Reserved.
  */

	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});
	var async = {};

	/**
  * Throw an item without interrupting the current execution context.  For
  * example, if processing a group of items in a loop, sometimes it is useful
  * to report an error while still allowing the rest of the batch to be
  * processed.
  * @param {*} exception
  */
	async.throwException = function (exception) {
		// Each throw needs to be in its own context.
		async.nextTick(function () {
			throw exception;
		});
	};

	/**
  * Fires the provided callback just before the current callstack unwinds, or as
  * soon as possible after the current JS execution context.
  * @param {function(this:THIS)} callback
  * @param {THIS=} opt_context Object to use as the "this value" when calling
  *     the provided function.
  * @template THIS
  */
	async.run = function (callback, opt_context) {
		if (!async.run.workQueueScheduled_) {
			// Nothing is currently scheduled, schedule it now.
			async.nextTick(async.run.processWorkQueue);
			async.run.workQueueScheduled_ = true;
		}

		async.run.workQueue_.push(new async.run.WorkItem_(callback, opt_context));
	};

	/** @private {boolean} */
	async.run.workQueueScheduled_ = false;

	/** @private {!Array.<!async.run.WorkItem_>} */
	async.run.workQueue_ = [];

	/**
  * Run any pending async.run work items. This function is not intended
  * for general use, but for use by entry point handlers to run items ahead of
  * async.nextTick.
  */
	async.run.processWorkQueue = function () {
		// NOTE: additional work queue items may be pushed while processing.
		while (async.run.workQueue_.length) {
			// Don't let the work queue grow indefinitely.
			var workItems = async.run.workQueue_;
			async.run.workQueue_ = [];
			for (var i = 0; i < workItems.length; i++) {
				var workItem = workItems[i];
				try {
					workItem.fn.call(workItem.scope);
				} catch (e) {
					async.throwException(e);
				}
			}
		}

		// There are no more work items, reset the work queue.
		async.run.workQueueScheduled_ = false;
	};

	/**
  * @constructor
  * @final
  * @struct
  * @private
  *
  * @param {function()} fn
  * @param {Object|null|undefined} scope
  */
	async.run.WorkItem_ = function (fn, scope) {
		/** @const */
		this.fn = fn;
		/** @const */
		this.scope = scope;
	};

	/**
  * Fires the provided callbacks as soon as possible after the current JS
  * execution context. setTimeout(…, 0) always takes at least 5ms for legacy
  * reasons.
  * @param {function(this:SCOPE)} callback Callback function to fire as soon as
  *     possible.
  * @param {SCOPE=} opt_context Object in whose scope to call the listener.
  * @template SCOPE
  */
	async.nextTick = function (callback, opt_context) {
		var cb = callback;
		if (opt_context) {
			cb = callback.bind(opt_context);
		}
		cb = async.nextTick.wrapCallback_(cb);
		// Introduced and currently only supported by IE10.
		// Verify if variable is defined on the current runtime (i.e., node, browser).
		// Can't use typeof enclosed in a function (such as core.isFunction) or an
		// exception will be thrown when the function is called on an environment
		// where the variable is undefined.
		if (typeof setImmediate === 'function') {
			setImmediate(cb);
			return;
		}
		// Look for and cache the custom fallback version of setImmediate.
		if (!async.nextTick.setImmediate_) {
			async.nextTick.setImmediate_ = async.nextTick.getSetImmediateEmulator_();
		}
		async.nextTick.setImmediate_(cb);
	};

	/**
  * Cache for the setImmediate implementation.
  * @type {function(function())}
  * @private
  */
	async.nextTick.setImmediate_ = null;

	/**
  * Determines the best possible implementation to run a function as soon as
  * the JS event loop is idle.
  * @return {function(function())} The "setImmediate" implementation.
  * @private
  */
	async.nextTick.getSetImmediateEmulator_ = function () {
		// Create a private message channel and use it to postMessage empty messages
		// to ourselves.
		var Channel = void 0;

		// Verify if variable is defined on the current runtime (i.e., node, browser).
		// Can't use typeof enclosed in a function (such as core.isFunction) or an
		// exception will be thrown when the function is called on an environment
		// where the variable is undefined.
		if (typeof MessageChannel === 'function') {
			Channel = MessageChannel;
		}

		// If MessageChannel is not available and we are in a browser, implement
		// an iframe based polyfill in browsers that have postMessage and
		// document.addEventListener. The latter excludes IE8 because it has a
		// synchronous postMessage implementation.
		if (typeof Channel === 'undefined' && typeof window !== 'undefined' && window.postMessage && window.addEventListener) {
			/** @constructor */
			Channel = function Channel() {
				// Make an empty, invisible iframe.
				var iframe = document.createElement('iframe');
				iframe.style.display = 'none';
				iframe.src = '';
				document.documentElement.appendChild(iframe);
				var win = iframe.contentWindow;
				var doc = win.document;
				doc.open();
				doc.write('');
				doc.close();
				var message = 'callImmediate' + Math.random();
				var origin = win.location.protocol + '//' + win.location.host;
				var onmessage = function (e) {
					// Validate origin and message to make sure that this message was
					// intended for us.
					if (e.origin !== origin && e.data !== message) {
						return;
					}
					this.port1.onmessage();
				}.bind(this);
				win.addEventListener('message', onmessage, false);
				this.port1 = {};
				this.port2 = {
					postMessage: function postMessage() {
						win.postMessage(message, origin);
					}
				};
			};
		}
		if (typeof Channel !== 'undefined') {
			var channel = new Channel();
			// Use a fifo linked list to call callbacks in the right order.
			var head = {};
			var tail = head;
			channel.port1.onmessage = function () {
				head = head.next;
				var cb = head.cb;
				head.cb = null;
				cb();
			};
			return function (cb) {
				tail.next = {
					cb: cb
				};
				tail = tail.next;
				channel.port2.postMessage(0);
			};
		}
		// Implementation for IE6-8: Script elements fire an asynchronous
		// onreadystatechange event when inserted into the DOM.
		if (typeof document !== 'undefined' && 'onreadystatechange' in document.createElement('script')) {
			return function (cb) {
				var script = document.createElement('script');
				script.onreadystatechange = function () {
					// Clean up and call the callback.
					script.onreadystatechange = null;
					script.parentNode.removeChild(script);
					script = null;
					cb();
					cb = null;
				};
				document.documentElement.appendChild(script);
			};
		}
		// Fall back to setTimeout with 0. In browsers this creates a delay of 5ms
		// or more.
		return function (cb) {
			setTimeout(cb, 0);
		};
	};

	/**
  * Helper function that is overrided to protect callbacks with entry point
  * monitor if the application monitors entry points.
  * @param {function()} callback Callback function to fire as soon as possible.
  * @return {function()} The wrapped callback.
  * @private
  */
	async.nextTick.wrapCallback_ = function (opt_returnValue) {
		return opt_returnValue;
	};

	exports.default = async;
});
//# sourceMappingURL=async.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal/src/disposable/Disposable", ['exports'], function (exports) {
	'use strict';

	/**
  * Disposable utility. When inherited provides the `dispose` function to its
  * subclass, which is responsible for disposing of any object references
  * when an instance won't be used anymore. Subclasses should override
  * `disposeInternal` to implement any specific disposing logic.
  * @constructor
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

	var Disposable = function () {
		function Disposable() {
			_classCallCheck(this, Disposable);

			/**
    * Flag indicating if this instance has already been disposed.
    * @type {boolean}
    * @protected
    */
			this.disposed_ = false;
		}

		/**
   * Disposes of this instance's object references. Calls `disposeInternal`.
   */


		_createClass(Disposable, [{
			key: 'dispose',
			value: function dispose() {
				if (!this.disposed_) {
					this.disposeInternal();
					this.disposed_ = true;
				}
			}
		}, {
			key: 'disposeInternal',
			value: function disposeInternal() {}
		}, {
			key: 'isDisposed',
			value: function isDisposed() {
				return this.disposed_;
			}
		}]);

		return Disposable;
	}();

	exports.default = Disposable;
});
//# sourceMappingURL=Disposable.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal/src/object/object", ['exports'], function (exports) {
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

	var object = function () {
		function object() {
			_classCallCheck(this, object);
		}

		_createClass(object, null, [{
			key: 'mixin',
			value: function mixin(target) {
				var key = void 0,
				    source = void 0;
				for (var i = 1; i < arguments.length; i++) {
					source = arguments[i];
					for (key in source) {
						target[key] = source[key];
					}
				}
				return target;
			}
		}, {
			key: 'getObjectByName',
			value: function getObjectByName(name, opt_obj) {
				var scope = opt_obj || window;
				var parts = name.split('.');
				return parts.reduce(function (part, key) {
					return part[key];
				}, scope);
			}
		}, {
			key: 'map',
			value: function map(obj, fn) {
				var mappedObj = {};
				var keys = Object.keys(obj);
				for (var i = 0; i < keys.length; i++) {
					mappedObj[keys[i]] = fn(keys[i], obj[keys[i]]);
				}
				return mappedObj;
			}
		}, {
			key: 'shallowEqual',
			value: function shallowEqual(obj1, obj2) {
				if (obj1 === obj2) {
					return true;
				}

				var keys1 = Object.keys(obj1);
				var keys2 = Object.keys(obj2);
				if (keys1.length !== keys2.length) {
					return false;
				}

				for (var i = 0; i < keys1.length; i++) {
					if (obj1[keys1[i]] !== obj2[keys1[i]]) {
						return false;
					}
				}
				return true;
			}
		}]);

		return object;
	}();

	exports.default = object;
});
//# sourceMappingURL=object.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal/src/string/string", ['exports'], function (exports) {
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

	var string = function () {
		function string() {
			_classCallCheck(this, string);
		}

		_createClass(string, null, [{
			key: 'caseInsensitiveCompare',
			value: function caseInsensitiveCompare(str1, str2) {
				var test1 = String(str1).toLowerCase();
				var test2 = String(str2).toLowerCase();

				if (test1 < test2) {
					return -1;
				} else if (test1 === test2) {
					return 0;
				} else {
					return 1;
				}
			}
		}, {
			key: 'collapseBreakingSpaces',
			value: function collapseBreakingSpaces(str) {
				return str.replace(/[\t\r\n ]+/g, ' ').replace(/^[\t\r\n ]+|[\t\r\n ]+$/g, '');
			}
		}, {
			key: 'escapeRegex',
			value: function escapeRegex(str) {
				return String(str).replace(/([-()\[\]{}+?*.$\^|,:#<!\\])/g, '\\$1').replace(/\x08/g, '\\x08');
			}
		}, {
			key: 'getRandomString',
			value: function getRandomString() {
				var x = 2147483648;
				return Math.floor(Math.random() * x).toString(36) + Math.abs(Math.floor(Math.random() * x) ^ Date.now()).toString(36);
			}
		}, {
			key: 'hashCode',
			value: function hashCode(val) {
				var hash = 0;
				for (var i = 0, len = val.length; i < len; i++) {
					hash = 31 * hash + val.charCodeAt(i);
					hash %= 0x100000000;
				}
				return hash;
			}
		}, {
			key: 'replaceInterval',
			value: function replaceInterval(str, start, end, value) {
				return str.substring(0, start) + value + str.substring(end);
			}
		}]);

		return string;
	}();

	exports.default = string;
});
//# sourceMappingURL=string.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal/src/metal", ['exports', './core', './array/array', './async/async', './disposable/Disposable', './object/object', './string/string'], function (exports, _core, _array, _async, _Disposable, _object, _string) {
  'use strict';

  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.string = exports.object = exports.Disposable = exports.async = exports.array = undefined;
  Object.keys(_core).forEach(function (key) {
    if (key === "default" || key === "__esModule") return;
    Object.defineProperty(exports, key, {
      enumerable: true,
      get: function () {
        return _core[key];
      }
    });
  });

  var _core2 = _interopRequireDefault(_core);

  var _array2 = _interopRequireDefault(_array);

  var _async2 = _interopRequireDefault(_async);

  var _Disposable2 = _interopRequireDefault(_Disposable);

  var _object2 = _interopRequireDefault(_object);

  var _string2 = _interopRequireDefault(_string);

  function _interopRequireDefault(obj) {
    return obj && obj.__esModule ? obj : {
      default: obj
    };
  }

  exports.array = _array2.default;
  exports.async = _async2.default;
  exports.Disposable = _Disposable2.default;
  exports.object = _object2.default;
  exports.string = _string2.default;
  exports.default = _core2.default;
});
//# sourceMappingURL=metal.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-dom/src/domData", ['exports'], function (exports) {
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

	var METAL_DATA = '__metal_data__';

	var domData = function () {
		function domData() {
			_classCallCheck(this, domData);
		}

		_createClass(domData, null, [{
			key: 'get',
			value: function get(element, opt_name, opt_initialVal) {
				if (!element[METAL_DATA]) {
					element[METAL_DATA] = {};
				}
				if (!opt_name) {
					return element[METAL_DATA];
				}
				if (!element[METAL_DATA][opt_name] && opt_initialVal) {
					element[METAL_DATA][opt_name] = opt_initialVal;
				}
				return element[METAL_DATA][opt_name];
			}
		}, {
			key: 'has',
			value: function has(element) {
				return !!element[METAL_DATA];
			}
		}]);

		return domData;
	}();

	exports.default = domData;
});
//# sourceMappingURL=domData.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-events/src/EventHandle", ['exports', 'metal/src/metal'], function (exports, _metal) {
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

	var EventHandle = function (_Disposable) {
		_inherits(EventHandle, _Disposable);

		function EventHandle(emitter, event, listener) {
			_classCallCheck(this, EventHandle);

			var _this = _possibleConstructorReturn(this, (EventHandle.__proto__ || Object.getPrototypeOf(EventHandle)).call(this));

			/**
    * The EventEmitter instance that the event was subscribed to.
    * @type {EventEmitter}
    * @protected
    */
			_this.emitter_ = emitter;

			/**
    * The name of the event that was subscribed to.
    * @type {string}
    * @protected
    */
			_this.event_ = event;

			/**
    * The listener subscribed to the event.
    * @type {Function}
    * @protected
    */
			_this.listener_ = listener;
			return _this;
		}

		/**
   * Disposes of this instance's object references.
   * @override
   */


		_createClass(EventHandle, [{
			key: 'disposeInternal',
			value: function disposeInternal() {
				this.removeListener();
				this.emitter_ = null;
				this.listener_ = null;
			}
		}, {
			key: 'removeListener',
			value: function removeListener() {
				if (!this.emitter_.isDisposed()) {
					this.emitter_.removeListener(this.event_, this.listener_);
				}
			}
		}]);

		return EventHandle;
	}(_metal.Disposable);

	exports.default = EventHandle;
});
//# sourceMappingURL=EventHandle.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-events/src/EventEmitter", ['exports', 'metal/src/metal', './EventHandle'], function (exports, _metal, _EventHandle) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _EventHandle2 = _interopRequireDefault(_EventHandle);

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

	var singleArray_ = [0];

	/**
  * EventEmitter utility.
  * @constructor
  * @extends {Disposable}
  */

	var EventEmitter = function (_Disposable) {
		_inherits(EventEmitter, _Disposable);

		function EventEmitter() {
			_classCallCheck(this, EventEmitter);

			var _this = _possibleConstructorReturn(this, (EventEmitter.__proto__ || Object.getPrototypeOf(EventEmitter)).call(this));

			/**
    * Holds event listeners scoped by event type.
    * @type {Object<string, !Array<!function()>>}
    * @protected
    */
			_this.events_ = null;

			/**
    * Handlers that are triggered when an event is listened to.
    * @type {Array}
    */
			_this.listenerHandlers_ = null;

			/**
    * Configuration option which determines if an event facade should be sent
    * as a param of listeners when emitting events. If set to true, the facade
    * will be passed as the first argument of the listener.
    * @type {boolean}
    * @protected
    */
			_this.shouldUseFacade_ = false;
			return _this;
		}

		/**
   * Adds a handler to given holder variable. If the holder doesn't have a
   * value yet, it will receive the handler directly. If the holder is an array,
   * the value will just be added to it. Otherwise, the holder will be set to a
   * new array containing its previous value plus the new handler.
   * @param {*} holder
   * @param {!function()|Object} handler
   * @return {*} The holder's new value.
   * @protected
   */


		_createClass(EventEmitter, [{
			key: 'addHandler_',
			value: function addHandler_(holder, handler) {
				if (!holder) {
					holder = handler;
				} else {
					if (!Array.isArray(holder)) {
						holder = [holder];
					}
					holder.push(handler);
				}
				return holder;
			}
		}, {
			key: 'addListener',
			value: function addListener(event, listener, opt_default) {
				this.validateListener_(listener);

				var events = this.toEventsArray_(event);
				for (var i = 0; i < events.length; i++) {
					this.addSingleListener_(events[i], listener, opt_default);
				}

				return new _EventHandle2.default(this, event, listener);
			}
		}, {
			key: 'addSingleListener_',
			value: function addSingleListener_(event, listener, opt_default, opt_origin) {
				this.runListenerHandlers_(event);
				if (opt_default || opt_origin) {
					listener = {
						default: opt_default,
						fn: listener,
						origin: opt_origin
					};
				}
				this.events_ = this.events_ || {};
				this.events_[event] = this.addHandler_(this.events_[event], listener);
			}
		}, {
			key: 'buildFacade_',
			value: function buildFacade_(event) {
				if (this.getShouldUseFacade()) {
					var facade = {
						preventDefault: function preventDefault() {
							facade.preventedDefault = true;
						},
						target: this,
						type: event
					};
					return facade;
				}
			}
		}, {
			key: 'disposeInternal',
			value: function disposeInternal() {
				this.events_ = null;
			}
		}, {
			key: 'emit',
			value: function emit(event) {
				var listeners = this.getRawListeners_(event);
				if (listeners.length === 0) {
					return false;
				}

				var args = _metal.array.slice(arguments, 1);
				this.runListeners_(listeners, args, this.buildFacade_(event));
				return true;
			}
		}, {
			key: 'getRawListeners_',
			value: function getRawListeners_(event) {
				var directListeners = toArray(this.events_ && this.events_[event]);
				return directListeners.concat(toArray(this.events_ && this.events_['*']));
			}
		}, {
			key: 'getShouldUseFacade',
			value: function getShouldUseFacade() {
				return this.shouldUseFacade_;
			}
		}, {
			key: 'listeners',
			value: function listeners(event) {
				return this.getRawListeners_(event).map(function (listener) {
					return listener.fn ? listener.fn : listener;
				});
			}
		}, {
			key: 'many',
			value: function many(event, amount, listener) {
				var events = this.toEventsArray_(event);
				for (var i = 0; i < events.length; i++) {
					this.many_(events[i], amount, listener);
				}

				return new _EventHandle2.default(this, event, listener);
			}
		}, {
			key: 'many_',
			value: function many_(event, amount, listener) {
				var self = this;

				if (amount <= 0) {
					return;
				}

				function handlerInternal() {
					if (--amount === 0) {
						self.removeListener(event, handlerInternal);
					}
					listener.apply(self, arguments);
				}

				self.addSingleListener_(event, handlerInternal, false, listener);
			}
		}, {
			key: 'matchesListener_',
			value: function matchesListener_(listenerObj, listener) {
				var fn = listenerObj.fn || listenerObj;
				return fn === listener || listenerObj.origin && listenerObj.origin === listener;
			}
		}, {
			key: 'off',
			value: function off(event, listener) {
				this.validateListener_(listener);
				if (!this.events_) {
					return this;
				}

				var events = this.toEventsArray_(event);
				for (var i = 0; i < events.length; i++) {
					this.events_[events[i]] = this.removeMatchingListenerObjs_(toArray(this.events_[events[i]]), listener);
				}

				return this;
			}
		}, {
			key: 'on',
			value: function on() {
				return this.addListener.apply(this, arguments);
			}
		}, {
			key: 'onListener',
			value: function onListener(handler) {
				this.listenerHandlers_ = this.addHandler_(this.listenerHandlers_, handler);
			}
		}, {
			key: 'once',
			value: function once(events, listener) {
				return this.many(events, 1, listener);
			}
		}, {
			key: 'removeAllListeners',
			value: function removeAllListeners(opt_events) {
				if (this.events_) {
					if (opt_events) {
						var events = this.toEventsArray_(opt_events);
						for (var i = 0; i < events.length; i++) {
							this.events_[events[i]] = null;
						}
					} else {
						this.events_ = null;
					}
				}
				return this;
			}
		}, {
			key: 'removeMatchingListenerObjs_',
			value: function removeMatchingListenerObjs_(listenerObjs, listener) {
				var finalListeners = [];
				for (var i = 0; i < listenerObjs.length; i++) {
					if (!this.matchesListener_(listenerObjs[i], listener)) {
						finalListeners.push(listenerObjs[i]);
					}
				}
				return finalListeners.length > 0 ? finalListeners : null;
			}
		}, {
			key: 'removeListener',
			value: function removeListener() {
				return this.off.apply(this, arguments);
			}
		}, {
			key: 'runListenerHandlers_',
			value: function runListenerHandlers_(event) {
				var handlers = this.listenerHandlers_;
				if (handlers) {
					handlers = toArray(handlers);
					for (var i = 0; i < handlers.length; i++) {
						handlers[i](event);
					}
				}
			}
		}, {
			key: 'runListeners_',
			value: function runListeners_(listeners, args, facade) {
				if (facade) {
					args.push(facade);
				}

				var defaultListeners = [];
				for (var i = 0; i < listeners.length; i++) {
					var listener = listeners[i].fn || listeners[i];
					if (listeners[i].default) {
						defaultListeners.push(listener);
					} else {
						listener.apply(this, args);
					}
				}
				if (!facade || !facade.preventedDefault) {
					for (var j = 0; j < defaultListeners.length; j++) {
						defaultListeners[j].apply(this, args);
					}
				}
			}
		}, {
			key: 'setShouldUseFacade',
			value: function setShouldUseFacade(shouldUseFacade) {
				this.shouldUseFacade_ = shouldUseFacade;
				return this;
			}
		}, {
			key: 'toEventsArray_',
			value: function toEventsArray_(events) {
				if ((0, _metal.isString)(events)) {
					singleArray_[0] = events;
					events = singleArray_;
				}
				return events;
			}
		}, {
			key: 'validateListener_',
			value: function validateListener_(listener) {
				if (!(0, _metal.isFunction)(listener)) {
					throw new TypeError('Listener must be a function');
				}
			}
		}]);

		return EventEmitter;
	}(_metal.Disposable);

	function toArray(val) {
		val = val || [];
		return Array.isArray(val) ? val : [val];
	}

	exports.default = EventEmitter;
});
//# sourceMappingURL=EventEmitter.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-events/src/EventEmitterProxy", ['exports', 'metal/src/metal'], function (exports, _metal) {
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

	var EventEmitterProxy = function (_Disposable) {
		_inherits(EventEmitterProxy, _Disposable);

		function EventEmitterProxy(originEmitter, targetEmitter, opt_blacklist, opt_whitelist) {
			_classCallCheck(this, EventEmitterProxy);

			var _this = _possibleConstructorReturn(this, (EventEmitterProxy.__proto__ || Object.getPrototypeOf(EventEmitterProxy)).call(this));

			/**
    * Map of events that should not be proxied.
    * @type {Object}
    * @protected
    */
			_this.blacklist_ = opt_blacklist;

			/**
    * The origin emitter. This emitter's events will be proxied through the
    * target emitter.
    * @type {EventEmitter}
    * @protected
    */
			_this.originEmitter_ = originEmitter;

			/**
    * A list of events that are pending to be listened by an actual origin
    * emitter. Events are stored here when the origin doesn't exist, so they
    * can be set on a new origin when one is set.
    * @type {Array}
    * @protected
    */
			_this.pendingEvents_ = null;

			/**
    * Holds a map of events from the origin emitter that are already being proxied.
    * @type {Object<string, !EventHandle>}
    * @protected
    */
			_this.proxiedEvents_ = null;

			/**
    * The target emitter. This emitter will emit all events that come from
    * the origin emitter.
    * @type {EventEmitter}
    * @protected
    */
			_this.targetEmitter_ = targetEmitter;

			/**
    * Map of events that should be proxied. If whitelist is set blacklist is ignored.
    * @type {Object}
    * @protected
    */
			_this.whitelist_ = opt_whitelist;

			_this.startProxy_();
			return _this;
		}

		/**
   * Adds the given listener for the given event.
   * @param {string} event
   * @param {!function()} listener
   * @return {!EventHandle} The listened event's handle.
   * @protected
   */


		_createClass(EventEmitterProxy, [{
			key: 'addListener_',
			value: function addListener_(event, listener) {
				return this.originEmitter_.on(event, listener);
			}
		}, {
			key: 'disposeInternal',
			value: function disposeInternal() {
				this.removeListeners_();
				this.proxiedEvents_ = null;
				this.originEmitter_ = null;
				this.targetEmitter_ = null;
			}
		}, {
			key: 'emitOnTarget_',
			value: function emitOnTarget_() {
				this.targetEmitter_.emit.apply(this.targetEmitter_, arguments);
			}
		}, {
			key: 'proxyEvent',
			value: function proxyEvent(event) {
				if (this.shouldProxyEvent_(event)) {
					this.tryToAddListener_(event);
				}
			}
		}, {
			key: 'removeListeners_',
			value: function removeListeners_() {
				if (this.proxiedEvents_) {
					var events = Object.keys(this.proxiedEvents_);
					for (var i = 0; i < events.length; i++) {
						this.proxiedEvents_[events[i]].removeListener();
					}
					this.proxiedEvents_ = null;
				}
				this.pendingEvents_ = null;
			}
		}, {
			key: 'setOriginEmitter',
			value: function setOriginEmitter(originEmitter) {
				var _this2 = this;

				var events = this.originEmitter_ && this.proxiedEvents_ ? Object.keys(this.proxiedEvents_) : this.pendingEvents_;
				this.originEmitter_ = originEmitter;
				if (events) {
					this.removeListeners_();
					events.forEach(function (event) {
						return _this2.proxyEvent(event);
					});
				}
			}
		}, {
			key: 'shouldProxyEvent_',
			value: function shouldProxyEvent_(event) {
				if (this.whitelist_ && !this.whitelist_[event]) {
					return false;
				}
				if (this.blacklist_ && this.blacklist_[event]) {
					return false;
				}
				return !this.proxiedEvents_ || !this.proxiedEvents_[event];
			}
		}, {
			key: 'startProxy_',
			value: function startProxy_() {
				this.targetEmitter_.onListener(this.proxyEvent.bind(this));
			}
		}, {
			key: 'tryToAddListener_',
			value: function tryToAddListener_(event) {
				if (this.originEmitter_) {
					this.proxiedEvents_ = this.proxiedEvents_ || {};
					this.proxiedEvents_[event] = this.addListener_(event, this.emitOnTarget_.bind(this, event));
				} else {
					this.pendingEvents_ = this.pendingEvents_ || [];
					this.pendingEvents_.push(event);
				}
			}
		}]);

		return EventEmitterProxy;
	}(_metal.Disposable);

	exports.default = EventEmitterProxy;
});
//# sourceMappingURL=EventEmitterProxy.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-events/src/EventHandler", ['exports', 'metal/src/metal'], function (exports, _metal) {
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

	var EventHandler = function (_Disposable) {
		_inherits(EventHandler, _Disposable);

		function EventHandler() {
			_classCallCheck(this, EventHandler);

			var _this = _possibleConstructorReturn(this, (EventHandler.__proto__ || Object.getPrototypeOf(EventHandler)).call(this));

			/**
    * An array that holds the added event handles, so the listeners can be
    * removed later.
    * @type {Array.<EventHandle>}
    * @protected
    */
			_this.eventHandles_ = [];
			return _this;
		}

		/**
   * Adds event handles to be removed later through the `removeAllListeners`
   * method.
   * @param {...(!EventHandle)} var_args
   */


		_createClass(EventHandler, [{
			key: 'add',
			value: function add() {
				for (var i = 0; i < arguments.length; i++) {
					this.eventHandles_.push(arguments[i]);
				}
			}
		}, {
			key: 'disposeInternal',
			value: function disposeInternal() {
				this.eventHandles_ = null;
			}
		}, {
			key: 'removeAllListeners',
			value: function removeAllListeners() {
				for (var i = 0; i < this.eventHandles_.length; i++) {
					this.eventHandles_[i].removeListener();
				}

				this.eventHandles_ = [];
			}
		}]);

		return EventHandler;
	}(_metal.Disposable);

	exports.default = EventHandler;
});
//# sourceMappingURL=EventHandler.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-events/src/events", ['exports', './EventEmitter', './EventEmitterProxy', './EventHandle', './EventHandler'], function (exports, _EventEmitter, _EventEmitterProxy, _EventHandle, _EventHandler) {
  'use strict';

  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.EventHandler = exports.EventHandle = exports.EventEmitterProxy = exports.EventEmitter = undefined;

  var _EventEmitter2 = _interopRequireDefault(_EventEmitter);

  var _EventEmitterProxy2 = _interopRequireDefault(_EventEmitterProxy);

  var _EventHandle2 = _interopRequireDefault(_EventHandle);

  var _EventHandler2 = _interopRequireDefault(_EventHandler);

  function _interopRequireDefault(obj) {
    return obj && obj.__esModule ? obj : {
      default: obj
    };
  }

  exports.default = _EventEmitter2.default;
  exports.EventEmitter = _EventEmitter2.default;
  exports.EventEmitterProxy = _EventEmitterProxy2.default;
  exports.EventHandle = _EventHandle2.default;
  exports.EventHandler = _EventHandler2.default;
});
//# sourceMappingURL=events.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-dom/src/DomDelegatedEventHandle", ['exports', 'metal/src/metal', './domData', 'metal-events/src/events'], function (exports, _metal, _domData, _events) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _domData2 = _interopRequireDefault(_domData);

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

	var DomDelegatedEventHandle = function (_EventHandle) {
		_inherits(DomDelegatedEventHandle, _EventHandle);

		/**
   * The constructor for `DomDelegatedEventHandle`.
   * @param {!Event} emitter Element the event was subscribed to.
   * @param {string} event The name of the event that was subscribed to.
   * @param {!Function} listener The listener subscribed to the event.
   * @param {string=} opt_selector An optional selector used when delegating
   *     the event.
   * @constructor
   */
		function DomDelegatedEventHandle(emitter, event, listener, opt_selector) {
			_classCallCheck(this, DomDelegatedEventHandle);

			var _this = _possibleConstructorReturn(this, (DomDelegatedEventHandle.__proto__ || Object.getPrototypeOf(DomDelegatedEventHandle)).call(this, emitter, event, listener));

			_this.selector_ = opt_selector;
			return _this;
		}

		/**
   * @inheritDoc
   */


		_createClass(DomDelegatedEventHandle, [{
			key: 'removeListener',
			value: function removeListener() {
				var delegating = _domData2.default.get(this.emitter_, 'delegating', {});
				var listeners = _domData2.default.get(this.emitter_, 'listeners', {});
				var selector = this.selector_;
				var arr = (0, _metal.isString)(selector) ? delegating[this.event_].selectors : listeners;
				var key = (0, _metal.isString)(selector) ? selector : this.event_;

				_metal.array.remove(arr[key] || [], this.listener_);
				if (arr[key] && arr[key].length === 0) {
					delete arr[key];
				}
			}
		}]);

		return DomDelegatedEventHandle;
	}(_events.EventHandle);

	exports.default = DomDelegatedEventHandle;
});
//# sourceMappingURL=DomDelegatedEventHandle.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-dom/src/DomEventHandle", ['exports', 'metal-events/src/events'], function (exports, _events) {
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

	var DomEventHandle = function (_EventHandle) {
		_inherits(DomEventHandle, _EventHandle);

		/**
   * The constructor for `DomEventHandle`.
   * @param {!EventEmitter} emitter Emitter the event was subscribed to.
   * @param {string} event The name of the event that was subscribed to.
   * @param {!Function} listener The listener subscribed to the event.
   * @param {boolean} opt_capture Flag indicating if listener should be triggered
   *   during capture phase, instead of during the bubbling phase. Defaults to false.
   * @constructor
   */
		function DomEventHandle(emitter, event, listener, opt_capture) {
			_classCallCheck(this, DomEventHandle);

			var _this = _possibleConstructorReturn(this, (DomEventHandle.__proto__ || Object.getPrototypeOf(DomEventHandle)).call(this, emitter, event, listener));

			_this.capture_ = opt_capture;
			return _this;
		}

		/**
   * @inheritDoc
   */


		_createClass(DomEventHandle, [{
			key: 'removeListener',
			value: function removeListener() {
				this.emitter_.removeEventListener(this.event_, this.listener_, this.capture_);
			}
		}]);

		return DomEventHandle;
	}(_events.EventHandle);

	exports.default = DomEventHandle;
});
//# sourceMappingURL=DomEventHandle.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-dom/src/domNamed", ['exports', 'metal/src/metal', './domData', './DomDelegatedEventHandle', './DomEventHandle'], function (exports, _metal, _domData, _DomDelegatedEventHandle, _DomEventHandle) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});
	exports.customEvents = undefined;
	exports.addClasses = addClasses;
	exports.closest = closest;
	exports.append = append;
	exports.buildFragment = buildFragment;
	exports.contains = contains;
	exports.delegate = delegate;
	exports.enterDocument = enterDocument;
	exports.exitDocument = exitDocument;
	exports.hasClass = hasClass;
	exports.isEmpty = isEmpty;
	exports.match = match;
	exports.next = next;
	exports.on = on;
	exports.once = once;
	exports.parent = parent;
	exports.registerCustomEvent = registerCustomEvent;
	exports.removeChildren = removeChildren;
	exports.removeClasses = removeClasses;
	exports.replace = replace;
	exports.supportsEvent = supportsEvent;
	exports.toElement = toElement;
	exports.toggleClasses = toggleClasses;
	exports.triggerEvent = triggerEvent;

	var _domData2 = _interopRequireDefault(_domData);

	var _DomDelegatedEventHandle2 = _interopRequireDefault(_DomDelegatedEventHandle);

	var _DomEventHandle2 = _interopRequireDefault(_DomEventHandle);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	var elementsByTag_ = {};
	var supportCache_ = {};
	var customEvents = exports.customEvents = {};

	var LAST_CONTAINER = '__metal_last_container__';
	var USE_CAPTURE = {
		blur: true,
		error: true,
		focus: true,
		invalid: true,
		load: true,
		scroll: true
	};

	/**
  * Adds the requested CSS classes to an element.
  * @param {!Element|!Nodelist} elements The element or elements to add CSS classes to.
  * @param {string} classes CSS classes to add.
  */
	function addClasses(elements, classes) {
		if (!(0, _metal.isObject)(elements) || !(0, _metal.isString)(classes)) {
			return;
		}

		if (!elements.length) {
			elements = [elements];
		}

		for (var i = 0; i < elements.length; i++) {
			if ('classList' in elements[i]) {
				addClassesWithNative_(elements[i], classes);
			} else {
				addClassesWithoutNative_(elements[i], classes);
			}
		}
	}

	/**
  * Adds the requested CSS classes to an element using classList.
  * @param {!Element} element The element to add CSS classes to.
  * @param {string} classes CSS classes to add.
  * @private
  */
	function addClassesWithNative_(element, classes) {
		classes.split(' ').forEach(function (className) {
			if (className) {
				element.classList.add(className);
			}
		});
	}

	/**
  * Adds the requested CSS classes to an element without using classList.
  * @param {!Element} element The element to add CSS classes to.
  * @param {string} classes CSS classes to add.
  * @private
  */
	function addClassesWithoutNative_(element, classes) {
		var elementClassName = ' ' + element.className + ' ';
		var classesToAppend = '';

		classes = classes.split(' ');

		for (var i = 0; i < classes.length; i++) {
			var className = classes[i];

			if (elementClassName.indexOf(' ' + className + ' ') === -1) {
				classesToAppend += ' ' + className;
			}
		}

		if (classesToAppend) {
			element.className = element.className + classesToAppend;
		}
	}

	/**
  * Adds an event listener to the given element, to be triggered via delegate.
  * @param {!Element} element
  * @param {string} eventName
  * @param {!function()} listener
  * @private
  */
	function addElementListener_(element, eventName, listener) {
		addToArr_(_domData2.default.get(element, 'listeners', {}), eventName, listener);
	}

	/**
  * Adds an event listener to the given element, to be triggered via delegate
  * selectors.
  * @param {!Element} element
  * @param {string} eventName
  * @param {string} selector
  * @param {!function()} listener
  * @private
  */
	function addSelectorListener_(element, eventName, selector, listener) {
		var delegatingData = _domData2.default.get(element, 'delegating', {});
		addToArr_(delegatingData[eventName].selectors, selector, listener);
	}

	/**
  * Adds a value to an array inside an object, creating it first if it doesn't
  * yet exist.
  * @param {!Array} arr
  * @param {string} key
  * @param {*} value
  * @private
  */
	function addToArr_(arr, key, value) {
		if (!arr[key]) {
			arr[key] = [];
		}
		arr[key].push(value);
	}

	/**
  * Attaches a delegate listener, unless there's already one attached.
  * @param {!Element} element
  * @param {string} eventName
  * @private
  */
	function attachDelegateEvent_(element, eventName) {
		var delegatingData = _domData2.default.get(element, 'delegating', {});
		if (!delegatingData[eventName]) {
			delegatingData[eventName] = {
				handle: on(element, eventName, handleDelegateEvent_, !!USE_CAPTURE[eventName]),
				selectors: {}
			};
		}
	}

	/**
  * Gets the closest element up the tree from the given element (including
  * itself) that matches the specified selector, or null if none match.
  * @param {Element} element
  * @param {string} selector
  * @return {Element}
  */
	function closest(element, selector) {
		while (element && !match(element, selector)) {
			element = element.parentNode;
		}
		return element;
	}

	/**
  * Appends a child node with text or other nodes to a parent node. If
  * child is a HTML string it will be automatically converted to a document
  * fragment before appending it to the parent.
  * @param {!Element} parent The node to append nodes to.
  * @param {!(Element|NodeList|string)} child The thing to append to the parent.
  * @return {!Element} The appended child.
  */
	function append(parent, child) {
		if ((0, _metal.isString)(child)) {
			child = buildFragment(child);
		}
		if (child instanceof NodeList) {
			var childArr = Array.prototype.slice.call(child);
			for (var i = 0; i < childArr.length; i++) {
				parent.appendChild(childArr[i]);
			}
		} else {
			parent.appendChild(child);
		}
		return child;
	}

	/**
  * Helper for converting a HTML string into a document fragment.
  * @param {string} htmlString The HTML string to convert.
  * @return {!Element} The resulting document fragment.
  */
	function buildFragment(htmlString) {
		var tempDiv = document.createElement('div');
		tempDiv.innerHTML = '<br>' + htmlString;
		tempDiv.removeChild(tempDiv.firstChild);

		var fragment = document.createDocumentFragment();
		while (tempDiv.firstChild) {
			fragment.appendChild(tempDiv.firstChild);
		}
		return fragment;
	}

	/**
  * Checks if the first element contains the second one.
  * @param {!Element} element1
  * @param {!Element} element2
  * @return {boolean}
  */
	function contains(element1, element2) {
		if ((0, _metal.isDocument)(element1)) {
			// document.contains is not defined on IE9, so call it on documentElement instead.
			return element1.documentElement.contains(element2);
		} else {
			return element1.contains(element2);
		}
	}

	/**
  * Listens to the specified event on the given DOM element, but only calls the
  * given callback listener when it's triggered by elements that match the
  * given selector or target element.
  * @param {!Element} element The DOM element the event should be listened on.
  * @param {string} eventName The name of the event to listen to.
  * @param {!Element|string} selectorOrTarget Either an element or css selector
  *     that should match the event for the listener to be triggered.
  * @param {!function(!Object)} callback Function to be called when the event
  *     is triggered. It will receive the normalized event object.
  * @param {boolean=} opt_default Optional flag indicating if this is a default
  *     listener. That means that it would only be executed after all non
  *     default listeners, and only if the event isn't prevented via
  *     `preventDefault`.
  * @return {!EventHandle} Can be used to remove the listener.
  */
	function delegate(element, eventName, selectorOrTarget, callback, opt_default) {
		var customConfig = customEvents[eventName];
		if (customConfig && customConfig.delegate) {
			eventName = customConfig.originalEvent;
			callback = customConfig.handler.bind(customConfig, callback);
		}

		if (opt_default) {
			// Wrap callback so we don't set property directly on it.
			callback = callback.bind();
			callback.defaultListener_ = true;
		}

		attachDelegateEvent_(element, eventName);
		if ((0, _metal.isString)(selectorOrTarget)) {
			addSelectorListener_(element, eventName, selectorOrTarget, callback);
		} else {
			addElementListener_(selectorOrTarget, eventName, callback);
		}

		return new _DomDelegatedEventHandle2.default((0, _metal.isString)(selectorOrTarget) ? element : selectorOrTarget, eventName, callback, (0, _metal.isString)(selectorOrTarget) ? selectorOrTarget : null);
	}

	/**
  * Verifies if the element is able to trigger the Click event,
  * simulating browsers behaviour, avoiding event listeners to be called by triggerEvent method.
  * @param {Element} node Element to be checked.
  * @param {string} eventName The event name.
  * @private
  */
	function isAbleToInteractWith_(node, eventName, opt_eventObj) {
		if (opt_eventObj && eventName === 'click' && opt_eventObj.button === 2) {
			// Firefox triggers "click" events on the document for right clicks. This
			// causes our delegate logic to trigger it for regular elements too, which
			// shouldn't happen. Ignoring them here.
			return false;
		}

		var matchesSelector = ['BUTTON', 'INPUT', 'SELECT', 'TEXTAREA', 'FIELDSET'];
		if (eventName === 'click' && matchesSelector.indexOf(node.tagName) > -1) {
			return !(node.disabled || parent(node, 'fieldset[disabled]'));
		}
		return true;
	}

	/**
  * Inserts node in document as last element.
  * @param {Element} node Element to remove children from.
  */
	function enterDocument(node) {
		node && append(document.body, node);
	}

	/**
  * Removes node from document.
  * @param {Element} node Element to remove children from.
  */
	function exitDocument(node) {
		if (node && node.parentNode) {
			node.parentNode.removeChild(node);
		}
	}

	/**
  * This is called when an event is triggered by a delegate listener. All
  * matching listeners of this event type from `target` to `currentTarget` will
  * be triggered.
  * @param {!Event} event The event payload.
  * @return {boolean} False if at least one of the triggered callbacks returns
  *     false, or true otherwise.
  * @private
  */
	function handleDelegateEvent_(event) {
		normalizeDelegateEvent_(event);
		var ret = true;
		var container = event.currentTarget;
		var defFns = [];

		ret &= triggerDelegatedListeners_(container, event, defFns);
		ret &= triggerDefaultDelegatedListeners_(defFns, event);

		event.delegateTarget = null;
		event[LAST_CONTAINER] = container;
		return ret;
	}

	/**
  * Checks if the given element has the requested css class.
  * @param {!Element} element
  * @param {string} className
  * @return {boolean}
  */
	function hasClass(element, className) {
		if ('classList' in element) {
			return hasClassWithNative_(element, className);
		} else {
			return hasClassWithoutNative_(element, className);
		}
	}

	/**
  * Checks if the given element has the requested css class using classList.
  * @param {!Element} element
  * @param {string} className
  * @return {boolean}
  * @private
  */
	function hasClassWithNative_(element, className) {
		return element.classList.contains(className);
	}

	/**
  * Checks if the given element has the requested css class without using classList.
  * @param {!Element} element
  * @param {string} className
  * @return {boolean}
  * @private
  */
	function hasClassWithoutNative_(element, className) {
		return (' ' + element.className + ' ').indexOf(' ' + className + ' ') >= 0;
	}

	/**
  * Checks if the given element is empty or not.
  * @param {!Element} element
  * @return {boolean}
  */
	function isEmpty(element) {
		return element.childNodes.length === 0;
	}

	/**
  * Check if an element matches a given selector.
  * @param {Element} element
  * @param {string} selector
  * @return {boolean}
  */
	function match(element, selector) {
		if (!element || element.nodeType !== 1) {
			return false;
		}

		var p = Element.prototype;
		var m = p.matches || p.webkitMatchesSelector || p.mozMatchesSelector || p.msMatchesSelector || p.oMatchesSelector;
		if (m) {
			return m.call(element, selector);
		}

		return matchFallback_(element, selector);
	}

	/**
  * Check if an element matches a given selector, using an internal implementation
  * instead of calling existing javascript functions.
  * @param {Element} element
  * @param {string} selector
  * @return {boolean}
  * @private
  */
	function matchFallback_(element, selector) {
		var nodes = document.querySelectorAll(selector, element.parentNode);
		for (var i = 0; i < nodes.length; ++i) {
			if (nodes[i] === element) {
				return true;
			}
		}
		return false;
	}

	/**
  * Returns the next sibling of the given element that matches the specified
  * selector, or null if there is none.
  * @param {!Element} element
  * @param {?string} selector
  */
	function next(element, selector) {
		do {
			element = element.nextSibling;
			if (element && match(element, selector)) {
				return element;
			}
		} while (element);
		return null;
	}

	/**
  * Normalizes the event payload for delegate listeners.
  * @param {!Event} event
  * @private
  */
	function normalizeDelegateEvent_(event) {
		event.stopPropagation = stopPropagation_;
		event.stopImmediatePropagation = stopImmediatePropagation_;
	}

	/**
  * Listens to the specified event on the given DOM element. This function normalizes
  * DOM event payloads and functions so they'll work the same way on all supported
  * browsers.
  * @param {!Element|string} element The DOM element to listen to the event on, or
  *   a selector that should be delegated on the entire document.
  * @param {string} eventName The name of the event to listen to.
  * @param {!function(!Object)} callback Function to be called when the event is
  *   triggered. It will receive the normalized event object.
  * @param {boolean} opt_capture Flag indicating if listener should be triggered
  *   during capture phase, instead of during the bubbling phase. Defaults to false.
  * @return {!DomEventHandle} Can be used to remove the listener.
  */
	function on(element, eventName, callback, opt_capture) {
		if ((0, _metal.isString)(element)) {
			return delegate(document, eventName, element, callback);
		}
		var customConfig = customEvents[eventName];
		if (customConfig && customConfig.event) {
			eventName = customConfig.originalEvent;
			callback = customConfig.handler.bind(customConfig, callback);
		}
		element.addEventListener(eventName, callback, opt_capture);
		return new _DomEventHandle2.default(element, eventName, callback, opt_capture);
	}

	/**
  * Listens to the specified event on the given DOM element once. This
  * function normalizes DOM event payloads and functions so they'll work the
  * same way on all supported browsers.
  * @param {!Element} element The DOM element to listen to the event on.
  * @param {string} eventName The name of the event to listen to.
  * @param {!function(!Object)} callback Function to be called when the event
  *   is triggered. It will receive the normalized event object.
  * @return {!DomEventHandle} Can be used to remove the listener.
  */
	function once(element, eventName, callback) {
		var domEventHandle = on(element, eventName, function () {
			domEventHandle.removeListener();
			return callback.apply(this, arguments);
		});
		return domEventHandle;
	}

	/**
  * Gets the first parent from the given element that matches the specified
  * selector, or null if none match.
  * @param {!Element} element
  * @param {string} selector
  * @return {Element}
  */
	function parent(element, selector) {
		return closest(element.parentNode, selector);
	}

	/**
  * Registers a custom event.
  * @param {string} eventName The name of the custom event.
  * @param {!Object} customConfig An object with information about how the event
  *   should be handled.
  */
	function registerCustomEvent(eventName, customConfig) {
		customEvents[eventName] = customConfig;
	}

	/**
  * Removes all the child nodes on a DOM node.
  * @param {Element} node Element to remove children from.
  */
	function removeChildren(node) {
		var child = void 0;
		while (child = node.firstChild) {
			node.removeChild(child);
		}
	}

	/**
  * Removes the requested CSS classes from an element.
  * @param {!Element|!NodeList} elements The element or elements to remove CSS classes from.
  * @param {string} classes CSS classes to remove.
  */
	function removeClasses(elements, classes) {
		if (!(0, _metal.isObject)(elements) || !(0, _metal.isString)(classes)) {
			return;
		}

		if (!elements.length) {
			elements = [elements];
		}

		for (var i = 0; i < elements.length; i++) {
			if ('classList' in elements[i]) {
				removeClassesWithNative_(elements[i], classes);
			} else {
				removeClassesWithoutNative_(elements[i], classes);
			}
		}
	}

	/**
  * Removes the requested CSS classes from an element using classList.
  * @param {!Element} element The element to remove CSS classes from.
  * @param {string} classes CSS classes to remove.
  * @private
  */
	function removeClassesWithNative_(element, classes) {
		classes.split(' ').forEach(function (className) {
			if (className) {
				element.classList.remove(className);
			}
		});
	}

	/**
  * Removes the requested CSS classes from an element without using classList.
  * @param {!Element} element The element to remove CSS classes from.
  * @param {string} classes CSS classes to remove.
  * @private
  */
	function removeClassesWithoutNative_(element, classes) {
		var elementClassName = ' ' + element.className + ' ';

		classes = classes.split(' ');

		for (var i = 0; i < classes.length; i++) {
			elementClassName = elementClassName.replace(' ' + classes[i] + ' ', ' ');
		}

		element.className = elementClassName.trim();
	}

	/**
  * Replaces the first element with the second.
  * @param {Element} element1
  * @param {Element} element2
  */
	function replace(element1, element2) {
		if (element1 && element2 && element1 !== element2 && element1.parentNode) {
			element1.parentNode.insertBefore(element2, element1);
			element1.parentNode.removeChild(element1);
		}
	}

	/**
  * The function that replaces `stopImmediatePropagation_` for events.
  * @private
  */
	function stopImmediatePropagation_() {
		var event = this; // eslint-disable-line
		event.stopped = true;
		event.stoppedImmediate = true;
		Event.prototype.stopImmediatePropagation.call(event);
	}

	/**
  * The function that replaces `stopPropagation` for events.
  * @private
  */
	function stopPropagation_() {
		var event = this; // eslint-disable-line
		event.stopped = true;
		Event.prototype.stopPropagation.call(event);
	}

	/**
  * Checks if the given element supports the given event type.
  * @param {!Element|string} element The DOM element or element tag name to check.
  * @param {string} eventName The name of the event to check.
  * @return {boolean}
  */
	function supportsEvent(element, eventName) {
		if (customEvents[eventName]) {
			return true;
		}

		if ((0, _metal.isString)(element)) {
			if (!elementsByTag_[element]) {
				elementsByTag_[element] = document.createElement(element);
			}
			element = elementsByTag_[element];
		}

		var tag = element.tagName;
		if (!supportCache_[tag] || !supportCache_[tag].hasOwnProperty(eventName)) {
			supportCache_[tag] = supportCache_[tag] || {};
			supportCache_[tag][eventName] = 'on' + eventName in element;
		}
		return supportCache_[tag][eventName];
	}

	/**
  * This triggers all default matched delegated listeners of a given event type.
  * @param {!Array} defaultFns Array to collect default listeners in, instead
  * @param {!Event} event
  * @return {boolean} False if at least one of the triggered callbacks returns
  *     false, or true otherwise.
  * @private
  */
	function triggerDefaultDelegatedListeners_(defFns, event) {
		var ret = true;

		for (var i = 0; i < defFns.length && !event.defaultPrevented; i++) {
			event.delegateTarget = defFns[i].element;
			ret &= defFns[i].fn(event);
		}

		return ret;
	}

	/**
  * This triggers all matched delegated listeners of a given event type when its
  * delegated target is able to interact.
  * @param {!Element} container
  * @param {!Event} event
  * @param {!Array} defaultFns Array to collect default listeners in, instead
  *     of running them.
  * @return {boolean} False if at least one of the triggered callbacks returns
  *     false, or true otherwise.
  * @private
  */
	function triggerDelegatedListeners_(container, event, defaultFns) {
		var ret = true;
		var currElement = event.target;
		var limit = container.parentNode;

		while (currElement && currElement !== limit && !event.stopped) {
			if (isAbleToInteractWith_(currElement, event.type, event)) {
				event.delegateTarget = currElement;
				ret &= triggerElementListeners_(currElement, event, defaultFns);
				ret &= triggerSelectorListeners_(container, currElement, event, defaultFns);
			}
			currElement = currElement.parentNode;
		}

		return ret;
	}

	/**
  * Converts the given argument to a DOM element. Strings are assumed to
  * be selectors, and so a matched element will be returned. If the arg
  * is already a DOM element it will be the return value.
  * @param {string|Element|Document} selectorOrElement
  * @return {Element} The converted element, or null if none was found.
  */
	function toElement(selectorOrElement) {
		if ((0, _metal.isElement)(selectorOrElement) || (0, _metal.isDocument)(selectorOrElement) || (0, _metal.isDocumentFragment)(selectorOrElement)) {
			return selectorOrElement;
		} else if ((0, _metal.isString)(selectorOrElement)) {
			if (selectorOrElement[0] === '#' && selectorOrElement.indexOf(' ') === -1) {
				return document.getElementById(selectorOrElement.substr(1));
			} else {
				return document.querySelector(selectorOrElement);
			}
		} else {
			return null;
		}
	}

	/**
  * Adds or removes one or more classes from an element. If any of the classes
  * is present, it will be removed from the element, or added otherwise.
  * @param {!Element} element The element which classes will be toggled.
  * @param {string} classes The classes which have to added or removed from the element.
  */
	function toggleClasses(element, classes) {
		if (!(0, _metal.isObject)(element) || !(0, _metal.isString)(classes)) {
			return;
		}

		if ('classList' in element) {
			toggleClassesWithNative_(element, classes);
		} else {
			toggleClassesWithoutNative_(element, classes);
		}
	}

	/**
  * Adds or removes one or more classes from an element using classList.
  * If any of the classes is present, it will be removed from the element,
  * or added otherwise.
  * @param {!Element} element The element which classes will be toggled.
  * @param {string} classes The classes which have to added or removed from the element.
  * @private
  */
	function toggleClassesWithNative_(element, classes) {
		classes.split(' ').forEach(function (className) {
			element.classList.toggle(className);
		});
	}

	/**
  * Adds or removes one or more classes from an element without using classList.
  * If any of the classes is present, it will be removed from the element,
  * or added otherwise.
  * @param {!Element} element The element which classes will be toggled.
  * @param {string} classes The classes which have to added or removed from the element.
  * @private
  */
	function toggleClassesWithoutNative_(element, classes) {
		var elementClassName = ' ' + element.className + ' ';

		classes = classes.split(' ');

		for (var i = 0; i < classes.length; i++) {
			var className = ' ' + classes[i] + ' ';
			var classIndex = elementClassName.indexOf(className);

			if (classIndex === -1) {
				elementClassName = '' + elementClassName + classes[i] + ' ';
			} else {
				var before = elementClassName.substring(0, classIndex);
				var after = elementClassName.substring(classIndex + className.length);
				elementClassName = before + ' ' + after;
			}
		}

		element.className = elementClassName.trim();
	}

	/**
  * Triggers all listeners for the given event type that are stored in the
  * specified element.
  * @param {!Element} element
  * @param {!Event} event
  * @param {!Array} defaultFns Array to collect default listeners in, instead
  *     of running them.
  * @return {boolean} False if at least one of the triggered callbacks returns
  *     false, or true otherwise.
  * @private
  */
	function triggerElementListeners_(element, event, defaultFns) {
		var lastContainer = event[LAST_CONTAINER];
		if (!(0, _metal.isDef)(lastContainer) || !contains(lastContainer, element)) {
			var listeners = _domData2.default.get(element, 'listeners', {})[event.type];
			return triggerListeners_(listeners, event, element, defaultFns);
		}
		return true;
	}

	/**
  * Triggers the specified event on the given element.
  * NOTE: This should mostly be used for testing, not on real code.
  * @param {!Element} element The node that should trigger the event.
  * @param {string} eventName The name of the event to be triggred.
  * @param {Object=} opt_eventObj An object with data that should be on the
  *   triggered event's payload.
  */
	function triggerEvent(element, eventName, opt_eventObj) {
		if (isAbleToInteractWith_(element, eventName, opt_eventObj)) {
			var eventObj = document.createEvent('HTMLEvents');
			eventObj.initEvent(eventName, true, true);
			_metal.object.mixin(eventObj, opt_eventObj);
			element.dispatchEvent(eventObj);
		}
	}

	/**
  * Triggers the given listeners array.
  * @param {Array<!function()>} listeners
  * @param {!Event} event
  * @param {!Element} element
  * @param {!Array} defaultFns Array to collect default listeners in, instead
  *     of running them.
  * @return {boolean} False if at least one of the triggered callbacks returns
  *     false, or true otherwise.
  * @private
  */
	function triggerListeners_(listeners, event, element, defaultFns) {
		var ret = true;
		listeners = listeners || [];
		for (var i = 0; i < listeners.length && !event.stoppedImmediate; i++) {
			if (listeners[i].defaultListener_) {
				defaultFns.push({
					element: element,
					fn: listeners[i]
				});
			} else {
				ret &= listeners[i](event);
			}
		}
		return ret;
	}

	/**
  * Triggers all selector listeners for the given event.
  * @param {!Element} container
  * @param {!Element} element
  * @param {!Event} event
  * @param {!Array} defaultFns Array to collect default listeners in, instead
  *     of running them.
  * @return {boolean} False if at least one of the triggered callbacks returns
  *     false, or true otherwise.
  * @private
  */
	function triggerSelectorListeners_(container, element, event, defaultFns) {
		var ret = true;
		var data = _domData2.default.get(container, 'delegating', {});
		var map = data[event.type].selectors;
		var selectors = Object.keys(map);
		for (var i = 0; i < selectors.length && !event.stoppedImmediate; i++) {
			if (match(element, selectors[i])) {
				var listeners = map[selectors[i]];
				ret &= triggerListeners_(listeners, event, element, defaultFns);
			}
		}
		return ret;
	}
});
//# sourceMappingURL=domNamed.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-dom/src/dom", ['exports', './domNamed'], function (exports, _domNamed) {
  'use strict';

  // This file exists just for backwards compatibility, making sure that old
  // default imports for this file still work. It's best to use the named exports
  // for each function instead though, since that allows bundlers like Rollup to
  // reduce the bundle size by removing unused code.

  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.dom = undefined;
  Object.keys(_domNamed).forEach(function (key) {
    if (key === "default" || key === "__esModule") return;
    Object.defineProperty(exports, key, {
      enumerable: true,
      get: function () {
        return _domNamed[key];
      }
    });
  });

  var dom = _interopRequireWildcard(_domNamed);

  function _interopRequireWildcard(obj) {
    if (obj && obj.__esModule) {
      return obj;
    } else {
      var newObj = {};

      if (obj != null) {
        for (var key in obj) {
          if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key];
        }
      }

      newObj.default = obj;
      return newObj;
    }
  }

  exports.default = dom;
  exports.dom = dom;
});
//# sourceMappingURL=dom.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-dom/src/DomEventEmitterProxy", ['exports', './dom', 'metal-events/src/events'], function (exports, _dom, _events) {
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

	var DomEventEmitterProxy = function (_EventEmitterProxy) {
		_inherits(DomEventEmitterProxy, _EventEmitterProxy);

		function DomEventEmitterProxy() {
			_classCallCheck(this, DomEventEmitterProxy);

			return _possibleConstructorReturn(this, (DomEventEmitterProxy.__proto__ || Object.getPrototypeOf(DomEventEmitterProxy)).apply(this, arguments));
		}

		_createClass(DomEventEmitterProxy, [{
			key: 'addListener_',
			value: function addListener_(event, listener) {
				if (this.originEmitter_.addEventListener) {
					if (this.isDelegateEvent_(event)) {
						var index = event.indexOf(':', 9);
						var eventName = event.substring(9, index);
						var selector = event.substring(index + 1);
						return (0, _dom.delegate)(this.originEmitter_, eventName, selector, listener);
					} else {
						return (0, _dom.on)(this.originEmitter_, event, listener);
					}
				} else {
					return _get(DomEventEmitterProxy.prototype.__proto__ || Object.getPrototypeOf(DomEventEmitterProxy.prototype), 'addListener_', this).call(this, event, listener);
				}
			}
		}, {
			key: 'isDelegateEvent_',
			value: function isDelegateEvent_(event) {
				return event.substr(0, 9) === 'delegate:';
			}
		}, {
			key: 'isSupportedDomEvent_',
			value: function isSupportedDomEvent_(event) {
				if (!this.originEmitter_ || !this.originEmitter_.addEventListener) {
					return true;
				}
				return this.isDelegateEvent_(event) && event.indexOf(':', 9) !== -1 || (0, _dom.supportsEvent)(this.originEmitter_, event);
			}
		}, {
			key: 'shouldProxyEvent_',
			value: function shouldProxyEvent_(event) {
				return _get(DomEventEmitterProxy.prototype.__proto__ || Object.getPrototypeOf(DomEventEmitterProxy.prototype), 'shouldProxyEvent_', this).call(this, event) && this.isSupportedDomEvent_(event);
			}
		}]);

		return DomEventEmitterProxy;
	}(_events.EventEmitterProxy);

	exports.default = DomEventEmitterProxy;
});
//# sourceMappingURL=DomEventEmitterProxy.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-dom/src/features", ['exports', './dom', 'metal/src/metal'], function (exports, _dom, _metal) {
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

	var features = function () {
		function features() {
			_classCallCheck(this, features);
		}

		_createClass(features, null, [{
			key: 'checkAnimationEventName',
			value: function checkAnimationEventName() {
				if (features.animationEventName_ === undefined) {
					features.animationEventName_ = {
						animation: features.checkAnimationEventName_('animation'),
						transition: features.checkAnimationEventName_('transition')
					};
				}
				return features.animationEventName_;
			}
		}, {
			key: 'checkAnimationEventName_',
			value: function checkAnimationEventName_(type) {
				var prefixes = ['Webkit', 'MS', 'O', ''];
				var typeTitleCase = _metal.string.replaceInterval(type, 0, 1, type.substring(0, 1).toUpperCase());
				var suffixes = [typeTitleCase + 'End', typeTitleCase + 'End', typeTitleCase + 'End', type + 'end'];
				for (var i = 0; i < prefixes.length; i++) {
					if (features.animationElement_.style[prefixes[i] + typeTitleCase] !== undefined) {
						return prefixes[i].toLowerCase() + suffixes[i];
					}
				}
				return type + 'end';
			}
		}, {
			key: 'checkAttrOrderChange',
			value: function checkAttrOrderChange() {
				if (features.attrOrderChange_ === undefined) {
					var originalContent = '<div data-component="" data-ref=""></div>';
					var element = document.createElement('div');
					(0, _dom.append)(element, originalContent);
					features.attrOrderChange_ = originalContent !== element.innerHTML;
				}
				return features.attrOrderChange_;
			}
		}]);

		return features;
	}();

	features.animationElement_ = document.createElement('div');
	features.animationEventName_ = undefined;
	features.attrOrderChange_ = undefined;

	exports.default = features;
});
//# sourceMappingURL=features.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-dom/src/globalEval", ['exports', 'metal/src/metal', './dom'], function (exports, _metal, _dom) {
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

	var globalEval = function () {
		function globalEval() {
			_classCallCheck(this, globalEval);
		}

		_createClass(globalEval, null, [{
			key: 'run',
			value: function run(text, opt_appendFn) {
				var script = document.createElement('script');
				script.text = text;
				if (opt_appendFn) {
					opt_appendFn(script);
				} else {
					document.head.appendChild(script);
				}
				(0, _dom.exitDocument)(script);
				return script;
			}
		}, {
			key: 'runFile',
			value: function runFile(src, opt_callback, opt_appendFn) {
				var script = document.createElement('script');
				script.src = src;

				var callback = function callback() {
					(0, _dom.exitDocument)(script);
					opt_callback && opt_callback();
				};
				(0, _dom.once)(script, 'load', callback);
				(0, _dom.once)(script, 'error', callback);

				if (opt_appendFn) {
					opt_appendFn(script);
				} else {
					document.head.appendChild(script);
				}

				return script;
			}
		}, {
			key: 'runScript',
			value: function runScript(script, opt_callback, opt_appendFn) {
				var callback = function callback() {
					opt_callback && opt_callback();
				};
				if (script.type && script.type !== 'text/javascript') {
					_metal.async.nextTick(callback);
					return;
				}
				(0, _dom.exitDocument)(script);
				if (script.src) {
					return globalEval.runFile(script.src, opt_callback, opt_appendFn);
				} else {
					_metal.async.nextTick(callback);
					return globalEval.run(script.text, opt_appendFn);
				}
			}
		}, {
			key: 'runScriptsInElement',
			value: function runScriptsInElement(element, opt_callback, opt_appendFn) {
				var scripts = element.querySelectorAll('script');
				if (scripts.length) {
					globalEval.runScriptsInOrder(scripts, 0, opt_callback, opt_appendFn);
				} else if (opt_callback) {
					_metal.async.nextTick(opt_callback);
				}
			}
		}, {
			key: 'runScriptsInOrder',
			value: function runScriptsInOrder(scripts, index, opt_callback, opt_appendFn) {
				globalEval.runScript(scripts.item(index), function () {
					if (index < scripts.length - 1) {
						globalEval.runScriptsInOrder(scripts, index + 1, opt_callback, opt_appendFn);
					} else if (opt_callback) {
						_metal.async.nextTick(opt_callback);
					}
				}, opt_appendFn);
			}
		}]);

		return globalEval;
	}();

	exports.default = globalEval;
});
//# sourceMappingURL=globalEval.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-dom/src/globalEvalStyles", ['exports', 'metal/src/metal', './dom'], function (exports, _metal, _dom) {
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

	var globalEvalStyles = function () {
		function globalEvalStyles() {
			_classCallCheck(this, globalEvalStyles);
		}

		_createClass(globalEvalStyles, null, [{
			key: 'run',
			value: function run(text, opt_appendFn) {
				var style = document.createElement('style');
				style.innerHTML = text;
				if (opt_appendFn) {
					opt_appendFn(style);
				} else {
					document.head.appendChild(style);
				}
				return style;
			}
		}, {
			key: 'runFile',
			value: function runFile(href, opt_callback, opt_appendFn) {
				var link = document.createElement('link');
				link.rel = 'stylesheet';
				link.href = href;
				globalEvalStyles.runStyle(link, opt_callback, opt_appendFn);
				return link;
			}
		}, {
			key: 'runStyle',
			value: function runStyle(style, opt_callback, opt_appendFn) {
				var callback = function callback() {
					opt_callback && opt_callback();
				};
				if (style.rel && style.rel !== 'stylesheet') {
					_metal.async.nextTick(callback);
					return;
				}

				if (style.tagName === 'STYLE') {
					_metal.async.nextTick(callback);
				} else {
					(0, _dom.once)(style, 'load', callback);
					(0, _dom.once)(style, 'error', callback);
				}

				if (opt_appendFn) {
					opt_appendFn(style);
				} else {
					document.head.appendChild(style);
				}

				return style;
			}
		}, {
			key: 'runStylesInElement',
			value: function runStylesInElement(element, opt_callback, opt_appendFn) {
				var styles = element.querySelectorAll('style,link');
				if (styles.length === 0 && opt_callback) {
					_metal.async.nextTick(opt_callback);
					return;
				}

				var loadCount = 0;
				var callback = function callback() {
					if (opt_callback && ++loadCount === styles.length) {
						_metal.async.nextTick(opt_callback);
					}
				};
				for (var i = 0; i < styles.length; i++) {
					globalEvalStyles.runStyle(styles[i], callback, opt_appendFn);
				}
			}
		}]);

		return globalEvalStyles;
	}();

	exports.default = globalEvalStyles;
});
//# sourceMappingURL=globalEvalStyles.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-dom/src/events", ['./dom', './features'], function (_dom, _features) {
	'use strict';

	var _features2 = _interopRequireDefault(_features);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	var mouseEventMap = {
		mouseenter: 'mouseover',
		mouseleave: 'mouseout',
		pointerenter: 'pointerover',
		pointerleave: 'pointerout'
	};
	Object.keys(mouseEventMap).forEach(function (eventName) {
		(0, _dom.registerCustomEvent)(eventName, {
			delegate: true,
			handler: function handler(callback, event) {
				var related = event.relatedTarget;
				var target = event.delegateTarget;
				if (!related || related !== target && !(0, _dom.contains)(target, related)) {
					event.customType = eventName;
					return callback(event);
				}
			},
			originalEvent: mouseEventMap[eventName]
		});
	});

	var animationEventMap = {
		animation: 'animationend',
		transition: 'transitionend'
	};
	Object.keys(animationEventMap).forEach(function (eventType) {
		var eventName = animationEventMap[eventType];
		(0, _dom.registerCustomEvent)(eventName, {
			event: true,
			delegate: true,
			handler: function handler(callback, event) {
				event.customType = eventName;
				return callback(event);
			},
			originalEvent: _features2.default.checkAnimationEventName()[eventType]
		});
	});
});
//# sourceMappingURL=events.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-dom/src/all/dom", ['exports', '../dom', '../domData', '../DomEventEmitterProxy', '../DomEventHandle', '../features', '../globalEval', '../globalEvalStyles', '../events'], function (exports, _dom, _domData, _DomEventEmitterProxy, _DomEventHandle, _features, _globalEval, _globalEvalStyles) {
  'use strict';

  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.globalEvalStyles = exports.globalEval = exports.features = exports.DomEventHandle = exports.DomEventEmitterProxy = exports.domData = undefined;
  Object.keys(_dom).forEach(function (key) {
    if (key === "default" || key === "__esModule") return;
    Object.defineProperty(exports, key, {
      enumerable: true,
      get: function () {
        return _dom[key];
      }
    });
  });

  var _dom2 = _interopRequireDefault(_dom);

  var _domData2 = _interopRequireDefault(_domData);

  var _DomEventEmitterProxy2 = _interopRequireDefault(_DomEventEmitterProxy);

  var _DomEventHandle2 = _interopRequireDefault(_DomEventHandle);

  var _features2 = _interopRequireDefault(_features);

  var _globalEval2 = _interopRequireDefault(_globalEval);

  var _globalEvalStyles2 = _interopRequireDefault(_globalEvalStyles);

  function _interopRequireDefault(obj) {
    return obj && obj.__esModule ? obj : {
      default: obj
    };
  }

  exports.domData = _domData2.default;
  exports.DomEventEmitterProxy = _DomEventEmitterProxy2.default;
  exports.DomEventHandle = _DomEventHandle2.default;
  exports.features = _features2.default;
  exports.globalEval = _globalEval2.default;
  exports.globalEvalStyles = _globalEvalStyles2.default;
  exports.default = _dom2.default;
});
//# sourceMappingURL=dom.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-promise/src/promise/Promise", ['exports', 'metal/src/metal'], function (exports, _metal) {
  /*!
   * Promises polyfill from Google's Closure Library.
   *
   *      Copyright 2013 The Closure Library Authors. All Rights Reserved.
   *
   * NOTE(eduardo): Promise support is not ready on all supported browsers,
   * therefore metal-promise is temporarily using Google's promises as polyfill.
   * It supports cancellable promises and has clean and fast implementation.
   */

  'use strict';

  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.CancellablePromise = undefined;

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

  /**
   * Provides a more strict interface for Thenables in terms of
   * http://promisesaplus.com for interop with {@see CancellablePromise}.
   *
   * @interface
   * @extends {IThenable.<TYPE>}
   * @template TYPE
   */
  var Thenable = function Thenable() {};

  /**
   * Adds callbacks that will operate on the result of the Thenable, returning a
   * new child Promise.
   *
   * If the Thenable is fulfilled, the {@code onFulfilled} callback will be
   * invoked with the fulfillment value as argument, and the child Promise will
   * be fulfilled with the return value of the callback. If the callback throws
   * an exception, the child Promise will be rejected with the thrown value
   * instead.
   *
   * If the Thenable is rejected, the {@code onRejected} callback will be invoked
   * with the rejection reason as argument, and the child Promise will be rejected
   * with the return value of the callback or thrown value.
   *
   * @param {?(function(this:THIS, TYPE):
   *             (RESULT|IThenable.<RESULT>|Thenable))=} opt_onFulfilled A
   *     function that will be invoked with the fulfillment value if the Promise
   *     is fullfilled.
   * @param {?(function(*): *)=} opt_onRejected A function that will be invoked
   *     with the rejection reason if the Promise is rejected.
   * @param {THIS=} opt_context An optional context object that will be the
   *     execution context for the callbacks. By default, functions are executed
   *     with the default this.
   * @return {!CancellablePromise.<RESULT>} A new Promise that will receive the
   *     result of the fulfillment or rejection callback.
   * @template RESULT,THIS
   */
  Thenable.prototype.then = function () {};

  /**
   * An expando property to indicate that an object implements
   * {@code Thenable}.
   *
   * {@see addImplementation}.
   *
   * @const
   */
  Thenable.IMPLEMENTED_BY_PROP = '$goog_Thenable';

  /**
   * Marks a given class (constructor) as an implementation of Thenable, so
   * that we can query that fact at runtime. The class must have already
   * implemented the interface.
   * Exports a 'then' method on the constructor prototype, so that the objects
   * also implement the extern {@see Thenable} interface for interop with
   * other Promise implementations.
   * @param {function(new:Thenable,...[?])} ctor The class constructor. The
   *     corresponding class must have already implemented the interface.
   */
  Thenable.addImplementation = function (ctor) {
    ctor.prototype.then = ctor.prototype.then;
    ctor.prototype.$goog_Thenable = true;
  };

  /**
   * @param {*} object
   * @return {boolean} Whether a given instance implements {@code Thenable}.
   *     The class/superclass of the instance must call {@code addImplementation}.
   */
  Thenable.isImplementedBy = function (object) {
    if (!object) {
      return false;
    }
    try {
      return !!object.$goog_Thenable;
    } catch (e) {
      // Property access seems to be forbidden.
      return false;
    }
  };

  /**
   * Like bind(), except that a 'this object' is not required. Useful when the
   * target function is already bound.
   *
   * Usage:
   * var g = partial(f, arg1, arg2);
   * g(arg3, arg4);
   *
   * @param {Function} fn A function to partially apply.
   * @param {...*} var_args Additional arguments that are partially applied to fn.
   * @return {!Function} A partially-applied form of the function bind() was
   *     invoked as a method of.
   */
  var partial = function partial(fn) {
    var args = Array.prototype.slice.call(arguments, 1);
    return function () {
      // Clone the array (with slice()) and append additional arguments
      // to the existing arguments.
      var newArgs = args.slice();
      newArgs.push.apply(newArgs, arguments);
      return fn.apply(this, newArgs);
    };
  };

  /**
   * Promises provide a result that may be resolved asynchronously. A Promise may
   * be resolved by being fulfilled or rejected with a value, which will be known
   * as the fulfillment value or the rejection reason. Whether fulfilled or
   * rejected, the Promise result is immutable once it is set.
   *
   * Promises may represent results of any type, including undefined. Rejection
   * reasons are typically Errors, but may also be of any type. Closure Promises
   * allow for optional type annotations that enforce that fulfillment values are
   * of the appropriate types at compile time.
   *
   * The result of a Promise is accessible by calling {@code then} and registering
   * {@code onFulfilled} and {@code onRejected} callbacks. Once the Promise
   * resolves, the relevant callbacks are invoked with the fulfillment value or
   * rejection reason as argument. Callbacks are always invoked in the order they
   * were registered, even when additional {@code then} calls are made from inside
   * another callback. A callback is always run asynchronously sometime after the
   * scope containing the registering {@code then} invocation has returned.
   *
   * If a Promise is resolved with another Promise, the first Promise will block
   * until the second is resolved, and then assumes the same result as the second
   * Promise. This allows Promises to depend on the results of other Promises,
   * linking together multiple asynchronous operations.
   *
   * This implementation is compatible with the Promises/A+ specification and
   * passes that specification's conformance test suite. A Closure Promise may be
   * resolved with a Promise instance (or sufficiently compatible Promise-like
   * object) created by other Promise implementations. From the specification,
   * Promise-like objects are known as "Thenables".
   *
   * @see http://promisesaplus.com/
   *
   * @param {function(
   *             this:RESOLVER_CONTEXT,
   *             function((TYPE|IThenable.<TYPE>|Thenable)),
   *             function(*)): void} resolver
   *     Initialization function that is invoked immediately with {@code resolve}
   *     and {@code reject} functions as arguments. The Promise is resolved or
   *     rejected with the first argument passed to either function.
   * @param {RESOLVER_CONTEXT=} opt_context An optional context for executing the
   *     resolver function. If unspecified, the resolver function will be executed
   *     in the default scope.
   * @constructor
   * @struct
   * @final
   * @implements {Thenable.<TYPE>}
   * @template TYPE,RESOLVER_CONTEXT
   */
  var CancellablePromise = function CancellablePromise(resolver, opt_context) {
    /**
     * The internal state of this Promise. Either PENDING, FULFILLED, REJECTED, or
     * BLOCKED.
     * @private {CancellablePromise.State_}
     */
    this.state_ = CancellablePromise.State_.PENDING;

    /**
     * The resolved result of the Promise. Immutable once set with either a
     * fulfillment value or rejection reason.
     * @private {*}
     */
    this.result_ = undefined;

    /**
     * For Promises created by calling {@code then()}, the originating parent.
     * @private {CancellablePromise}
     */
    this.parent_ = null;

    /**
     * The list of {@code onFulfilled} and {@code onRejected} callbacks added to
     * this Promise by calls to {@code then()}.
     * @private {Array.<CancellablePromise.CallbackEntry_>}
     */
    this.callbackEntries_ = null;

    /**
     * Whether the Promise is in the queue of Promises to execute.
     * @private {boolean}
     */
    this.executing_ = false;

    if (CancellablePromise.UNHANDLED_REJECTION_DELAY > 0) {
      /**
       * A timeout ID used when the {@code UNHANDLED_REJECTION_DELAY} is greater
       * than 0 milliseconds. The ID is set when the Promise is rejected, and
       * cleared only if an {@code onRejected} callback is invoked for the
       * Promise (or one of its descendants) before the delay is exceeded.
       *
       * If the rejection is not handled before the timeout completes, the
       * rejection reason is passed to the unhandled rejection handler.
       * @private {number}
       */
      this.unhandledRejectionId_ = 0;
    } else if (CancellablePromise.UNHANDLED_REJECTION_DELAY === 0) {
      /**
       * When the {@code UNHANDLED_REJECTION_DELAY} is set to 0 milliseconds, a
       * boolean that is set if the Promise is rejected, and reset to false if an
       * {@code onRejected} callback is invoked for the Promise (or one of its
       * descendants). If the rejection is not handled before the next timestep,
       * the rejection reason is passed to the unhandled rejection handler.
       * @private {boolean}
       */
      this.hadUnhandledRejection_ = false;
    }

    try {
      var self = this;
      resolver.call(opt_context, function (value) {
        self.resolve_(CancellablePromise.State_.FULFILLED, value);
      }, function (reason) {
        self.resolve_(CancellablePromise.State_.REJECTED, reason);
      });
    } catch (e) {
      this.resolve_(CancellablePromise.State_.REJECTED, e);
    }
  };

  /**
   * The delay in milliseconds before a rejected Promise's reason is passed to
   * the rejection handler. By default, the rejection handler rethrows the
   * rejection reason so that it appears in the developer console or
   * {@code window.onerror} handler.
   * Rejections are rethrown as quickly as possible by default. A negative value
   * disables rejection handling entirely.
   * @type {number}
   */
  CancellablePromise.UNHANDLED_REJECTION_DELAY = 0;

  /**
   * The possible internal states for a Promise. These states are not directly
   * observable to external callers.
   * @enum {number}
   * @private
   */
  CancellablePromise.State_ = {
    /** The Promise is waiting for resolution. */
    PENDING: 0,

    /** The Promise is blocked waiting for the result of another Thenable. */
    BLOCKED: 1,

    /** The Promise has been resolved with a fulfillment value. */
    FULFILLED: 2,

    /** The Promise has been resolved with a rejection reason. */
    REJECTED: 3
  };

  /**
   * Typedef for entries in the callback chain. Each call to {@code then},
   * {@code thenCatch}, or {@code thenAlways} creates an entry containing the
   * functions that may be invoked once the Promise is resolved.
   *
   * @typedef {{
   *   child: CancellablePromise,
   *   onFulfilled: function(*),
   *   onRejected: function(*)
   * }}
   * @private
   */
  CancellablePromise.CallbackEntry_ = null;

  /**
   * @param {(TYPE|Thenable.<TYPE>|Thenable)=} opt_value
   * @return {!CancellablePromise.<TYPE>} A new Promise that is immediately resolved
   *     with the given value.
   * @template TYPE
   */
  CancellablePromise.resolve = function (opt_value) {
    return new CancellablePromise(function (resolve) {
      resolve(opt_value);
    });
  };

  /**
   * @param {*=} opt_reason
   * @return {!CancellablePromise} A new Promise that is immediately rejected with the
   *     given reason.
   */
  CancellablePromise.reject = function (opt_reason) {
    return new CancellablePromise(function (resolve, reject) {
      reject(opt_reason);
    });
  };

  /**
   * @param {!Array.<!(Thenable.<TYPE>|Thenable)>} promises
   * @return {!CancellablePromise.<TYPE>} A Promise that receives the result of the
   *     first Promise (or Promise-like) input to complete.
   * @template TYPE
   */
  CancellablePromise.race = function (promises) {
    return new CancellablePromise(function (resolve, reject) {
      if (!promises.length) {
        resolve(undefined);
      }
      for (var i = 0, promise; promise = promises[i]; i++) {
        promise.then(resolve, reject);
      }
    });
  };

  /**
   * @param {!Array.<!(Thenable.<TYPE>|Thenable)>} promises
   * @return {!CancellablePromise.<!Array.<TYPE>>} A Promise that receives a list of
   *     every fulfilled value once every input Promise (or Promise-like) is
   *     successfully fulfilled, or is rejected by the first rejection result.
   * @template TYPE
   */
  CancellablePromise.all = function (promises) {
    return new CancellablePromise(function (resolve, reject) {
      var toFulfill = promises.length;
      var values = [];

      if (!toFulfill) {
        resolve(values);
        return;
      }

      var onFulfill = function onFulfill(index, value) {
        toFulfill--;
        values[index] = value;
        if (toFulfill === 0) {
          resolve(values);
        }
      };

      var onReject = function onReject(reason) {
        reject(reason);
      };

      for (var i = 0, promise; promise = promises[i]; i++) {
        promise.then(partial(onFulfill, i), onReject);
      }
    });
  };

  /**
   * @param {!Array.<!(Thenable.<TYPE>|Thenable)>} promises
   * @return {!CancellablePromise.<TYPE>} A Promise that receives the value of
   *     the first input to be fulfilled, or is rejected with a list of every
   *     rejection reason if all inputs are rejected.
   * @template TYPE
   */
  CancellablePromise.firstFulfilled = function (promises) {
    return new CancellablePromise(function (resolve, reject) {
      var toReject = promises.length;
      var reasons = [];

      if (!toReject) {
        resolve(undefined);
        return;
      }

      var onFulfill = function onFulfill(value) {
        resolve(value);
      };

      var onReject = function onReject(index, reason) {
        toReject--;
        reasons[index] = reason;
        if (toReject === 0) {
          reject(reasons);
        }
      };

      for (var i = 0, promise; promise = promises[i]; i++) {
        promise.then(onFulfill, partial(onReject, i));
      }
    });
  };

  /**
   * Adds callbacks that will operate on the result of the Promise, returning a
   * new child Promise.
   *
   * If the Promise is fulfilled, the {@code onFulfilled} callback will be invoked
   * with the fulfillment value as argument, and the child Promise will be
   * fulfilled with the return value of the callback. If the callback throws an
   * exception, the child Promise will be rejected with the thrown value instead.
   *
   * If the Promise is rejected, the {@code onRejected} callback will be invoked
   * with the rejection reason as argument, and the child Promise will be rejected
   * with the return value (or thrown value) of the callback.
   *
   * @override
   */
  CancellablePromise.prototype.then = function (opt_onFulfilled, opt_onRejected, opt_context) {
    return this.addChildPromise_((0, _metal.isFunction)(opt_onFulfilled) ? opt_onFulfilled : null, (0, _metal.isFunction)(opt_onRejected) ? opt_onRejected : null, opt_context);
  };
  Thenable.addImplementation(CancellablePromise);

  /**
   * Adds a callback that will be invoked whether the Promise is fulfilled or
   * rejected. The callback receives no argument, and no new child Promise is
   * created. This is useful for ensuring that cleanup takes place after certain
   * asynchronous operations. Callbacks added with {@code thenAlways} will be
   * executed in the same order with other calls to {@code then},
   * {@code thenAlways}, or {@code thenCatch}.
   *
   * Since it does not produce a new child Promise, cancellation propagation is
   * not prevented by adding callbacks with {@code thenAlways}. A Promise that has
   * a cleanup handler added with {@code thenAlways} will be canceled if all of
   * its children created by {@code then} (or {@code thenCatch}) are canceled.
   *
   * @param {function(this:THIS): void} onResolved A function that will be invoked
   *     when the Promise is resolved.
   * @param {THIS=} opt_context An optional context object that will be the
   *     execution context for the callbacks. By default, functions are executed
   *     in the global scope.
   * @return {!CancellablePromise.<TYPE>} This Promise, for chaining additional calls.
   * @template THIS
   */
  CancellablePromise.prototype.thenAlways = function (onResolved, opt_context) {
    var callback = function callback() {
      try {
        // Ensure that no arguments are passed to onResolved.
        onResolved.call(opt_context);
      } catch (err) {
        CancellablePromise.handleRejection_.call(null, err);
      }
    };

    this.addCallbackEntry_({
      child: null,
      onRejected: callback,
      onFulfilled: callback
    });
    return this;
  };

  /**
   * Adds a callback that will be invoked only if the Promise is rejected. This
   * is equivalent to {@code then(null, onRejected)}.
   *
   * @param {!function(this:THIS, *): *} onRejected A function that will be
   *     invoked with the rejection reason if the Promise is rejected.
   * @param {THIS=} opt_context An optional context object that will be the
   *     execution context for the callbacks. By default, functions are executed
   *     in the global scope.
   * @return {!CancellablePromise} A new Promise that will receive the result of the
   *     callback.
   * @template THIS
   */
  CancellablePromise.prototype.thenCatch = function (onRejected, opt_context) {
    return this.addChildPromise_(null, onRejected, opt_context);
  };

  /**
   * Alias of {@link CancellablePromise.prototype.thenCatch}
   */
  CancellablePromise.prototype.catch = CancellablePromise.prototype.thenCatch;

  /**
   * Cancels the Promise if it is still pending by rejecting it with a cancel
   * Error. No action is performed if the Promise is already resolved.
   *
   * All child Promises of the canceled Promise will be rejected with the same
   * cancel error, as with normal Promise rejection. If the Promise to be canceled
   * is the only child of a pending Promise, the parent Promise will also be
   * canceled. Cancellation may propagate upward through multiple generations.
   *
   * @param {string=} opt_message An optional debugging message for describing the
   *     cancellation reason.
   */
  CancellablePromise.prototype.cancel = function (opt_message) {
    if (this.state_ === CancellablePromise.State_.PENDING) {
      _metal.async.run(function () {
        var err = new CancellablePromise.CancellationError(opt_message);
        err.IS_CANCELLATION_ERROR = true;
        this.cancelInternal_(err);
      }, this);
    }
  };

  /**
   * Cancels this Promise with the given error.
   *
   * @param {!Error} err The cancellation error.
   * @private
   */
  CancellablePromise.prototype.cancelInternal_ = function (err) {
    if (this.state_ === CancellablePromise.State_.PENDING) {
      if (this.parent_) {
        // Cancel the Promise and remove it from the parent's child list.
        this.parent_.cancelChild_(this, err);
      } else {
        this.resolve_(CancellablePromise.State_.REJECTED, err);
      }
    }
  };

  /**
   * Cancels a child Promise from the list of callback entries. If the Promise has
   * not already been resolved, reject it with a cancel error. If there are no
   * other children in the list of callback entries, propagate the cancellation
   * by canceling this Promise as well.
   *
   * @param {!CancellablePromise} childPromise The Promise to cancel.
   * @param {!Error} err The cancel error to use for rejecting the Promise.
   * @private
   */
  CancellablePromise.prototype.cancelChild_ = function (childPromise, err) {
    if (!this.callbackEntries_) {
      return;
    }
    var childCount = 0;
    var childIndex = -1;

    // Find the callback entry for the childPromise, and count whether there are
    // additional child Promises.
    for (var i = 0, entry; entry = this.callbackEntries_[i]; i++) {
      var child = entry.child;
      if (child) {
        childCount++;
        if (child === childPromise) {
          childIndex = i;
        }
        if (childIndex >= 0 && childCount > 1) {
          break;
        }
      }
    }

    // If the child Promise was the only child, cancel this Promise as well.
    // Otherwise, reject only the child Promise with the cancel error.
    if (childIndex >= 0) {
      if (this.state_ === CancellablePromise.State_.PENDING && childCount === 1) {
        this.cancelInternal_(err);
      } else {
        var callbackEntry = this.callbackEntries_.splice(childIndex, 1)[0];
        this.executeCallback_(callbackEntry, CancellablePromise.State_.REJECTED, err);
      }
    }
  };

  /**
   * Adds a callback entry to the current Promise, and schedules callback
   * execution if the Promise has already been resolved.
   *
   * @param {CancellablePromise.CallbackEntry_} callbackEntry Record containing
   *     {@code onFulfilled} and {@code onRejected} callbacks to execute after
   *     the Promise is resolved.
   * @private
   */
  CancellablePromise.prototype.addCallbackEntry_ = function (callbackEntry) {
    if ((!this.callbackEntries_ || !this.callbackEntries_.length) && (this.state_ === CancellablePromise.State_.FULFILLED || this.state_ === CancellablePromise.State_.REJECTED)) {
      this.scheduleCallbacks_();
    }
    if (!this.callbackEntries_) {
      this.callbackEntries_ = [];
    }
    this.callbackEntries_.push(callbackEntry);
  };

  /**
   * Creates a child Promise and adds it to the callback entry list. The result of
   * the child Promise is determined by the state of the parent Promise and the
   * result of the {@code onFulfilled} or {@code onRejected} callbacks as
   * specified in the Promise resolution procedure.
   *
   * @see http://promisesaplus.com/#the__method
   *
   * @param {?function(this:THIS, TYPE):
   *          (RESULT|CancellablePromise.<RESULT>|Thenable)} onFulfilled A callback that
   *     will be invoked if the Promise is fullfilled, or null.
   * @param {?function(this:THIS, *): *} onRejected A callback that will be
   *     invoked if the Promise is rejected, or null.
   * @param {THIS=} opt_context An optional execution context for the callbacks.
   *     in the default calling context.
   * @return {!CancellablePromise} The child Promise.
   * @template RESULT,THIS
   * @private
   */
  CancellablePromise.prototype.addChildPromise_ = function (onFulfilled, onRejected, opt_context) {

    var callbackEntry = {
      child: null,
      onFulfilled: null,
      onRejected: null
    };

    callbackEntry.child = new CancellablePromise(function (resolve, reject) {
      // Invoke onFulfilled, or resolve with the parent's value if absent.
      callbackEntry.onFulfilled = onFulfilled ? function (value) {
        try {
          var result = onFulfilled.call(opt_context, value);
          resolve(result);
        } catch (err) {
          reject(err);
        }
      } : resolve;

      // Invoke onRejected, or reject with the parent's reason if absent.
      callbackEntry.onRejected = onRejected ? function (reason) {
        try {
          var result = onRejected.call(opt_context, reason);
          if (!(0, _metal.isDef)(result) && reason.IS_CANCELLATION_ERROR) {
            // Propagate cancellation to children if no other result is returned.
            reject(reason);
          } else {
            resolve(result);
          }
        } catch (err) {
          reject(err);
        }
      } : reject;
    });

    callbackEntry.child.parent_ = this;
    this.addCallbackEntry_(
    /** @type {CancellablePromise.CallbackEntry_} */callbackEntry);
    return callbackEntry.child;
  };

  /**
   * Unblocks the Promise and fulfills it with the given value.
   *
   * @param {TYPE} value
   * @private
   */
  CancellablePromise.prototype.unblockAndFulfill_ = function (value) {
    if (this.state_ !== CancellablePromise.State_.BLOCKED) {
      throw new Error('CancellablePromise is not blocked.');
    }
    this.state_ = CancellablePromise.State_.PENDING;
    this.resolve_(CancellablePromise.State_.FULFILLED, value);
  };

  /**
   * Unblocks the Promise and rejects it with the given rejection reason.
   *
   * @param {*} reason
   * @private
   */
  CancellablePromise.prototype.unblockAndReject_ = function (reason) {
    if (this.state_ !== CancellablePromise.State_.BLOCKED) {
      throw new Error('CancellablePromise is not blocked.');
    }
    this.state_ = CancellablePromise.State_.PENDING;
    this.resolve_(CancellablePromise.State_.REJECTED, reason);
  };

  /**
   * Attempts to resolve a Promise with a given resolution state and value. This
   * is a no-op if the given Promise has already been resolved.
   *
   * If the given result is a Thenable (such as another Promise), the Promise will
   * be resolved with the same state and result as the Thenable once it is itself
   * resolved.
   *
   * If the given result is not a Thenable, the Promise will be fulfilled or
   * rejected with that result based on the given state.
   *
   * @see http://promisesaplus.com/#the_promise_resolution_procedure
   *
   * @param {CancellablePromise.State_} state
   * @param {*} x The result to apply to the Promise.
   * @private
   */
  CancellablePromise.prototype.resolve_ = function (state, x) {
    if (this.state_ !== CancellablePromise.State_.PENDING) {
      return;
    }

    if (this === x) {
      state = CancellablePromise.State_.REJECTED;
      x = new TypeError('CancellablePromise cannot resolve to itself');
    } else if (Thenable.isImplementedBy(x)) {
      x = /** @type {!Thenable} */x;
      this.state_ = CancellablePromise.State_.BLOCKED;
      x.then(this.unblockAndFulfill_, this.unblockAndReject_, this);
      return;
    } else if ((0, _metal.isObject)(x)) {
      try {
        var then = x.then;
        if ((0, _metal.isFunction)(then)) {
          this.tryThen_(x, then);
          return;
        }
      } catch (e) {
        state = CancellablePromise.State_.REJECTED;
        x = e;
      }
    }

    this.result_ = x;
    this.state_ = state;
    this.scheduleCallbacks_();

    if (state === CancellablePromise.State_.REJECTED && !x.IS_CANCELLATION_ERROR) {
      CancellablePromise.addUnhandledRejection_(this, x);
    }
  };

  /**
   * Attempts to call the {@code then} method on an object in the hopes that it is
   * a Promise-compatible instance. This allows interoperation between different
   * Promise implementations, however a non-compliant object may cause a Promise
   * to hang indefinitely. If the {@code then} method throws an exception, the
   * dependent Promise will be rejected with the thrown value.
   *
   * @see http://promisesaplus.com/#point-70
   *
   * @param {Thenable} thenable An object with a {@code then} method that may be
   *     compatible with the Promise/A+ specification.
   * @param {!Function} then The {@code then} method of the Thenable object.
   * @private
   */
  CancellablePromise.prototype.tryThen_ = function (thenable, then) {
    this.state_ = CancellablePromise.State_.BLOCKED;
    var promise = this;
    var called = false;

    var resolve = function resolve(value) {
      if (!called) {
        called = true;
        promise.unblockAndFulfill_(value);
      }
    };

    var reject = function reject(reason) {
      if (!called) {
        called = true;
        promise.unblockAndReject_(reason);
      }
    };

    try {
      then.call(thenable, resolve, reject);
    } catch (e) {
      reject(e);
    }
  };

  /**
   * Executes the pending callbacks of a resolved Promise after a timeout.
   *
   * Section 2.2.4 of the Promises/A+ specification requires that Promise
   * callbacks must only be invoked from a call stack that only contains Promise
   * implementation code, which we accomplish by invoking callback execution after
   * a timeout. If {@code startExecution_} is called multiple times for the same
   * Promise, the callback chain will be evaluated only once. Additional callbacks
   * may be added during the evaluation phase, and will be executed in the same
   * event loop.
   *
   * All Promises added to the waiting list during the same browser event loop
   * will be executed in one batch to avoid using a separate timeout per Promise.
   *
   * @private
   */
  CancellablePromise.prototype.scheduleCallbacks_ = function () {
    if (!this.executing_) {
      this.executing_ = true;
      _metal.async.run(this.executeCallbacks_, this);
    }
  };

  /**
   * Executes all pending callbacks for this Promise.
   *
   * @private
   */
  CancellablePromise.prototype.executeCallbacks_ = function () {
    while (this.callbackEntries_ && this.callbackEntries_.length) {
      var entries = this.callbackEntries_;
      this.callbackEntries_ = [];

      for (var i = 0; i < entries.length; i++) {
        this.executeCallback_(entries[i], this.state_, this.result_);
      }
    }
    this.executing_ = false;
  };

  /**
   * Executes a pending callback for this Promise. Invokes an {@code onFulfilled}
   * or {@code onRejected} callback based on the resolved state of the Promise.
   *
   * @param {!CancellablePromise.CallbackEntry_} callbackEntry An entry containing the
   *     onFulfilled and/or onRejected callbacks for this step.
   * @param {CancellablePromise.State_} state The resolution status of the Promise,
   *     either FULFILLED or REJECTED.
   * @param {*} result The resolved result of the Promise.
   * @private
   */
  CancellablePromise.prototype.executeCallback_ = function (callbackEntry, state, result) {
    if (state === CancellablePromise.State_.FULFILLED) {
      callbackEntry.onFulfilled(result);
    } else {
      this.removeUnhandledRejection_();
      callbackEntry.onRejected(result);
    }
  };

  /**
   * Marks this rejected Promise as having being handled. Also marks any parent
   * Promises in the rejected state as handled. The rejection handler will no
   * longer be invoked for this Promise (if it has not been called already).
   *
   * @private
   */
  CancellablePromise.prototype.removeUnhandledRejection_ = function () {
    var p;
    if (CancellablePromise.UNHANDLED_REJECTION_DELAY > 0) {
      for (p = this; p && p.unhandledRejectionId_; p = p.parent_) {
        clearTimeout(p.unhandledRejectionId_);
        p.unhandledRejectionId_ = 0;
      }
    } else if (CancellablePromise.UNHANDLED_REJECTION_DELAY === 0) {
      for (p = this; p && p.hadUnhandledRejection_; p = p.parent_) {
        p.hadUnhandledRejection_ = false;
      }
    }
  };

  /**
   * Marks this rejected Promise as unhandled. If no {@code onRejected} callback
   * is called for this Promise before the {@code UNHANDLED_REJECTION_DELAY}
   * expires, the reason will be passed to the unhandled rejection handler. The
   * handler typically rethrows the rejection reason so that it becomes visible in
   * the developer console.
   *
   * @param {!CancellablePromise} promise The rejected Promise.
   * @param {*} reason The Promise rejection reason.
   * @private
   */
  CancellablePromise.addUnhandledRejection_ = function (promise, reason) {
    if (CancellablePromise.UNHANDLED_REJECTION_DELAY > 0) {
      promise.unhandledRejectionId_ = setTimeout(function () {
        CancellablePromise.handleRejection_.call(null, reason);
      }, CancellablePromise.UNHANDLED_REJECTION_DELAY);
    } else if (CancellablePromise.UNHANDLED_REJECTION_DELAY === 0) {
      promise.hadUnhandledRejection_ = true;
      _metal.async.run(function () {
        if (promise.hadUnhandledRejection_) {
          CancellablePromise.handleRejection_.call(null, reason);
        }
      });
    }
  };

  /**
   * A method that is invoked with the rejection reasons for Promises that are
   * rejected but have no {@code onRejected} callbacks registered yet.
   * @type {function(*)}
   * @private
   */
  CancellablePromise.handleRejection_ = _metal.async.throwException;

  /**
   * Sets a handler that will be called with reasons from unhandled rejected
   * Promises. If the rejected Promise (or one of its descendants) has an
   * {@code onRejected} callback registered, the rejection will be considered
   * handled, and the rejection handler will not be called.
   *
   * By default, unhandled rejections are rethrown so that the error may be
   * captured by the developer console or a {@code window.onerror} handler.
   *
   * @param {function(*)} handler A function that will be called with reasons from
   *     rejected Promises. Defaults to {@code async.throwException}.
   */
  CancellablePromise.setUnhandledRejectionHandler = function (handler) {
    CancellablePromise.handleRejection_ = handler;
  };

  /**
   * Error used as a rejection reason for canceled Promises.
   *
   * @param {string=} opt_message
   * @constructor
   * @extends {Error}
   * @final
   */
  CancellablePromise.CancellationError = function (_Error) {
    _inherits(_class, _Error);

    function _class(opt_message) {
      _classCallCheck(this, _class);

      var _this = _possibleConstructorReturn(this, (_class.__proto__ || Object.getPrototypeOf(_class)).call(this, opt_message));

      if (opt_message) {
        _this.message = opt_message;
      }
      return _this;
    }

    return _class;
  }(Error);

  /** @override */
  CancellablePromise.CancellationError.prototype.name = 'cancel';

  exports.CancellablePromise = CancellablePromise;
  exports.default = CancellablePromise;
});
//# sourceMappingURL=Promise.js.map

Liferay.Loader.define("frontend-js-spa-web@1.0.28/senna/src/globals/globals", ['exports'], function (exports) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});
	var globals = globals || {};

	if (typeof window !== 'undefined') {
		globals.window = window;
	}

	if (typeof document !== 'undefined') {
		globals.document = document;
	}

	exports.default = globals;
});
//# sourceMappingURL=globals.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-uri/src/parseFromAnchor", ['exports'], function (exports) {
	'use strict';

	/**
  * Parses the given uri string into an object.
  * @param {*=} opt_uri Optional string URI to parse
  */

	Object.defineProperty(exports, "__esModule", {
		value: true
	});
	function parseFromAnchor(opt_uri) {
		var link = document.createElement('a');
		link.href = opt_uri;
		return {
			hash: link.hash,
			hostname: link.hostname,
			password: link.password,
			pathname: link.pathname[0] === '/' ? link.pathname : '/' + link.pathname,
			port: link.port,
			protocol: link.protocol,
			search: link.search,
			username: link.username
		};
	}

	exports.default = parseFromAnchor;
});
//# sourceMappingURL=parseFromAnchor.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-uri/src/parse", ['exports', 'metal/src/metal', './parseFromAnchor'], function (exports, _metal, _parseFromAnchor) {
	'use strict';

	Object.defineProperty(exports, "__esModule", {
		value: true
	});

	var _parseFromAnchor2 = _interopRequireDefault(_parseFromAnchor);

	function _interopRequireDefault(obj) {
		return obj && obj.__esModule ? obj : {
			default: obj
		};
	}

	/**
  * Parses the given uri string into an object. The URL function will be used
  * when present, otherwise we'll fall back to the anchor node element.
  * @param {*=} opt_uri Optional string URI to parse
  */
	function parse(opt_uri) {
		if ((0, _metal.isFunction)(URL) && URL.length) {
			return new URL(opt_uri);
		} else {
			return (0, _parseFromAnchor2.default)(opt_uri);
		}
	}

	exports.default = parse;
});
//# sourceMappingURL=parse.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-structs/src/MultiMap", ['exports', 'metal/src/metal'], function (exports, _metal) {
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

	/**
  * A cached reference to the create function.
  */
	var create = Object.create;

	/**
  * Case insensitive string Multimap implementation. Allows multiple values for
  * the same key name.
  * @extends {Disposable}
  */

	var MultiMap = function (_Disposable) {
		_inherits(MultiMap, _Disposable);

		function MultiMap() {
			_classCallCheck(this, MultiMap);

			var _this = _possibleConstructorReturn(this, (MultiMap.__proto__ || Object.getPrototypeOf(MultiMap)).call(this));

			_this.keys = create(null);
			_this.values = create(null);
			return _this;
		}

		/**
   * Adds value to a key name.
   * @param {string} name
   * @param {*} value
   * @chainable
   */


		_createClass(MultiMap, [{
			key: 'add',
			value: function add(name, value) {
				this.keys[name.toLowerCase()] = name;
				this.values[name.toLowerCase()] = this.values[name.toLowerCase()] || [];
				this.values[name.toLowerCase()].push(value);
				return this;
			}
		}, {
			key: 'clear',
			value: function clear() {
				this.keys = create(null);
				this.values = create(null);
				return this;
			}
		}, {
			key: 'contains',
			value: function contains(name) {
				return name.toLowerCase() in this.values;
			}
		}, {
			key: 'disposeInternal',
			value: function disposeInternal() {
				this.values = null;
			}
		}, {
			key: 'get',
			value: function get(name) {
				var values = this.values[name.toLowerCase()];
				if (values) {
					return values[0];
				}
			}
		}, {
			key: 'getAll',
			value: function getAll(name) {
				return this.values[name.toLowerCase()];
			}
		}, {
			key: 'isEmpty',
			value: function isEmpty() {
				return this.size() === 0;
			}
		}, {
			key: 'names',
			value: function names() {
				var _this2 = this;

				return Object.keys(this.values).map(function (key) {
					return _this2.keys[key];
				});
			}
		}, {
			key: 'remove',
			value: function remove(name) {
				delete this.keys[name.toLowerCase()];
				delete this.values[name.toLowerCase()];
				return this;
			}
		}, {
			key: 'set',
			value: function set(name, value) {
				this.keys[name.toLowerCase()] = name;
				this.values[name.toLowerCase()] = [value];
				return this;
			}
		}, {
			key: 'size',
			value: function size() {
				return this.names().length;
			}
		}, {
			key: 'toString',
			value: function toString() {
				return JSON.stringify(this.values);
			}
		}], [{
			key: 'fromObject',
			value: function fromObject(obj) {
				var map = new MultiMap();
				var keys = Object.keys(obj);
				for (var i = 0; i < keys.length; i++) {
					map.set(keys[i], obj[keys[i]]);
				}
				return map;
			}
		}]);

		return MultiMap;
	}(_metal.Disposable);

	exports.default = MultiMap;
});
//# sourceMappingURL=MultiMap.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-structs/src/TreeNode", ['exports', 'metal/src/metal'], function (exports, _metal) {
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

	var TreeNode = function () {
		function TreeNode(value) {
			_classCallCheck(this, TreeNode);

			/**
    * The value.
    * @private {V}
    */
			this.value_ = value;

			/**
    * Reference to the parent node or null if it has no parent.
    * @private {TreeNode}
    */
			this.parent_ = null;

			/**
    * Child nodes or null in case of leaf node.
    * @private {Array<!TreeNode>}
    */
			this.children_ = null;
		}

		/**
   * Appends a child node to this node.
   * @param {!TreeNode} child Orphan child node.
   */


		_createClass(TreeNode, [{
			key: 'addChild',
			value: function addChild(child) {
				assertChildHasNoParent(child);
				child.setParent(this);
				this.children_ = this.children_ || [];
				this.children_.push(child);
			}
		}, {
			key: 'contains',
			value: function contains(node) {
				var current = node.getParent();
				while (current) {
					if (current === this) {
						return true;
					}
					current = current.getParent();
				}
				return false;
			}
		}, {
			key: 'getAncestors',
			value: function getAncestors() {
				var ancestors = [];
				var node = this.getParent();
				while (node) {
					ancestors.push(node);
					node = node.getParent();
				}
				return ancestors;
			}
		}, {
			key: 'getChildAt',
			value: function getChildAt(index) {
				return this.getChildren()[index] || null;
			}
		}, {
			key: 'getChildren',
			value: function getChildren() {
				return this.children_ || TreeNode.EMPTY_ARRAY;
			}
		}, {
			key: 'getChildCount',
			value: function getChildCount() {
				return this.getChildren().length;
			}
		}, {
			key: 'getDepth',
			value: function getDepth() {
				var depth = 0;
				var node = this;
				while (node.getParent()) {
					depth++;
					node = node.getParent();
				}
				return depth;
			}
		}, {
			key: 'getParent',
			value: function getParent() {
				return this.parent_;
			}
		}, {
			key: 'getRoot',
			value: function getRoot() {
				var root = this;
				while (root.getParent()) {
					root = root.getParent();
				}
				return root;
			}
		}, {
			key: 'getValue',
			value: function getValue() {
				return this.value_;
			}
		}, {
			key: 'isLeaf',
			value: function isLeaf() {
				return !this.getChildCount();
			}
		}, {
			key: 'removeChild',
			value: function removeChild(child) {
				if (_metal.array.remove(this.getChildren(), child)) {
					return child;
				}
				return null;
			}
		}, {
			key: 'setParent',
			value: function setParent(parent) {
				this.parent_ = parent;
			}
		}, {
			key: 'traverse',
			value: function traverse(opt_preorderFn, opt_postorderFn) {
				if (opt_preorderFn) {
					opt_preorderFn(this);
				}
				this.getChildren().forEach(function (child) {
					return child.traverse(opt_preorderFn, opt_postorderFn);
				});
				if (opt_postorderFn) {
					opt_postorderFn(this);
				}
			}
		}]);

		return TreeNode;
	}();

	/**
  * Constant for empty array to avoid unnecessary allocations.
  * @private
  */
	TreeNode.EMPTY_ARRAY = [];

	/**
  * Asserts that child has no parent.
  * @param {TreeNode} child A child.
  * @private
  */
	var assertChildHasNoParent = function assertChildHasNoParent(child) {
		if (child.getParent()) {
			throw new Error('Cannot add child with parent.');
		}
	};

	exports.default = TreeNode;
});
//# sourceMappingURL=TreeNode.js.map

Liferay.Loader.define("frontend-js-metal-web@1.0.16/metal-structs/src/all/structs", ['exports', '../MultiMap', '../TreeNode'], function (exports, _MultiMap, _TreeNode) {
  'use strict';

  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.TreeNode = exports.MultiMap = undefined;

  var _MultiMap2 = _interopRequireDefault(_MultiMap);

  var _TreeNode2 = _interopRequireDefault(_TreeNode);

  function _interopRequireDefault(obj) {
    return obj && obj.__esModule ? obj : {
      default: obj
    };
  }

  exports.MultiMap = _MultiMap2.default;
  exports.TreeNode = _TreeNode2.default;
});
//# sourceMappingURL=structs.js.map

