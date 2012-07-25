#!/usr/bin/env node

require("./proof")(1, function (parse, callback) {
  parse("ConfirmProductInstance", callback);
}, function (object, deepEqual) {
  var expected =
  { ownerId: "254933287430"
  , "return": true
  };
  deepEqual(object, expected, "parse confirm product instance");
});
