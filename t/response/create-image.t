#!/usr/bin/env node

require("./proof")(1, function (parse, callback) {
  parse("CreateImage", callback);
}, function (object, deepEqual) {
  var expected = { imageId: "ami-4fa54026" };
  deepEqual(object, expected, "parse create image");
});
