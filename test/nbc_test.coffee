chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'nbc', ->
  beforeEach ->
    @robot =
      hear: sinon.spy()
    @msg =
      send: sinon.spy()

    require('../src/nbc')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/(themoreyouknow|The more you know|tmyk)/i)

  it 'sends a message', ->
    expect(@msg.send).to.have.been.calledWith("themoreyouknow")

  it 'sends a message', ->
    expect(@msg.send).to.have.been.calledWith("The more you know")

  it 'sends a message', ->
    expect(@msg.send).to.have.been.calledWith("tmyk")
