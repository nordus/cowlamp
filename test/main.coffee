fakeCalamp = require '../'
should = require 'should'
require 'mocha'

describe 'fakeCalamp', ->
  describe '.messages', ->
    it 'should be defined', ->
      should.exist fakeCalamp.messages