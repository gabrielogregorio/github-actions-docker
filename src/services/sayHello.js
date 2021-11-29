module.exports = (name = '') => {
  return {msg: `Hello ${name ? name : 'World' }` }
}