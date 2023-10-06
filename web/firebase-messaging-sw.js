importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-messaging-compat.js");

firebase.initializeApp({
    apiKey: "AIzaSyAwqeLxZC5_wI4y3O3ewjXFPe3qEgQZTUk",
    authDomain: "web-demo-pro-312b3.firebaseapp.com",
    projectId: "web-demo-pro-312b3",
    storageBucket: "web-demo-pro-312b3.appspot.com",
    messagingSenderId: "33665215245",
    appId: "1:33665215245:web:a46d83e1d8d874eeee1e44",
    measurementId: "G-SW393CCQPB"
});
// Necessary to receive background messages:
const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((m) => {
  console.log("onBackgroundMessage", m);
});