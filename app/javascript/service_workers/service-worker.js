self.addEventListener('install', function(event) {
  console.log('Service Worker installing.');
  self.skipWaiting();
});

self.addEventListener('push', function(event) {
  self.skipWaiting();

  const title = event.data.json().title || 'A nice ';
  const options = {
    // body: event.data.json().body,
    body: event.data.json().body,
    icon: 'images/icon.png',
    badge: 'images/badge.png',
    vibrate: [200, 100, 200, 100, 200, 100, 200],
    tag: 'vibration-sample'
  };

  event.waitUntil(self.registration.showNotification(title, options));
});