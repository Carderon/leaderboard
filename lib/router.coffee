Router.configure({
  layoutTemplate: 'layout',
  loadingTemplate: 'loading',
  waitOn: ->
    return Meteor.subscribe('teams')
});

Router.route('/', { name: 'leaderboard' });
Router.route('/admin', { name: 'admin' });