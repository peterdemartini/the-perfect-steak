Steak = require './'
commander = require 'commander'

class VirtualSteakCooker
  parseOptions: =>
    commander
      .usage '[options]'
      .option '-i, --inches <1>', 'Steak thickness in inches'
      .parse process.argv

    @inches = commander.inches

    unless @inches
      commander.outputHelp()
      process.exit 0

  run: =>
    @parseOptions()
    steak = new Steak()
    steak.buy()
    steak.setThickness(@inches) # inches
    steak.prepare()
    steak.cook()
    steak.eat()

new VirtualSteakCooker().run()
