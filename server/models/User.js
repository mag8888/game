const mongoose = require('mongoose');

const UserSchema = new mongoose.Schema({
  username: String,
  email: String,
  password: String, // hashed
  balance: Number,
  games: Array
});

module.exports = mongoose.model('User', UserSchema);
