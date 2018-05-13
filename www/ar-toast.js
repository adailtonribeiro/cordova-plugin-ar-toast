let cordova = require('cordova');
let exec = cordova.require('cordova/exec');

function ArToast () {
  console.log('ArToast instanced');
}

/**
 * Show a toast message
 *
 * @param {Function} successCallback The function to call when the heading data is available
 * @param {Function} errorCallback The function to call when there is an error getting the heading data. (OPTIONAL)
 */
ArToast.prototype.show = function (msg, onSuccess, onError) {
  let errorCallback = function (obj) {
    onError(obj);
  };

  let successCallback = function (obj) {
    onSuccess(obj);
  };

  exec(successCallback, errorCallback, 'ArToast', 'show', [msg]);
};

module.exports = new ArToast();
