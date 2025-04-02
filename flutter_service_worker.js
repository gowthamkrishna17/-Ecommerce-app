'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "32d2f7b07a735839a60fd1a8e5e684d9",
"assets/AssetManifest.bin.json": "b32dec1adc42aaa6a12cbd8fd16904b9",
"assets/AssetManifest.json": "2e2483070ab4f16e51363ed1b266cbce",
"assets/assets/fonts/Roboto-Bold.ttf": "36b5bab58a18b9c924861a4ccbf1a790",
"assets/assets/fonts/Roboto-Regular.ttf": "5673da52c98bb6cb33ada5aaf649703e",
"assets/assets/icons/category.png": "25915fb7ec418850d1c5a7bc3aff509a",
"assets/assets/icons/home.png": "1fd72a0b4ab396a013402e6f5a5bccd6",
"assets/assets/icons/market.png": "dceff98352c46df8c16e28be3d9ffff7",
"assets/assets/icons/person.png": "e1d17d8b51f6bbde73947ec16e0a0e91",
"assets/assets/images/1298634.jpg": "aabbfb2baff28e347b3ca8e6220a2b8c",
"assets/assets/images/1305111.jpeg": "adf77ceeb1dc74ba54b3e665dd9ae0c8",
"assets/assets/images/143703.png": "3e18a005dadc4700fa161ac2c3b4ce27",
"assets/assets/images/218631.gif": "461dc1ba259f4b86d34d5bb424fe6859",
"assets/assets/images/5afe72aca3114804b811d63a0857ebd3.jpg": "7ff71e3340fe8f85b61b95f699d5d37d",
"assets/assets/images/men.6605_12-01-2024-15-45_650x900": "336f6666fb93506bc9ee11ced7f1c994",
"assets/assets/images/onacopa21.jpg": "aed4f234a4c3a1f866ce88056bee35d1",
"assets/assets/images/onam-offer.jpg": "79fd32865c76abb876f34edcc1c26e53",
"assets/assets/images/onam-pages_04.webp": "53057219544c3e72dba32d673584a3e9",
"assets/assets/images/onamshirt.jpeg": "a2fc7452abd51c4cd8847ccfa3548d4e",
"assets/assets/images/pookalam.jpg": "7ff71e3340fe8f85b61b95f699d5d37d",
"assets/assets/images/poster.jpg": "2ef098c505386c2d285c6f9e26448817",
"assets/assets/images/Sadhya.jpg": "c4ab59f6cd09f37741d547abe4b7bb0c",
"assets/assets/images/sweets.jpg": "d3935737e8a2056b7c25a3479b75c5aa",
"assets/assets/images/thorfinn-anime-character-collage-odsqa0keqf59h1kj.webp": "bd9df7a38883f47bee5920763d5258e0",
"assets/assets/logo/facebook.png": "c0e1087869051e237ffb707a35238d87",
"assets/assets/logo/facebook.svg": "80909b19f602e3921e69ada5ce0d8602",
"assets/assets/logo/google%2520(1).png": "558c9f6dcc0af14042e26b5c0fbe22e8",
"assets/assets/logo/google.png": "7fe850bdae479b91a6802e5fa0f51eab",
"assets/FontManifest.json": "a0c61cf68e7137813108be4cb323f0ef",
"assets/fonts/MaterialIcons-Regular.otf": "296185b8c662d92966a0364159c88007",
"assets/NOTICES": "c1e2636e27088858ac7299e8a9223331",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "9e36b2ba1e25a382646896096d8f9441",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "844a9a6cf28edc40f647a14e4102f2df",
"/": "844a9a6cf28edc40f647a14e4102f2df",
"main.dart.js": "fab79cf058a405750d3f37e1f9e32319",
"manifest.json": "e953ce6edfed0a9c7234bcfd3d39fbbd",
"version.json": "f2776bb7204e9a0562dd988f37ad84b5"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
