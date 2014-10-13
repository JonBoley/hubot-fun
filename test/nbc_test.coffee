chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'nbc', ->
  beforeEach ->
    @robot =
      hear: sinon.spy()

    require('../src/nbc')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith("themoreyouknow")

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith("The more you know")

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith("tmyk")
