const request = require('supertest');
const { app, server } = require('../src/index');

describe('Auth Service', () => {
  afterAll(() => {
    server.close();
  });

  it('should return a success message for valid credentials', async () => {
    const response = await request(app)
      .post('/auth')
      .send({ username: 'admin', password: 'password123' });

    expect(response.statusCode).toBe(200);
    expect(response.body).toHaveProperty(
      'message',
      'Authentication successful'
    );
    expect(response.body).toHaveProperty('token', 'dummy-token');
  });

  it('should return an error message for invalid credentials', async () => {
    const response = await request(app)
      .post('/auth')
      .send({ username: 'admin', password: 'wrongpassword' });

    expect(response.statusCode).toBe(401);
    expect(response.body).toHaveProperty('message', 'Invalid credentials');
  });
});
