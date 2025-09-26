const path = require('path');

module.exports = {
  entry: './src/frontend/main.ts',
  mode: 'development',
  devtool: 'source-map',
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        use: {
          loader: 'ts-loader',
          options: {
            configFile: 'tsconfig.webpack.json'
          }
        },
        exclude: /node_modules/,
      },
    ],
  },
  resolve: {
    extensions: ['.tsx', '.ts', '.js'],
  },
  output: {
    filename: 'frontend.js',
    path: path.resolve(__dirname, 'dist'),
  },
  target: 'electron-renderer',
};
