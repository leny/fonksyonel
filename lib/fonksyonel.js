
/*
 * fonksyonèl
 * https://github.com/Leny/fonksyonel
 *
 * Copyright (c) 2014 Leny
 * Licensed under the MIT license.
 */
"use strict";
var apply, builtin, id, nop, undf, variadic,
  __slice = [].slice;

undf = void 0;

exports.nop = nop = function() {};

exports.id = id = function(mArg) {
  return mArg;
};

exports.builtin = builtin = function(fFunction) {
  return nop.call.bind(fFunction);
};

exports.variadic = variadic = function() {
  var aArguments;
  aArguments = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
  return aArguments;
};

exports.apply = apply = function() {
  var aArguments, fFunction;
  fFunction = arguments[0], aArguments = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
  return fFunction.apply(null, Array.prototype.concat.apply([], aArguments));
};
