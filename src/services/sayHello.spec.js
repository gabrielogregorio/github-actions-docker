const sayHello = require("./sayHello");

describe('sayHello', () => {
  it('Should say hello world', () => {
    const response = sayHello()
    expect(response.msg).toBe("Hello World")
  })

  it('Should say hello {name}', () => {
    const response = sayHello('Greg')
    expect(response.msg).toBe("Hello Greg")
  })

})