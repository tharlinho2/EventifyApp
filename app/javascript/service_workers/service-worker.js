self.addEventListener('install', function(event) {
  console.log('Service Worker installing.');
  self.skipWaiting();
});

self.addEventListener('push', function(event) {
  self.skipWaiting();
  // console.log('[Service Worker] Push Received.');
  // console.log(`[Service Worker] Push had this data: ${event.data.json().body}`);

  const title = event.data.json().title || 'A nice ';
  const options = {
    // body: event.data.json().body,
    body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 150',
    icon: 'images/icon.png',
    badge: 'images/badge.png',
    vibrate: [200, 100, 200, 100, 200, 100, 200],
    tag: 'vibration-sample'
  };

  event.waitUntil(self.registration.showNotification(title, options));
});