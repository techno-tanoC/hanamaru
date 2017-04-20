const webpack = require('webpack')
const path = require('path')
const HtmlWebpackPlugin = require('html-webpack-plugin')

const config = {
  entry: './app',
  output: {
    filename: '[name].js',
    publicPath: '/',
  },
  plugins: [
    new HtmlWebpackPlugin({template: 'app/index.html'})
  ],
  module: {
    loaders: [{
      test: /\.js$/,
      loader: 'babel-loader',
      exclude: /node_modules/,
    }]
  },
  devtool: 'inline-source-map',
  devServer: {
    contentBase: 'public/dist',
    port: 4000,
  },
}

module.exports = config
