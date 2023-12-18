const mongoose = require('mongoose')

const UserSchema = mongoose.Schema({
  name: {
    type: String,
    require: true,
    trim: true
  },
  email: {
    type: String,
    require: true,
    validate: {
      validator: (v) => {
        const RegExp = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
        return v.match(RegExp)
      },
      message: '请输入正确的邮箱'
    }
  },
  password: {
    type: String,
    require: true,
    trim: true
  },
  address: {
    type: String,
    default: ''
  },
  type: {
    type: String,
    default: 'user'
  }
})

const User = mongoose.model('User', UserSchema)

module.exports = User
