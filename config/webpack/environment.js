const { environment } = require('@rails/webpacker')
var webpack = require('webpack');

environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
  }),
);

module.exports = environment
