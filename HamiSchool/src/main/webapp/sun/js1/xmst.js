!function (t) {
    function e(o) {
        if (n[o]) return n[o].exports;
        var i = n[o] = {exports: {}, id: o, loaded: !1};
        return t[o].call(i.exports, i, i.exports, e), i.loaded = !0, i.exports
    }

    var n = {};
    return e.m = t, e.c = n, e.p = "", e(0)
}([function (t, e, n) {
    t.exports = n(1)
}, function (t, e, n) {
    window.xmstMd5 = n(2), n(3), n(4), n(5), function () {
        var t = [], e = xmstPerformance(t), n = function () {
            for (i = 0; i < e.p.length; i++) e.push(e.p[i])
        };
        "undefined" != typeof window._msq && n(), window._msq = e
    }()
}, function (t, e, n) {
    var o;
    !function (i) {
        "use strict";

        function r(t, e) {
            var n = (65535 & t) + (65535 & e), o = (t >> 16) + (e >> 16) + (n >> 16);
            return o << 16 | 65535 & n
        }

        function s(t, e) {
            return t << e | t >>> 32 - e
        }

        function a(t, e, n, o, i, a) {
            return r(s(r(r(e, t), r(o, a)), i), n)
        }

        function c(t, e, n, o, i, r, s) {
            return a(e & n | ~e & o, t, e, i, r, s)
        }

        function l(t, e, n, o, i, r, s) {
            return a(e & o | n & ~o, t, e, i, r, s)
        }

        function u(t, e, n, o, i, r, s) {
            return a(e ^ n ^ o, t, e, i, r, s)
        }

        function d(t, e, n, o, i, r, s) {
            return a(n ^ (e | ~o), t, e, i, r, s)
        }

        function m(t, e) {
            t[e >> 5] |= 128 << e % 32, t[(e + 64 >>> 9 << 4) + 14] = e;
            var n, o, i, s, a, m = 1732584193, p = -271733879, g = -1732584194, f = 271733878;
            for (n = 0; n < t.length; n += 16) o = m, i = p, s = g, a = f, m = c(m, p, g, f, t[n], 7, -680876936), f = c(f, m, p, g, t[n + 1], 12, -389564586), g = c(g, f, m, p, t[n + 2], 17, 606105819), p = c(p, g, f, m, t[n + 3], 22, -1044525330), m = c(m, p, g, f, t[n + 4], 7, -176418897), f = c(f, m, p, g, t[n + 5], 12, 1200080426), g = c(g, f, m, p, t[n + 6], 17, -1473231341), p = c(p, g, f, m, t[n + 7], 22, -45705983), m = c(m, p, g, f, t[n + 8], 7, 1770035416), f = c(f, m, p, g, t[n + 9], 12, -1958414417), g = c(g, f, m, p, t[n + 10], 17, -42063), p = c(p, g, f, m, t[n + 11], 22, -1990404162), m = c(m, p, g, f, t[n + 12], 7, 1804603682), f = c(f, m, p, g, t[n + 13], 12, -40341101), g = c(g, f, m, p, t[n + 14], 17, -1502002290), p = c(p, g, f, m, t[n + 15], 22, 1236535329), m = l(m, p, g, f, t[n + 1], 5, -165796510), f = l(f, m, p, g, t[n + 6], 9, -1069501632), g = l(g, f, m, p, t[n + 11], 14, 643717713), p = l(p, g, f, m, t[n], 20, -373897302), m = l(m, p, g, f, t[n + 5], 5, -701558691), f = l(f, m, p, g, t[n + 10], 9, 38016083), g = l(g, f, m, p, t[n + 15], 14, -660478335), p = l(p, g, f, m, t[n + 4], 20, -405537848), m = l(m, p, g, f, t[n + 9], 5, 568446438), f = l(f, m, p, g, t[n + 14], 9, -1019803690), g = l(g, f, m, p, t[n + 3], 14, -187363961), p = l(p, g, f, m, t[n + 8], 20, 1163531501), m = l(m, p, g, f, t[n + 13], 5, -1444681467), f = l(f, m, p, g, t[n + 2], 9, -51403784), g = l(g, f, m, p, t[n + 7], 14, 1735328473), p = l(p, g, f, m, t[n + 12], 20, -1926607734), m = u(m, p, g, f, t[n + 5], 4, -378558), f = u(f, m, p, g, t[n + 8], 11, -2022574463), g = u(g, f, m, p, t[n + 11], 16, 1839030562), p = u(p, g, f, m, t[n + 14], 23, -35309556), m = u(m, p, g, f, t[n + 1], 4, -1530992060), f = u(f, m, p, g, t[n + 4], 11, 1272893353), g = u(g, f, m, p, t[n + 7], 16, -155497632), p = u(p, g, f, m, t[n + 10], 23, -1094730640), m = u(m, p, g, f, t[n + 13], 4, 681279174), f = u(f, m, p, g, t[n], 11, -358537222), g = u(g, f, m, p, t[n + 3], 16, -722521979), p = u(p, g, f, m, t[n + 6], 23, 76029189), m = u(m, p, g, f, t[n + 9], 4, -640364487), f = u(f, m, p, g, t[n + 12], 11, -421815835), g = u(g, f, m, p, t[n + 15], 16, 530742520), p = u(p, g, f, m, t[n + 2], 23, -995338651), m = d(m, p, g, f, t[n], 6, -198630844), f = d(f, m, p, g, t[n + 7], 10, 1126891415), g = d(g, f, m, p, t[n + 14], 15, -1416354905), p = d(p, g, f, m, t[n + 5], 21, -57434055), m = d(m, p, g, f, t[n + 12], 6, 1700485571), f = d(f, m, p, g, t[n + 3], 10, -1894986606), g = d(g, f, m, p, t[n + 10], 15, -1051523), p = d(p, g, f, m, t[n + 1], 21, -2054922799), m = d(m, p, g, f, t[n + 8], 6, 1873313359), f = d(f, m, p, g, t[n + 15], 10, -30611744), g = d(g, f, m, p, t[n + 6], 15, -1560198380), p = d(p, g, f, m, t[n + 13], 21, 1309151649), m = d(m, p, g, f, t[n + 4], 6, -145523070), f = d(f, m, p, g, t[n + 11], 10, -1120210379), g = d(g, f, m, p, t[n + 2], 15, 718787259), p = d(p, g, f, m, t[n + 9], 21, -343485551), m = r(m, o), p = r(p, i), g = r(g, s), f = r(f, a);
            return [p, g]
        }

        function p(t) {
            var e, n = "";
            for (e = 0; e < 32 * t.length; e += 8) n += String.fromCharCode(t[e >> 5] >>> e % 32 & 255);
            return n
        }

        function g(t) {
            var e, n = [];
            for (n[(t.length >> 2) - 1] = void 0, e = 0; e < n.length; e += 1) n[e] = 0;
            for (e = 0; e < 8 * t.length; e += 8) n[e >> 5] |= (255 & t.charCodeAt(e / 8)) << e % 32;
            return n
        }

        function f(t) {
            return p(m(g(t), 8 * t.length))
        }

        function h(t, e) {
            var n, o, i = g(t), r = [], s = [];
            for (r[15] = s[15] = void 0, i.length > 16 && (i = m(i, 8 * t.length)), n = 0; 16 > n; n += 1) r[n] = 909522486 ^ i[n], s[n] = 1549556828 ^ i[n];
            return o = m(r.concat(g(e)), 512 + 8 * e.length), p(m(s.concat(o), 640))
        }

        function v(t) {
            var e, n, o = "0123456789abcdef", i = "";
            for (n = 0; n < t.length; n += 1) e = t.charCodeAt(n), i += o.charAt(e >>> 4 & 15) + o.charAt(15 & e);
            return i
        }

        function _(t) {
            return unescape(encodeURIComponent(t))
        }

        function w(t) {
            return f(_(t))
        }

        function y(t) {
            return v(w(t))
        }

        function L(t, e) {
            return h(_(t), _(e))
        }

        function x(t, e) {
            return v(L(t, e))
        }

        function C(t, e, n) {
            return e ? n ? L(e, t) : x(e, t) : n ? w(t) : y(t)
        }

        o = function () {
            return C
        }.call(e, n, e, t), !(void 0 !== o && (t.exports = o))
    }(this)
}, function (t, e) {
    !function (t, e) {
        var n = {}, o = n.toString, i = "1.0.0", r = function (t, e) {
            return new r.fn.init(t, e)
        };
        r.fn = r.prototype, r.fn = {
            constructor: r, each: function (t, e) {
                return r.each(this, t, e)
            }, pushStack: function (t) {
                var e = r.merge(this.constructor(), t);
                return e.prevObject = this, e.context = this.context, e
            }
        };
        var s = r.fn.init = function (t) {
            if (this.elements = [], !t) return this;
            switch (typeof t) {
                case"function":
                    r.bindEvent(window, "load", t);
                    break;
                case"string":
                    this.elements = document.querySelectorAll(t);
                    break;
                case"object":
                    t.constructor === Array ? this.elements = t : this.elements.push(t)
            }
            return void 0 !== t && (this.selector = t, this.length = this.elements.length, this.elements = this.elements), this
        };
        return s.prototype = r.fn, r.extend = r.fn.extend = function () {
            var t, e, n, o, i, s, a = arguments[0] || {}, c = 1, l = arguments.length, u = !1;
            for ("boolean" == typeof a && (u = a, a = arguments[c] || {}, c++), "object" == typeof a || r.isFunction(a) || (a = {}), c === l && (a = this, c--); l > c; c++) if (null != (i = arguments[c])) for (o in i) t = a[o], n = i[o], a !== n && (u && n && (r.isPlainObject(n) || (e = r.isArray(n))) ? (e ? (e = !1, s = t && r.isArray(t) ? t : []) : s = t && r.isPlainObject(t) ? t : {}, a[o] = r.extend(u, s, n)) : void 0 !== n && (a[o] = n));
            return a
        }, r.fn.extend({
            hasClass: function (t) {
                for (var e = /[\t\r\n\f]/g, n = this.elements, o = " " + t + " ", i = 0, r = n.length; r > i; i++) if (1 === n[i].nodeType && (" " + n[i].className + " ").replace(e, " ").indexOf(o) >= 0) return !0;
                return !1
            }
        }), r.extend({
            isFunction: function (t) {
                return "function" === r.type(t)
            }, isArray: Array.isArray || function (t) {
                return "array" === r.type(t)
            }, isWindow: function (t) {
                return null != t && t == t.window
            }, trim: function (t) {
                try {
                    return t.replace(/\s/g, "")
                } catch (e) {
                    return t
                }
            }, stripscript: function (t) {
                for (var e = new RegExp("[`~!$^*()%|{};\\[\\]<>?~！￥……*（）——|{}【】‘；”“。，、？]"), n = "", o = 0; o < t.length; o++) n += t.substr(o, 1).replace(e, "");
                return n
            }, isPlainObject: function (t) {
                var e;
                if (!t || "object" !== r.type(t) || t.nodeType || r.isWindow(t)) return !1;
                try {
                    if (t.constructor && !hasOwn.call(t, "constructor") && !hasOwn.call(t.constructor.prototype, "isPrototypeOf")) return !1
                } catch (n) {
                    return !1
                }
                if (support.ownLast) for (e in t) return hasOwn.call(t, e);
                for (e in t) ;
                return void 0 === e || hasOwn.call(t, e)
            }, type: function (t) {
                return null == t ? t + "" : "object" == typeof t || "function" == typeof t ? n[o.call(t)] || "object" : typeof t
            }, each: function (t, e, n) {
                var o, i = 0, s = t.length, a = r.isArraylike(t);
                if (n) {
                    if (a) for (; s > i && (o = e.apply(t[i], n), o !== !1); i++) ; else for (i in t) if (o = e.apply(t[i], n), o === !1) break
                } else if (a) for (; s > i && (o = e.call(t[i], i, t[i]), o !== !1); i++) ; else for (i in t) if (o = e.call(t[i], i, t[i]), o === !1) break;
                return t
            }, isApp: function () {
                var t = navigator.userAgent.toLowerCase();
                return "undefined" != typeof WE && -1 !== t.indexOf("xiaomi/miuibrowser/4.3/shop") && -1 === t.indexOf("iphone") ? !0 : !1
            }, removeBlanks: function (t) {
                for (var e = "", n = 0; n < t.length; n++) {
                    var o = t.charAt(n);
                    " " !== o && (e += o)
                }
                return e
            }, inArray: function (t, e) {
                for (var n in e) if (e[n] == t) return !0;
                return !1
            }, creatScript: function (t) {
                var e = document.createElement("script");
                e.type = "text/javascript", e.async = !0, e.src = t;
                var n = document.getElementsByTagName("script")[0];
                n.parentNode.insertBefore(e, n)
            }, getByClass: function (t, e) {
                for (var n = [], o = (t || document).getElementsByTagName("*"), i = 0, r = o.length; r > i; i++) -1 !== o[i].className.indexOf(e) && n.push(o[i]);
                return n
            }, bindEvent: function (t, e, n) {
                t.listeners = t.listeners || {}, t.listeners[e] = t.listeners[e] || [], t.listeners[e].push(n), n.bindFn = function (e) {
                    return e = e || window.event, n.call(t) === !1 ? (e.stopPropagation(), e.preventDefault(), !1) : void 0
                }, (1 == t.nodeType || t == window || t == document) && (t.addEventListener ? t.addEventListener(e, n.bindFn, !1) : t.attachEvent("on" + e, n.bindFn))
            }, isArraylike: function (t) {
                var e = "length" in t && t.length, n = r.type(t);
                return "function" === n || r.isWindow(t) ? !1 : 1 === t.nodeType && e ? !0 : "array" === n || 0 === e || "number" == typeof e && e > 0 && e - 1 in t
            }, merge: function (t, e) {
                for (var n = +e.length, o = 0, i = t.length; n > o;) t[i++] = e[o++];
                if (n !== n) for (; void 0 !== e[o];) t[i++] = e[o++];
                return t.length = i, t
            }, merge_object: function (t, e) {
                var n, o = {};
                for (n in t) t.hasOwnProperty(n) && (o[n] = t[n]);
                for (n in e) e.hasOwnProperty(n) && (o[n] = e[n]);
                return o
            }, setCookie: function (t, e, n, o) {
                var i = arguments.length, r = new Date;
                r.setTime(r.getTime() + 31104e6), document.cookie = 3 === i ? t + "=" + e + ";path=/;domain=" + n : t + "=" + e + ";path=/;domain=" + n + ";expires=" + o
            }, getCookie: function (t) {
                for (var e = document.cookie, n = r.removeBlanks(e), o = n.split(";"), i = 0; i < o.length; i++) {
                    var s = o[i].split("=");
                    if (s.length > 1 && s[0] === t) return s[1]
                }
                return ""
            }, getLanguage: function () {
                return navigator.language || navigator.userLanguage || navigator.browserLanguage || navigator.systemLanguage
            }, getVendor: function () {
                return navigator.vendor
            }, getPlatform: function () {
                return navigator.platform
            }, getScreen: function () {
                return screen.width + "*" + screen.height
            }, getDomain: function () {
                var t = window.location.hostname, e = t.split(".");
                size = e.length;
                var n = "." + e[size - 2] + "." + e[size - 1];
                return n
            }, triggerString: function (t) {
                var e = window.WE || {};
                return e.triggerString && e.triggerString(t, "") || ""
            }, getPcid: function () {
                var t = /\/(index.php|index.html|index.htm|index)$/, e = location.protocol + "//", n = location.host,
                    o = location.pathname.replace(t, "/"), i = e + n + o;
                return r.setCookie("pageid", xmstMd5(i), r.getDomain()), xmstMd5(i)
            }, getVistor: function (t) {
                var e = r.getCookie("xm_vistor"), n = !0, o = "", i = 0, s = (new Date).getTime();
                if ("" !== e) {
                    var a = e.split("-");
                    2 == a.length && (o = a[0], i = a[1], 18e5 >= s - i && (n = !1))
                }
                return n && (o = t + "_" + s), i = s, r.setCookie("xm_vistor", o + "-" + i, r.getDomain()), o
            }, getVars: function (t) {
                var e = "";
                if (t === []) return "";
                for (var n in t) e += "&" + n + "=" + encodeURIComponent(t[n]);
                return e
            }, getMstuid: function () {
                var t = new Date, e = t.getTime() + "_" + Math.round(1e4 * Math.random());
                return e
            }, getRandomNum: function () {
                return Math.round(2147483647 * Math.random())
            }, getObjectLength: function (t) {
                var e = 0;
                for (var n in t) e++;
                return e
            }, getRefDomain: function (t) {
                var e = document.createElement("a");
                return e.href = t, e.hostname
            }, uuid: function (t, e) {
                var n, o = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split(""), i = [];
                if (e = e || o.length, t) for (n = 0; t > n; n++) i[n] = o[0 | Math.random() * e]; else {
                    var r;
                    for (i[8] = i[13] = i[18] = i[23] = "-", i[14] = "4", n = 0; 36 > n; n++) i[n] || (r = 0 | 16 * Math.random(), i[n] = o[19 == n ? 3 & r | 8 : r])
                }
                return i.join("")
            }, getBaseParam: function (t) {
                var e = document.location.href.replace(/&/g, "|"), n = document.referrer.replace(/&/g, "|");
                if (n = n.toLowerCase()) {
                    var o = r.getRefDomain(n), s = r.getCookie("lastsource");
                    s && r.setCookie("lastsource", s, r.getDomain()), (o.indexOf(".mi.com") < 0 || o.indexOf("s1.mi.com") > -1 || o.indexOf("p.www.xiaomi.com") > -1 || o.indexOf("a.union.mi.com") > -1) && r.setCookie("lastsource", o, r.getDomain())
                }
                var a = r.getCookie("xm_www_sid"), c = r.getCookie("mstuid"), l = r.getCookie("muuid"),
                    u = r.getCookie("mucid"), d = r.getCookie("mutid"), m = r.getCookie("mstz") || "";
                if ("" === m || m.split("|").length < 3) {
                    var p = [];
                    p[0] = "", p[1] = "", p[2] = r.getRandomNum().toString() + ".0";
                    var g = "mstz", f = p.join("|");
                    r.setCookie(g, f, r.getDomain())
                }
                m = r.getCookie("mstz");
                var h = m.split("|") || [], v = (4 == h.length ? 0 : 1, h[0] || ""), _ = h[1] || "";
                if (h[2]) {
                    var w = [];
                    w = h[2].split(".") || "";
                    var y = w[0], L = parseInt(w[1]) + 1;
                    h[2] = w[0] + "." + L.toString()
                }
                var x = h[3] || "", C = h[4] || "", E = h[5] || "", S = 0, k = encodeURIComponent(n);
                "" == k && (C = "", E = ""), k != C && e != n ? (E = C, C = k) : "" != k && (S = 1), h[3] = encodeURIComponent(x), h[4] = encodeURIComponent(C), h[5] = encodeURIComponent(E), r.setCookie("mstz", h.join("|"), r.getDomain());
                var T = r.getCookie("lastsource"), b = 0, I = new Date;
                I.setTime(I.getTime() + 62208e6), "" === c && (b = 1, c = r.getMstuid()), r.setCookie("mstuid", c, r.getDomain(), I.toGMTString());
                var A = "", D = new Date;
                t.curl = location.href, t.xmv = r.getVistor(c), t.v = i, void 0 === t.vuuid && (t.vuuid = r.uuid(16, 32));
                var P = r.getCookie("userId"), j = "";
                r.isApp && (P || (P = r.triggerString("get_encrypt_uid")), j = r.triggerString("get_shop_deviceid"));
                var R = function (t) {
                    t = t.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
                    var e = new RegExp("[\\?&]" + t + "=([^&#]*)"), n = e.exec(location.search);
                    return null === n ? "" : decodeURIComponent(n[1].replace(/\+/g, " "))
                }, O = new Date;
                O.setTime(O.getTime() + 18e5);
                var V = ["client_id", "masid", "edm_task", "miwd"];
                return r.each(V, function (t, e) {
                    var n = R(e);
                    n && r.setCookie(e, n, r.getDomain(), O)
                }), A = "mid=" + (r.getCookie("euid") || P) + "&device_id=" + j + "&phpsessid=" + a + "&mstuid=" + c + "&muuid=" + l + "&mucid=" + u + "&sessionId=" + y + "&step=" + L + "&new_visitor=" + b + "&mstprevpid=" + encodeURIComponent(v) + "&mstprev_pid_loc=" + x + "&prevtarget=" + _ + "&lastsource=" + T + "&timestamp=" + D.getTime() + "&ref=" + k + "&domain=" + r.getDomain() + "&screen=" + r.getScreen() + "&language=" + r.getLanguage() + "&vendor=" + r.getVendor() + "&platform=" + r.getPlatform() + "&gu=" + E + "&miwd=" + r.getCookie("miwd") + "&edm_task=" + r.getCookie("edm_task") + "&masid=" + r.getCookie("masid") + "&client_id=" + r.getCookie("client_id") + "&pu=" + C + "&rf=" + S + "&mutid=" + d + "&muwd=" + encodeURIComponent(r.getCookie("muwd"))
            }
        }), r.each("Boolean Number String Function Array Date RegExp Object Error".split(" "), function (t, e) {
            n["[object " + e + "]"] = e.toLowerCase()
        }), "undefined" != typeof window && (window.xmstLittle = r), r
    }(window)
}, function (module, exports) {
    xmstSp = function (instanceSettings) {
        function _init() {
            _isInitialized || (_defaultSettings = {
                elements_selector: "a",
                container: window,
                threshold: 300,
                throttle: 300,
                skip_invisible: !0,
                callback_load: null,
                callback_error: null,
                callback_set: null,
                callback_processed: null
            }, _supportsAddEventListener = !!window.addEventListener, _supportsAttachEvent = !!window.attachEvent, _supportsClassList = !!document.body.classList, _isInitialized = !0)
        }

        function _addEventListener(t, e, n) {
            return _supportsAddEventListener ? void t.addEventListener(e, n) : void(_supportsAttachEvent && (t.attachEvent("on" + e, function (t) {
                return function () {
                    n.call(t, window.event)
                }
            }(t)), t = null))
        }

        function _removeEventListener(t, e, n) {
            return _supportsAddEventListener ? void t.removeEventListener(e, n) : void(_supportsAttachEvent && t.detachEvent("on" + e, n))
        }

        function _isInsideViewport(t, e, n) {
            function o() {
                return window.innerWidth || d.documentElement.clientWidth || document.body.clientWidth
            }

            function i() {
                return window.innerHeight || d.documentElement.clientHeight || document.body.clientHeight
            }

            function r(t) {
                return t.getBoundingClientRect().top + m - d.documentElement.clientTop
            }

            function s(t) {
                return t.getBoundingClientRect().left + p - d.documentElement.clientLeft
            }

            function a() {
                var o;
                return o = e === window ? i() + m : r(e) + e.offsetHeight, o <= r(t) - n
            }

            function c() {
                var i;
                return i = e === window ? o() + window.pageXOffset : s(e) + o(), i <= s(t) - n
            }

            function l() {
                var o;
                return o = e === window ? m : r(e), o >= r(t) + n + t.offsetHeight
            }

            function u() {
                var o;
                return o = e === window ? p : s(e), o >= s(t) + n + t.offsetWidth
            }

            var d, m, p;
            return d = t.ownerDocument, m = window.pageYOffset || d.body.scrollTop, p = window.pageXOffset || d.body.scrollLeft, !(a() || l() || c() || u())
        }

        function _now() {
            var t = new Date;
            return t.getTime()
        }

        function _convertToArray(t) {
            try {
                return Array.prototype.slice.call(t)
            } catch (e) {
                var n, o = [], i = t.length;
                for (n = 0; i > n; n++) o.push(t[n]);
                return o
            }
        }

        function _bind(t, e) {
            return function () {
                return t.apply(e, arguments)
            }
        }

        function LazyLoad() {
            _init(), this._settings = xmstLittle.merge_object(_defaultSettings, instanceSettings), this._queryOriginNode = this._settings.container === window ? document : this._settings.container, this._previousLoopTime = 0, this._loopTimeout = null, this._handleScrollFn = _bind(this.handleScroll, this), xmstLittle.bindEvent(window, "resize", this._handleScrollFn), this.update()
        }

        var _defaultSettings, _supportsAddEventListener, _supportsAttachEvent, _supportsClassList, _isInitialized = !1,
            vars = [], msf = function () {
                this.p = []
            };
        msf.prototype.push = function (t) {
            return "function" == typeof t[0] ? void t[0](t.slice(1)) : void(("setDomainId" == t[0] || "setVars" == t[0]) && this[t[0]](t.slice(1)))
        }, msf.prototype.setVars = function (t) {
            vars[t[0]] = t[1]
        }, msf.prototype.setDomainId = function (t) {
            vars.domain_id = t[0]
        };
        var _msf = new msf;
        _msf.p = window._msq.p;
        var initMsq = function () {
            for (i = 0; i < _msf.p.length; i++) _msf.push(_msf.p[i])
        };
        return initMsq(), LazyLoad.prototype._loopThroughElements = function () {
            var i, element, settings = this._settings, elements = this._elements,
                elementsLength = elements ? elements.length : 0, insideLogs = [], insideLogCodes = [], logValue = "",
                logCodeValue = "", processedIndexes = [];
            for (i = 0; elementsLength > i; i++) if (element = elements[i], (!settings.skip_invisible || null !== element.offsetParent) && _isInsideViewport(element, settings.container, settings.threshold)) {
                var logValue = element.getAttribute("data-log_code");
                logValue && (insideLogs.push(logValue), (logCodeValue = element.getAttribute("onclick")) && (logCodeValue = eval(logCodeValue.replace("_msq.push", "")), 5 == logCodeValue.length && insideLogCodes.push(logCodeValue[1]))), processedIndexes.push(i), element.wasProcessed = !0
            }
            for (insideLogs.length && this._sendData(insideLogCodes.join(";"), encodeURIComponent(insideLogs.join(";"))); processedIndexes.length > 0;) elements.splice(processedIndexes.pop(), 1), settings.callback_processed && settings.callback_processed(elements.length);
            0 === elementsLength && this._stopScrollHandler()
        }, LazyLoad.prototype._sendData = function (t, e) {
            vars.pageid = xmstLittle.getPcid();
            var n = xmstLittle.getBaseParam(vars), o = xmstLittle.getVars(vars), i = document.createElement("script");
            i.type = "text/javascript", i.async = !0, i.src = "//a.stat.xiaomi.com/js/mstr.js?" + n + o + "&type=sp&logs=" + t + "&log_codes=" + e;
            var r = document.getElementsByTagName("script")[0];
            r.parentNode.insertBefore(i, r)
        }, LazyLoad.prototype._purgeElements = function () {
            var t, e, n = this._elements, o = n.length, i = [];
            for (t = 0; o > t; t++) e = n[t], e.wasProcessed && i.push(t);
            for (; i.length > 0;) n.splice(i.pop(), 1)
        }, LazyLoad.prototype._startScrollHandler = function () {
            this._isHandlingScroll || (this._isHandlingScroll = !0, xmstLittle.bindEvent(this._settings.container, "scroll", this._handleScrollFn))
        }, LazyLoad.prototype._stopScrollHandler = function () {
            this._isHandlingScroll && (this._isHandlingScroll = !1, _removeEventListener(this._settings.container, "scroll", this._handleScrollFn))
        }, LazyLoad.prototype.handleScroll = function () {
            var t, e, n;
            this._settings && (e = _now(), n = this._settings.throttle, 0 !== n ? (t = n - (e - this._previousLoopTime), 0 >= t || t > n ? (this._loopTimeout && (clearTimeout(this._loopTimeout), this._loopTimeout = null), this._previousLoopTime = e, this._loopThroughElements()) : this._loopTimeout || (this._loopTimeout = setTimeout(_bind(function () {
                this._previousLoopTime = _now(), this._loopTimeout = null, this._loopThroughElements()
            }, this), t))) : this._loopThroughElements())
        }, LazyLoad.prototype.update = function () {
            this._elements = _convertToArray(this._queryOriginNode.querySelectorAll(this._settings.elements_selector)), this._purgeElements(), this._loopThroughElements(), this._startScrollHandler()
        }, LazyLoad.prototype.destroy = function () {
            _removeEventListener(window, "resize", this._handleScrollFn), this._loopTimeout && (clearTimeout(this._loopTimeout), this._loopTimeout = null), this._stopScrollHandler(), this._elements = null, this._queryOriginNode = null, this._settings = null
        }, new LazyLoad
    }
}, function (t, e) {
    xmstPerformance = function (t) {
        function e() {
            var e = "", n = new Array(100, 101, 127, 128, 129, 130, 131, 132);
            if (xmstLittle.inArray(t.domain_id, n)) {
                e = xmstLittle.getPcid();
                var o = new Date, i = function () {
                    xmstLittle.creatScript("//s1.mi.com/stat/18/jquery.statData.min.js?d=" + o.getFullYear() + (o.getMonth() + 1) + o.getDate())
                };
                i()
            }
            return t.pageid = e, t.pageid
        }

        var n = function () {
            this.p = []
        }, o = new n, i = "//a.stat.xiaomi.com/js/mstr.js?";
        return version = "1.4.20", o.p = window._msq, n.prototype.push = function (t) {
            return xmstLittle.isFunction(t[0]) ? void t[0](t.slice(1)) : void(void 0 !== n.prototype[t[0]] && n.prototype[t[0]](t.slice(1)))
        }, n.prototype.setDomainId = function (e) {
            t.domain_id = e[0]
        }, n.prototype.setUid = function (e) {
            t.uid = e[0]
        }, n.prototype.setVars = function (e) {
            t[e[0]] = e[1]
        }, n.prototype.getDomainId = function () {
            return t.domain_id
        }, n.prototype.getVars = function (e) {
            return t[e]
        }, n.prototype.getmiPageExposure = function () {
            return t.miPageExposure
        }, n.prototype.trackEvent = function (e) {
            var n = "", o = "", r = "", n = e[0];
            o = encodeURIComponent(e[1]), pid_loc = e[2];
            var s = "";
            e[3] && (r = encodeURIComponent(e[3]));
            var s = decodeURIComponent(r);
            if (sessionStorage.getItem("dataLogCode")) {
                var a = sessionStorage.getItem("dataLogCode");
                s = a + "​" + s
            }
            "" !== s && sessionStorage.setItem("dataLogCode", s);
            var c = new Date;
            c.setTime(c.getTime() + 18e5), xmstLittle.setCookie("log_code", encodeURIComponent(n) + "|" + encodeURIComponent(location.href), xmstLittle.getDomain(), c.toGMTString()), r && xmstLittle.setCookie("hd_log_code", r, xmstLittle.getDomain(), c.toGMTString());
            var l = "mstpid=" + encodeURIComponent(n) + "&" + xmstLittle.getBaseParam(t) + "&target=" + o + "&pid_loc=" + pid_loc + "&log_code=" + r,
                u = xmstLittle.getVars(t);
            xmstLittle.creatScript(i + l + u)
        }, n.prototype.trackPageView = function () {
            e();
            var n = xmstLittle.getBaseParam(t);
            varParam = xmstLittle.getVars(t), xmstLittle.creatScript(i + n + varParam);
            var o = new Date, r = encodeURIComponent(window.location.href);
            o.setTime(o.getTime() + 18e4), xmstLittle.setCookie("msttime", r, xmstLittle.getDomain(), o.toGMTString()), o.setTime(o.getTime() - 12e4), xmstLittle.setCookie("msttime1", r, xmstLittle.getDomain(), o.toGMTString()), "undefined" != typeof _msq && _msq.push(["miPageExposure"]), window.onerror = function (t, e, n, o) {
                var i = "100|" + location.hash + "|" + t + "|" + e + "|" + n + "|" + o + "|" + navigator.userAgent;
                (new Image).src = "//a.stat.xiaomi.com/js/pprof.js?err=" + encodeURIComponent(i)
            }
        }, n.prototype.miPageExposure = function () {
            function e() {
                var e = null, n = 0, o = setInterval(function () {
                    (null !== document.querySelector(t.miPageExposure) || void 0 === t.miPageExposure || n > 10) && (clearInterval(o), e ? e.update() : e = xmstSp({
                        container: document.querySelector(t.miPageExposure) || window,
                        elements_selector: "a"
                    })), n++
                }, 1e3)
            }

            "complete" === window.document.readyState ? e() : xmstLittle.bindEvent(window, "load", e)
        }, n.prototype.miPageTiming = function (e) {
            function n() {
                try {
                    var e = window.performance || window.webkitPerformance, e = e && e.timing;
                    if (!e) return "";
                    var o = (e.navigationStart, []), r = "";
                    if (o.domloadTime = e.loadEventEnd - e.loadEventStart, o.domloadTime < 0) return void setTimeout(function () {
                        n()
                    }, 200);
                    o.redirectTime = e.redirectEnd - e.redirectStart, o.dnsanalysis = e.domainLookupEnd - e.domainLookupStart, o.tcp = e.connectEnd - e.connectStart, o.http = e.responseEnd - e.requestStart, o.domCompleteStart = e.responseEnd - e.navigationStart, o.domComplete = e.domComplete - e.domLoading, o.domanalysis = e.domInteractive - e.domLoading, o.scriptLoad = e.domContentLoadedEventEnd - e.domContentLoadedEventStart, o.loadComplete = e.loadEventEnd - e.loadEventStart, o.pageComplete = e.loadEventEnd - e.navigationStart;
                    for (var s in o) r += "&" + s + "=" + o[s];
                    var a = xmstLittle.getBaseParam(t) + r + xmstLittle.getVars(t);
                    xmstLittle.creatScript(i + a)
                } catch (c) {
                }
            }

            "complete" === window.document.readyState ? n() : xmstLittle.bindEvent(window, "load", n)
        }, n.prototype.trackPanelShow = function (e) {
            if (!(e.length < 2)) {
                var n = e[0], o = encodeURIComponent(e[1]), r = new Object, s = document.getElementById(n),
                    a = "(http|https)://item.mi.com/([0-9]+).html.*";
                if (a = new RegExp(a), "undefined" != typeof s && null != s) try {
                    for (var c = s.getElementsByTagName("a"), l = "", u = xmstLittle.getBaseParam(t) + xmstLittle.getVars(t), d = 0, m = 0; m < c.length; m++) {
                        var p = c[m].getAttribute("data-stat-pid"), g = c[m].getAttribute("data-stat-aid");
                        if (null != p && null != g) {
                            var f = c[m].getAttribute("href"), h = g + "+" + p;
                            if ("undefined" == typeof r[h]) {
                                if (a.test(f)) {
                                    var v = a.exec(f);
                                    "object" == typeof v && v.length >= 3 && (f = v[2])
                                }
                                l += g + "+" + p + "+" + f + ";", d++, r[h] = 1, d % 20 == 0 && "" != l && (xmstLittle.creatScript(i + u + "&type=sp&spt=" + o + "&log=" + encodeURIComponent(l)), l = "")
                            }
                        }
                    }
                    "" != l && xmstLittle.creatScript(i + u + "&type=sp&spt=" + o + "&log=" + encodeURIComponent(l))
                } catch (_) {
                }
            }
        }, o
    }
}]);