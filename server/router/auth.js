const express = require('express');
const UserModule = require('../modules/user');
const cryptoJs = require('crypto-js')
const authRouter = express.Router();

authRouter.post('/api/signup', async (req, res) => {
  console.log(req.body)
  try {
    const { name, password, email } = req.body
    const existingUser = await UserModule.findOne({ email });
    if (existingUser) {
      return res.status(400).json({
        message: 'User already exists'
      });
    }

    let user = new UserModule({
      name,
      password: cryptoJs.SHA1(password),
      email
    })
    user = await user.save();
    return res.json({
      user
    })

  } catch (error) {
    res.status(500).json({ error: error.message })
  }

})

module.exports = authRouter;
