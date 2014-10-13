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
    expect(@robot.hear).to.have.been.calledWith("shave a yak")

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith("yak shaving")

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith("shave the yak")

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith("yak shaver")
