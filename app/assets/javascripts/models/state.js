AppForStates.State = DS.Model.extend({
    abbreviation: DS.attr('string'),
    state: DS.attr('string'),
    description: DS.attr('string')
});