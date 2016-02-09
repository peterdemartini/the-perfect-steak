_ = require 'lodash'

class Steak
  buy: =>
    console.log '## Buy:'
    console.log '* USDA Prime New York Steak'
    console.log ''

  setThickness: (thickness)=>
    @thickness = parseInt thickness
    console.log "[thickness set to #{@thickness} inches]"
    console.log ''

  prepare: =>
    console.log '## Prepare:'
    console.log '* Bring to room temperature'
    console.log '* Preheat grill to 450°'
    console.log '* Coat steak in cooking oil'
    console.log '* Generously coat steak with salt and pepper'
    console.log ''

  cook: =>
    console.log '## Cook:'
    sectionCookTime = _.round (@thickness * 10) / 4
    console.log '* Place on grill'
    stepNames = [
      'Rotate 90°',
      'Flip over',
      'Rotate 90°'
    ]
    _.each stepNames, (stepName) =>
      console.log "* #{stepName} after #{sectionCookTime} minutes"
    console.log '* Let sit for 5 minutes'
    console.log ''

  eat: =>
    console.log '--> EAT THE STEAK!!!'

module.exports = Steak
