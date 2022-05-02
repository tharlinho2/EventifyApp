/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/authentication.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/authentication.js":
/*!************************************************!*\
  !*** ./app/javascript/packs/authentication.js ***!
  \************************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _src_authentication_css__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../src/authentication.css */ "./app/javascript/src/authentication.css");
/* harmony import */ var _src_authentication_css__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_src_authentication_css__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _flashMessages_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./flashMessages.js */ "./app/javascript/packs/flashMessages.js");



/***/ }),

/***/ "./app/javascript/packs/flashMessages.js":
/*!***********************************************!*\
  !*** ./app/javascript/packs/flashMessages.js ***!
  \***********************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var toastify_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! toastify-js */ "./node_modules/toastify-js/src/toastify.js");
/* harmony import */ var toastify_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(toastify_js__WEBPACK_IMPORTED_MODULE_0__);
function _slicedToArray(arr, i) { return _arrayWithHoles(arr) || _iterableToArrayLimit(arr, i) || _unsupportedIterableToArray(arr, i) || _nonIterableRest(); }

function _nonIterableRest() { throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."); }

function _unsupportedIterableToArray(o, minLen) { if (!o) return; if (typeof o === "string") return _arrayLikeToArray(o, minLen); var n = Object.prototype.toString.call(o).slice(8, -1); if (n === "Object" && o.constructor) n = o.constructor.name; if (n === "Map" || n === "Set") return Array.from(o); if (n === "Arguments" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return _arrayLikeToArray(o, minLen); }

function _arrayLikeToArray(arr, len) { if (len == null || len > arr.length) len = arr.length; for (var i = 0, arr2 = new Array(len); i < len; i++) { arr2[i] = arr[i]; } return arr2; }

function _iterableToArrayLimit(arr, i) { var _i = arr == null ? null : typeof Symbol !== "undefined" && arr[Symbol.iterator] || arr["@@iterator"]; if (_i == null) return; var _arr = []; var _n = true; var _d = false; var _s, _e; try { for (_i = _i.call(arr); !(_n = (_s = _i.next()).done); _n = true) { _arr.push(_s.value); if (i && _arr.length === i) break; } } catch (err) { _d = true; _e = err; } finally { try { if (!_n && _i["return"] != null) _i["return"](); } finally { if (_d) throw _e; } } return _arr; }

function _arrayWithHoles(arr) { if (Array.isArray(arr)) return arr; }


document.addEventListener('DOMContentLoaded', function () {
  var backgroundColors = {
    notice: '#009688',
    alert: '#f44336',
    error: '#f44336'
  };
  var timeDuration = {
    notice: 3000,
    alert: 4000,
    error: 6000
  };
  JSON.parse(document.body.dataset.flashMessages).forEach(function (flashMessage) {
    var _flashMessage = _slicedToArray(flashMessage, 2),
        type = _flashMessage[0],
        messages = _flashMessage[1];

    if (Array.isArray(messages)) {
      messages.reverse().forEach(function (sms) {
        toastify(sms);
      });
    } else {
      toastify(messages);
    }

    function toastify(sms) {
      toastify_js__WEBPACK_IMPORTED_MODULE_0___default()({
        text: sms,
        duration: timeDuration[type],
        close: true,
        backgroundColor: backgroundColors[type],
        stopOnFocus: true
      }).showToast();
    }
  });
});

/***/ }),

/***/ "./app/javascript/src/authentication.css":
/*!***********************************************!*\
  !*** ./app/javascript/src/authentication.css ***!
  \***********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

// extracted by mini-css-extract-plugin

/***/ }),

/***/ "./node_modules/toastify-js/src/toastify.js":
/*!**************************************************!*\
  !*** ./node_modules/toastify-js/src/toastify.js ***!
  \**************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

/* WEBPACK VAR INJECTION */(function(module) {function _typeof(obj) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (obj) { return typeof obj; } : function (obj) { return obj && "function" == typeof Symbol && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }, _typeof(obj); }

/*!
 * Toastify js 1.11.2
 * https://github.com/apvarun/toastify-js
 * @license MIT licensed
 *
 * Copyright (C) 2018 Varun A P
 */
(function (root, factory) {
  if (( false ? undefined : _typeof(module)) === "object" && module.exports) {
    module.exports = factory();
  } else {
    root.Toastify = factory();
  }
})(this, function (global) {
  // Object initialization
  var Toastify = function Toastify(options) {
    // Returning a new init object
    return new Toastify.lib.init(options);
  },
      // Library version
  version = "1.11.2"; // Set the default global options


  Toastify.defaults = {
    oldestFirst: true,
    text: "Toastify is awesome!",
    node: undefined,
    duration: 3000,
    selector: undefined,
    callback: function callback() {},
    destination: undefined,
    newWindow: false,
    close: false,
    gravity: "toastify-top",
    positionLeft: false,
    position: '',
    backgroundColor: '',
    avatar: "",
    className: "",
    stopOnFocus: true,
    onClick: function onClick() {},
    offset: {
      x: 0,
      y: 0
    },
    escapeMarkup: true,
    style: {
      background: ''
    }
  }; // Defining the prototype of the object

  Toastify.lib = Toastify.prototype = {
    toastify: version,
    constructor: Toastify,
    // Initializing the object with required parameters
    init: function init(options) {
      // Verifying and validating the input object
      if (!options) {
        options = {};
      } // Creating the options object


      this.options = {};
      this.toastElement = null; // Validating the options

      this.options.text = options.text || Toastify.defaults.text; // Display message

      this.options.node = options.node || Toastify.defaults.node; // Display content as node

      this.options.duration = options.duration === 0 ? 0 : options.duration || Toastify.defaults.duration; // Display duration

      this.options.selector = options.selector || Toastify.defaults.selector; // Parent selector

      this.options.callback = options.callback || Toastify.defaults.callback; // Callback after display

      this.options.destination = options.destination || Toastify.defaults.destination; // On-click destination

      this.options.newWindow = options.newWindow || Toastify.defaults.newWindow; // Open destination in new window

      this.options.close = options.close || Toastify.defaults.close; // Show toast close icon

      this.options.gravity = options.gravity === "bottom" ? "toastify-bottom" : Toastify.defaults.gravity; // toast position - top or bottom

      this.options.positionLeft = options.positionLeft || Toastify.defaults.positionLeft; // toast position - left or right

      this.options.position = options.position || Toastify.defaults.position; // toast position - left or right

      this.options.backgroundColor = options.backgroundColor || Toastify.defaults.backgroundColor; // toast background color

      this.options.avatar = options.avatar || Toastify.defaults.avatar; // img element src - url or a path

      this.options.className = options.className || Toastify.defaults.className; // additional class names for the toast

      this.options.stopOnFocus = options.stopOnFocus === undefined ? Toastify.defaults.stopOnFocus : options.stopOnFocus; // stop timeout on focus

      this.options.onClick = options.onClick || Toastify.defaults.onClick; // Callback after click

      this.options.offset = options.offset || Toastify.defaults.offset; // toast offset

      this.options.escapeMarkup = options.escapeMarkup !== undefined ? options.escapeMarkup : Toastify.defaults.escapeMarkup;
      this.options.style = options.style || Toastify.defaults.style;

      if (options.backgroundColor) {
        this.options.style.background = options.backgroundColor;
      } // Returning the current object for chaining functions


      return this;
    },
    // Building the DOM element
    buildToast: function buildToast() {
      // Validating if the options are defined
      if (!this.options) {
        throw "Toastify is not initialized";
      } // Creating the DOM object


      var divElement = document.createElement("div");
      divElement.className = "toastify on " + this.options.className; // Positioning toast to left or right or center

      if (!!this.options.position) {
        divElement.className += " toastify-" + this.options.position;
      } else {
        // To be depreciated in further versions
        if (this.options.positionLeft === true) {
          divElement.className += " toastify-left";
          console.warn('Property `positionLeft` will be depreciated in further versions. Please use `position` instead.');
        } else {
          // Default position
          divElement.className += " toastify-right";
        }
      } // Assigning gravity of element


      divElement.className += " " + this.options.gravity;

      if (this.options.backgroundColor) {
        // This is being deprecated in favor of using the style HTML DOM property
        console.warn('DEPRECATION NOTICE: "backgroundColor" is being deprecated. Please use the "style.background" property.');
      } // Loop through our style object and apply styles to divElement


      for (var property in this.options.style) {
        divElement.style[property] = this.options.style[property];
      } // Adding the toast message/node


      if (this.options.node && this.options.node.nodeType === Node.ELEMENT_NODE) {
        // If we have a valid node, we insert it
        divElement.appendChild(this.options.node);
      } else {
        if (this.options.escapeMarkup) {
          divElement.innerText = this.options.text;
        } else {
          divElement.innerHTML = this.options.text;
        }

        if (this.options.avatar !== "") {
          var avatarElement = document.createElement("img");
          avatarElement.src = this.options.avatar;
          avatarElement.className = "toastify-avatar";

          if (this.options.position == "left" || this.options.positionLeft === true) {
            // Adding close icon on the left of content
            divElement.appendChild(avatarElement);
          } else {
            // Adding close icon on the right of content
            divElement.insertAdjacentElement("afterbegin", avatarElement);
          }
        }
      } // Adding a close icon to the toast


      if (this.options.close === true) {
        // Create a span for close element
        var closeElement = document.createElement("span");
        closeElement.innerHTML = "&#10006;";
        closeElement.className = "toast-close"; // Triggering the removal of toast from DOM on close click

        closeElement.addEventListener("click", function (event) {
          event.stopPropagation();
          this.removeElement(this.toastElement);
          window.clearTimeout(this.toastElement.timeOutValue);
        }.bind(this)); //Calculating screen width

        var width = window.innerWidth > 0 ? window.innerWidth : screen.width; // Adding the close icon to the toast element
        // Display on the right if screen width is less than or equal to 360px

        if ((this.options.position == "left" || this.options.positionLeft === true) && width > 360) {
          // Adding close icon on the left of content
          divElement.insertAdjacentElement("afterbegin", closeElement);
        } else {
          // Adding close icon on the right of content
          divElement.appendChild(closeElement);
        }
      } // Clear timeout while toast is focused


      if (this.options.stopOnFocus && this.options.duration > 0) {
        var self = this; // stop countdown

        divElement.addEventListener("mouseover", function (event) {
          window.clearTimeout(divElement.timeOutValue);
        }); // add back the timeout

        divElement.addEventListener("mouseleave", function () {
          divElement.timeOutValue = window.setTimeout(function () {
            // Remove the toast from DOM
            self.removeElement(divElement);
          }, self.options.duration);
        });
      } // Adding an on-click destination path


      if (typeof this.options.destination !== "undefined") {
        divElement.addEventListener("click", function (event) {
          event.stopPropagation();

          if (this.options.newWindow === true) {
            window.open(this.options.destination, "_blank");
          } else {
            window.location = this.options.destination;
          }
        }.bind(this));
      }

      if (typeof this.options.onClick === "function" && typeof this.options.destination === "undefined") {
        divElement.addEventListener("click", function (event) {
          event.stopPropagation();
          this.options.onClick();
        }.bind(this));
      } // Adding offset


      if (_typeof(this.options.offset) === "object") {
        var x = getAxisOffsetAValue("x", this.options);
        var y = getAxisOffsetAValue("y", this.options);
        var xOffset = this.options.position == "left" ? x : "-" + x;
        var yOffset = this.options.gravity == "toastify-top" ? y : "-" + y;
        divElement.style.transform = "translate(" + xOffset + "," + yOffset + ")";
      } // Returning the generated element


      return divElement;
    },
    // Displaying the toast
    showToast: function showToast() {
      // Creating the DOM object for the toast
      this.toastElement = this.buildToast(); // Getting the root element to with the toast needs to be added

      var rootElement;

      if (typeof this.options.selector === "string") {
        rootElement = document.getElementById(this.options.selector);
      } else if (this.options.selector instanceof HTMLElement || typeof ShadowRoot !== 'undefined' && this.options.selector instanceof ShadowRoot) {
        rootElement = this.options.selector;
      } else {
        rootElement = document.body;
      } // Validating if root element is present in DOM


      if (!rootElement) {
        throw "Root element is not defined";
      } // Adding the DOM element


      var elementToInsert = Toastify.defaults.oldestFirst ? rootElement.firstChild : rootElement.lastChild;
      rootElement.insertBefore(this.toastElement, elementToInsert); // Repositioning the toasts in case multiple toasts are present

      Toastify.reposition();

      if (this.options.duration > 0) {
        this.toastElement.timeOutValue = window.setTimeout(function () {
          // Remove the toast from DOM
          this.removeElement(this.toastElement);
        }.bind(this), this.options.duration); // Binding `this` for function invocation
      } // Supporting function chaining


      return this;
    },
    hideToast: function hideToast() {
      if (this.toastElement.timeOutValue) {
        clearTimeout(this.toastElement.timeOutValue);
      }

      this.removeElement(this.toastElement);
    },
    // Removing the element from the DOM
    removeElement: function removeElement(toastElement) {
      // Hiding the element
      // toastElement.classList.remove("on");
      toastElement.className = toastElement.className.replace(" on", ""); // Removing the element from DOM after transition end

      window.setTimeout(function () {
        // remove options node if any
        if (this.options.node && this.options.node.parentNode) {
          this.options.node.parentNode.removeChild(this.options.node);
        } // Remove the element from the DOM, only when the parent node was not removed before.


        if (toastElement.parentNode) {
          toastElement.parentNode.removeChild(toastElement);
        } // Calling the callback function


        this.options.callback.call(toastElement); // Repositioning the toasts again

        Toastify.reposition();
      }.bind(this), 400); // Binding `this` for function invocation
    }
  }; // Positioning the toasts on the DOM

  Toastify.reposition = function () {
    // Top margins with gravity
    var topLeftOffsetSize = {
      top: 15,
      bottom: 15
    };
    var topRightOffsetSize = {
      top: 15,
      bottom: 15
    };
    var offsetSize = {
      top: 15,
      bottom: 15
    }; // Get all toast messages on the DOM

    var allToasts = document.getElementsByClassName("toastify");
    var classUsed; // Modifying the position of each toast element

    for (var i = 0; i < allToasts.length; i++) {
      // Getting the applied gravity
      if (containsClass(allToasts[i], "toastify-top") === true) {
        classUsed = "toastify-top";
      } else {
        classUsed = "toastify-bottom";
      }

      var height = allToasts[i].offsetHeight;
      classUsed = classUsed.substr(9, classUsed.length - 1); // Spacing between toasts

      var offset = 15;
      var width = window.innerWidth > 0 ? window.innerWidth : screen.width; // Show toast in center if screen with less than or equal to 360px

      if (width <= 360) {
        // Setting the position
        allToasts[i].style[classUsed] = offsetSize[classUsed] + "px";
        offsetSize[classUsed] += height + offset;
      } else {
        if (containsClass(allToasts[i], "toastify-left") === true) {
          // Setting the position
          allToasts[i].style[classUsed] = topLeftOffsetSize[classUsed] + "px";
          topLeftOffsetSize[classUsed] += height + offset;
        } else {
          // Setting the position
          allToasts[i].style[classUsed] = topRightOffsetSize[classUsed] + "px";
          topRightOffsetSize[classUsed] += height + offset;
        }
      }
    } // Supporting function chaining


    return this;
  }; // Helper function to get offset.


  function getAxisOffsetAValue(axis, options) {
    if (options.offset[axis]) {
      if (isNaN(options.offset[axis])) {
        return options.offset[axis];
      } else {
        return options.offset[axis] + 'px';
      }
    }

    return '0px';
  }

  function containsClass(elem, yourClass) {
    if (!elem || typeof yourClass !== "string") {
      return false;
    } else if (elem.className && elem.className.trim().split(/\s+/gi).indexOf(yourClass) > -1) {
      return true;
    } else {
      return false;
    }
  } // Setting up the prototype for the init object


  Toastify.lib.init.prototype = Toastify.lib; // Returning the Toastify function to be assigned to the window object/module

  return Toastify;
});
/* WEBPACK VAR INJECTION */}.call(this, __webpack_require__(/*! ./../../webpack/buildin/module.js */ "./node_modules/webpack/buildin/module.js")(module)))

/***/ }),

/***/ "./node_modules/webpack/buildin/module.js":
/*!***********************************!*\
  !*** (webpack)/buildin/module.js ***!
  \***********************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = function (module) {
  if (!module.webpackPolyfill) {
    module.deprecate = function () {};

    module.paths = []; // module.parent = undefined by default

    if (!module.children) module.children = [];
    Object.defineProperty(module, "loaded", {
      enumerable: true,
      get: function get() {
        return module.l;
      }
    });
    Object.defineProperty(module, "id", {
      enumerable: true,
      get: function get() {
        return module.i;
      }
    });
    module.webpackPolyfill = 1;
  }

  return module;
};

/***/ })

/******/ });
//# sourceMappingURL=authentication-d37dfb2f431f74df6012.js.map