AppForStates.StateEditRoute = Ember.Route.extend({
    model: function() {
        return this.modelFor('state');
    }
});