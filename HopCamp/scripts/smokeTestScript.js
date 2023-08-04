import http from 'k6/http';
import { check, sleep} from 'k6';

export const options = {
  vus: 3, // Key for Smoke test. Keep it at 2, 3, max 5 VUs
  duration: '1m', // This can be shorter or just a few iterations
};

//Joe's Droplet

export default () => {
  let res1 = http.get('http://159.223.122.220:5001/api/campsites');
  let res2 = http.get('http://159.223.122.220:5001/api/ratings');
  let res3 = http.get('http://159.223.122.220:5001/api/camping-spots');
  let res4 = http.get('http://159.223.122.220:5001/api/campers-also');
  let res5 = http.get('http://159.223.122.220:5001/api/photogallery');
  let res6 = http.get('http://159.223.122.220:5001/api/things-nearby');
  check(res1, { 'status was 200': r => r.status == 200 });
  check(res2, { 'status was 200': r => r.status == 200 });
  check(res3, { 'status was 200': r => r.status == 200 });
  check(res4, { 'status was 200': r => r.status == 200 });
  check(res5, { 'status was 200': r => r.status == 200 });
  check(res6, { 'status was 200': r => r.status == 200 });
  sleep(1);
  // MORE STEPS
  // Here you can have more steps or complex script
  // Step1
  // Step2
  // etc.
};

// Israr's Droplet

// export default () => {
//     let res1 = http.get('http://134.122.22.60:5001/api/campsites');
//     let res2 = http.get('http://134.122.22.60:5001/api/ratings');
//     let res3 = http.get('http://134.122.22.60:5001/api/camping-spots');
//     let res4 = http.get('http://134.122.22.60:5001/api/campers-also');
//     let res5 = http.get('http://134.122.22.60:5001/api/photogallery');
//     let res6 = http.get('http://134.122.22.60:5001/api/things-nearby');
//     check(res1, { 'status was 200': r => r.status == 200 });
//     check(res2, { 'status was 200': r => r.status == 200 });
//     check(res3, { 'status was 200': r => r.status == 200 });
//     check(res4, { 'status was 200': r => r.status == 200 });
//     check(res5, { 'status was 200': r => r.status == 200 });
//     check(res6, { 'status was 200': r => r.status == 200 });
//     sleep(1);
//     // MORE STEPS
//     // Here you can have more steps or complex script
//     // Step1
//     // Step2
//     // etc.
//   };
