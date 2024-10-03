const request = require('supertest');
const { app, server } = require('../src/index');

describe('Payment Service', () => {
  afterAll(() => {
    server.close();
  });

  it('should return the correct response from /payment', async () => {
    const res = await request(app).get('/payment');
    expect(res.statusCode).toEqual(200);
    expect(res.body).toHaveProperty('message', 'This is payment service');
  });
});
