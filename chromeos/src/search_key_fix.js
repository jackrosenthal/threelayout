(function () {
  var contextID = -1;

  chrome.input.ime.onFocus.addListener(function(context) {
    contextID = context.contextID;
  });

  chrome.input.ime.onBlur.addListener(function(context) {
    contextID = -1;
  });

  chrome.input.ime.onKeyEvent.addListener(
    function(engineID, keyData) {
      if (keyData.code == "MetaLeft") {
        keyData.code = "Tab";
        keyData.key = "Tab";
        for (const direction of ["keydown", "keyup"]) {
          keyData.type = direction;
          chrome.input.ime.sendKeyEvents(
            {"contextID": contextID,
              "keyData": [keyData]});
        }
        return true;
      }
      return false;
    });
})();
