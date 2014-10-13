chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'brilliant', ->
  beforeEach ->
    @robot =
      hear: sinon.spy()

    require('../src/brilliant')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/(brilliant)/i)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWithMatch("Brilliant!")
