function fn(args) {
  var timestamp = java.lang.System.currentTimeMillis();
  return args.prefix + timestamp + '@' + args.domain;
}
