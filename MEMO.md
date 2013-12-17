# vimport

vimport
vimquire
vimclude/vinclude
vuse/vimuse
external
vimload

Do you want to import/require/use/include packages first to use, or do you just
want to use functions/classes/modules now and get them later? This plugin is
for the latter kind of people.

This plugins is horizontally comprehensive and extensible. There are java
import plugin, scala (vertically) comprehensive plugin that includes import
feature, and etc.  Plugins shouldn't provide multiple features but should focus
on a feature, and do it well, like UNIX commands, in my opinion.

|language       |                           |
|---------------|---------------------------|
|Clojure        |\*1 :require, :use, :import|
|Scala          |import                     |
|Vim (vital.vim)|V.import, V.load           |
|Haskell        |import (qualified)         |
|Ruby           |require                    |
|C              |#include                   |

* \*1 inside ns block like below
    ```clojure
    (ns aaa
      (:require [bbb.ccc]
                [fff.ggg/hhh :as j])
      (:import [kkk.lll Mmm Nnn]))
    ```

## Vim's builtin features

Buffer-local options

* `&path`
* `&include`
* `&includeexpr`
* `&suffixesadd`

* `gf` to verify each
* `:checkpath!` to verify all

## Libraries embedded

* luaregex.lua
    * public domain
    * http://apostata.web.fc2.com/luaregex/
