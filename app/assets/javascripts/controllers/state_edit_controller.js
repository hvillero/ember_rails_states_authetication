AppForStates.StateEditController = Ember.ObjectController.extend({
    actions: {
        updateState: function() {
            var state = this.get('content');
            state.set('abbreviation', this.get('abbreviation'));
            state.set('state', this.get('state'));
            state.set('description', this.get('description'));
            var controller = this;
            state.save().then(function() {
                console.log('state saved!');
                controller.transitionToRoute('state');
            }, function() {
                alert('failed to save state!');
            });
        }
    }
});