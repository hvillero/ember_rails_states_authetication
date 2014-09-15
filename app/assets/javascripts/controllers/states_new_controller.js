
AppForStates.StatesNewController = Ember.Controller.extend({
    actions: {
        createState: function() {
            var state = this.store.createRecord('state', {
                abbreviation: this.get('abbreviation'),
                state: this.get('state'),
                description: this.get('description')
            });
            var self = this;
            state.save().then(function() {
                console.log('state created!');
                self.transitionToRoute('state', state);
                self.set('abbreviation', '');
                self.set('state', '');
                self.set('description', '');
            }, function() {
                alert('failed to create state!');
            });
        }
    }
});