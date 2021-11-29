module.exports = (name = '') => {
  return {msg: `Hello error ${name ? name : 'World' }` }
}