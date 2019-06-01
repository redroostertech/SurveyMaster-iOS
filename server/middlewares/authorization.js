const jwt = require('jsonwebtoken')
const { jwtPrivateKey } = require('../config')
const User = require('../models/user')
module.exports = async (req, res, next) => {
  const token = req.header('x-auth-token')
  if (!token) return res.status(401).send('Access denied. no token provided.')
  try {
    const decoded = jwt.verify(token, jwtPrivateKey)
    
    const user = await User.findUserById(decoded._id)
    console.log(user);
    if (!user) return res.status(400).send('Invalid token. user not found');
    
    req.user = decoded;
    next()
  } catch (err) {
    console.log(err);
    return res.status(400).send('Invalid token.')
  }
}