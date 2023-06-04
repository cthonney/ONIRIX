const path = require("path");
const webpack = require("webpack");

// devtool based on environment
const devtool = process.env.RAILS_ENV === "production" ? "source-map" : false;
// mode based on environment
const mode = process.env.RAILS_ENV === "production" ? "production" : "development";

module.exports = {
  mode: mode,
  devtool: devtool,
  entry: {
    application: "./app/javascript/application.js"
  },
  output: {
    filename: "[name].js",
    sourceMapFilename: "[file].map",
    path: path.resolve(__dirname, "app/assets/builds"),
  },
  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1
    })
  ]
}
