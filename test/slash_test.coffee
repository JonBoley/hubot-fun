chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'slash', ->
  beforeEach ->
    @robot =
      hear: sinon.spy()
    @msg =
      send: sinon.spy()

    require('../src/slash')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/(slash)/i)
