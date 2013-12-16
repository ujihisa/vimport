(ns sketch.core
  (:use [clojure.core.strint :only (<<)])
  (:require [clojure.tools.namespace.parse :as p])
  (:import [java.io PushbackReader]))

(defn- fname->pushback-reader [fname]
  (PushbackReader. (clojure.java.io/reader fname)))

(defn -main []
  (if-let [ns-expr (p/read-ns-decl (fname->pushback-reader "src/sketch/core.clj"))]
    (do
      (prn "yay!" ns-expr)
      (prn (p/deps-from-ns-decl ns-expr)))
    (prn "failed to get ns-expr")))
