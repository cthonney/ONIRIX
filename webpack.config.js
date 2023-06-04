const path = require("path");
const webpack = require("webpack");
const TerserPlugin = require('terser-webpack-plugin');

// devtool based on environment
const devtool = process.env.NODE_ENV === "production" ? false : "source-map";
// mode based on environment
const mode = process.env.NODE_ENV === "production" ? "production" : "development";

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
    minimize: true,
    minimizer: [new TerserPlugin()],
  },
  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1
    })
  ]
}
