const request = require('supertest');
const { app, server } = require('../src/index');

describe('Finance Service', () => {
  afterAll(() => {
    server.close();
  });

  it('should return the correct response from /finance', async () => {
    const res = await request(app).get('/finance');
    expect(res.statusCode).toEqual(200);
    expect(res.body).toHaveProperty('message', 'This is finance service');
  });
});
