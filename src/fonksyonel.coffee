###
 * fonksyonèl
 * https://github.com/Leny/fonksyonel
 *
 * Copyright (c) 2014 Leny
 * Licensed under the MIT license.
###

"use strict"

undf = undefined

# --- essentials

# nop, an empty function
exports.nop = nop = ->

# id, an identity function
exports.id = id = ( mArg ) -> mArg

# builtin, turn a native function into a regular function
exports.builtin = builtin = ( fFunction ) -> nop.call.bind fFunction

# variadic, returns arguments as array
exports.variadic = variadic = ( aArguments... ) -> aArguments

# apply, a normalize version of Function::apply
exports.apply = apply = ( fFunction, aArguments... ) -> fFunction Array::concat.apply( [], aArguments )...

# --- higher-order

exports.notF = notF = ( fFunction ) -> ( aArguments... ) -> not fFunction aArguments...
