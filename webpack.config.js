const path = require("path");
const webpack = require("webpack");

// devtool based on environment
const devtool = process.env.NODE_ENV === "production" ? false : "eval-source-map";
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
  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1
    })
  ]
}
