chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'yak', ->
  beforeEach ->
    @robot =
      hear: sinon.spy()
    @msg =
      send: sinon.spy()

    require('../src/yak')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/(yak.*.shav)|(shav*.*yak)/i)
    