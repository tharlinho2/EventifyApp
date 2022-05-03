// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from '@rails/ujs'
import * as ActiveStorage from '@rails/activestorage'
import 'channels'
import 'bootstrap/dist/js/bootstrap.bundle'

import '../src/application.css'

import './flashMessages.js'
import '../service_workers/service-worker'
import './buttonPwaInstall'

window.addEventListener('load', () => {
  navigator.serviceWorker.register('/service-worker.js').then(registration => {
    console.log('ServiceWorker registered: ', registration);

    window.Notification.requestPermission().then(permission => {    
      if(permission !== 'granted'){
        throw new Error('Permission not granted for Notification');
      }
    });

  }).catch(registrationError => {
    console.log('Service worker registration failed: ', registrationError);
  });
});

Rails.start()
ActiveStorage.start()

