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

  it 'sends a message', ->
    expect(@msg.send).to.have.been.calledWith("yak shaving")

  it 'sends a message', ->
    expect(@msg.send).to.have.been.calledWith("shave that yak!")

  it 'sends a message', ->
    expect(@msg.send).to.have.been.calledWith("yak shaver")

  it 'sends a message', ->
    expect(@msg.send).to.have.been.calledWith("I shaved a YAK!")
