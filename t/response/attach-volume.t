#!/usr/bin/env node

require("./proof")(1, function (parse, callback) {
  parse("AttachVolume", callback("object"));
}, function (object, deepEqual) {
  var expected =
  { volumeId: "vol-4d826724"
  , instanceId: "i-6058a509"
  , device: "/dev/sdh"
  , status: "attaching"
  , attachTime: new Date(Date.UTC(2008, 4, 7, 11, 51, 50))
  };
  deepEqual(object, expected, "parse attach volume");
});
