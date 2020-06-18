import axios from 'axios';

const client = axios.create({
  baseURL: '/api',
  headers: {
    Accept: 'application/json',
  },
});

client.interceptors.request.use(
  (request) => request,
  (error) => {
    return Promise.reject(error);
  },
);

// Always unpack the payload (data) from the response
client.interceptors.response.use(
  (response) => response.data,
  (error) => Promise.reject(error),
);


export const getProjects = (): Promise<any> =>
  client.get('projects')
