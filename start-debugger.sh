#! /bin/sh

# port number must match that in shadow-cljs.edn
clj \
  -Sforce \
  -J-Dclojure.server.repl={:port,5555,:accept,clojure.core.server/repl} \
  -Sdeps '{:deps {com.github.flow-storm/flow-storm-dbg {:mvn/version "4.0.2"}}}' \
  -X flow-storm.debugger.main/start-debugger \
  :theme :dark \
  :port 9000 \
  :repl-type :shadow \
  :build-id :dev
