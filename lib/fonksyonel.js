
/*
 * fonksyonèl
 * https://github.com/Leny/fonksyonel
 *
 * Copyright (c) 2014 Leny
 * Licensed under the MIT license.
 */
"use strict";
var builtin, id, nop, undf;

undf = void 0;

exports.nop = nop = function() {};

exports.id = id = function(mArg) {
  return mArg;
};

exports.builtin = builtin = function(fFunction) {
  return nop.call.bind(fFunction);
};
