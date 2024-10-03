const request = require('supertest');
const { app, server } = require('../src/index');

describe('Status Service', () => {
  afterAll(() => {
    server.close();
  });

  it('should return the correct response from /status', async () => {
    const res = await request(app).get('/status');
    expect(res.statusCode).toEqual(200);
    expect(res.body).toHaveProperty('message', 'This is status service');
  });
});
