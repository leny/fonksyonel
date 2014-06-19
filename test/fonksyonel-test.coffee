###
 * fonksyonèl
 * https://github.com/Leny/fonksyonel
 *
 * Copyright (c) 2014 Leny
 * Licensed under the MIT license.
###

###
  ======== A Handy Little Nodeunit Reference ========
  https://github.com/caolan/nodeunit

  Test methods:
    test.expect(numAssertions)
    test.done()
  Test assertions:
    test.ok(value, [message])
    test.equal(actual, expected, [message])
    test.notEqual(actual, expected, [message])
    test.deepEqual(actual, expected, [message])
    test.notDeepEqual(actual, expected, [message])
    test.strictEqual(actual, expected, [message])
    test.notStrictEqual(actual, expected, [message])
    test.throws(block, [error], [message])
    test.doesNotThrow(block, [error], [message])
    test.ifError(value)
###

"use strict"

fn = require "../lib/fonksyonel.js"

exports.essentials =
    setUp: ( done ) ->
        done()

    "nop": ( test ) ->
        test.equal fn.nop(), undefined, "should do nothing."
        test.done()

    "id": ( test ) ->
        test.equal fn.id( 2 ), 2, "should be 2."
        test.equal fn.id( null ), null, "should be null."
        test.equal fn.id( "yo" ), "yo", "should be \"yo\"."
        test.done()

    "builtin": ( test ) ->
        toArray = -> fn.builtin( Array::slice )( arguments )
        test.deepEqual toArray( 1, 2, 3 ), [ 1, 2, 3 ], "should be [ 1, 2, 3 ]."
        test.done()
