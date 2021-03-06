import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

export default Router.map(function() {
  this.route('users', function() {
    this.route('settings');
    this.route('subscriptions');
  });

  this.route('channel',       { path: '/channels/:channel_id' }, function () {
    this.route('episode',            { path: '/:episode_id' });
  });

  // Public route
  this.route('channel_by_url', { path: '/c/:channel_id' });
  this.route('search_by_url',  { path: '/s' });
  this.route('category',       { path: '/category/:category_id' });

  this.route('login');
  this.route('explore');
});
