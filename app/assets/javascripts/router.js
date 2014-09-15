// For more information see: http://emberjs.com/guides/routing/

AppForStates.Router.map(function() {
    this.resource('states', function(){
        this.route('new');
    });
    this.resource('state', {path: 'state/:state_id'}, function(){
        this.route('edit');
    });
    this.route('sign_in');
    this.route('sign_out');
});
