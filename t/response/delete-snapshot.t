#!/usr/bin/env node

require("./proof")(1, function (parse, callback) {
  parse("DeleteSnapshot", callback("object"));
}, function (object, deepEqual) {
  var expected = { "return": true };
  deepEqual(expected, object, "parse delete snapshot");
});
