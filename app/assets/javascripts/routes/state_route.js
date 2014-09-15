AppForStates.StateRoute = Ember.Route.extend({
    model: function(params) {
        return this.store.find('state', params.state_id);
    }
});