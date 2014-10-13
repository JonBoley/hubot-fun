chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'yak', ->
  beforeEach ->
    @robot =
      hear: sinon.spy()

    require('../src/yak')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/(yak.*.shav)|(shav*.*yak)/i)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWithMatch("yak shaving")

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWithMatch("shave that yak!")

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWithMatch("yak shaver")

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWithMatch("shaved a YAK!")
