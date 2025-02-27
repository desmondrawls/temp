class Mlp.Views.EverfreeScene extends Backbone.View
    template: JST['exploring/everfree_scene']

    render: =>
      console.log("rendering everfree_scene...")
      console.log(this.model)
      console.log(@template)
      $(@el).html(@template(scene: this.model))
      Mlp.vent.trigger('everfree_scene:rendered', this.model.get('pony_id'))
      this