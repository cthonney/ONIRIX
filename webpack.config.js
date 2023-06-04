const path = require("path");
const webpack = require("webpack");
const TerserPlugin = require('terser-webpack-plugin');

// devtool based on environment
const devtool = process.env.NODE_ENV === "production" ? false : "source-map";
// mode based on environment
const mode = process.env.NODE_ENV === "production" ? "production" : "development";

// TerserPlugin configuration based on environment
const minimizer = process.env.NODE_ENV === "production" ? [new TerserPlugin()] : [];

module.exports = {
  mode: mode,
  devtool: devtool,
  entry: {
    application: "./app/javascript/application.js"
  },
  output: {
    filename: "[name].js",
    path: path.resolve(__dirname, "app/assets/builds"),
  },
  optimization: {
    minimize: process.env.NODE_ENV === "production",
    minimizer: minimizer,
  },
  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1
    })
  ]
}
