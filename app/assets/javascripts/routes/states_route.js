AppForStates.StatesRoute = Ember.Route.extend({
    model: function(params) {
        return this.store.find('state');
    }
});