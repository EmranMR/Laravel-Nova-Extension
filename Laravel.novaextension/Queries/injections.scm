; tree-sitter-comment injection
; if available
((comment) @injection.content
 (#set! injection.language "comment"))

; -----------------------------------------
; If your code editor supports **has-ancestor**
; could be bash or zsh
; or whatever tree-sitter grammar you have.
; -----------------------------------------
    ((text) @injection.content
        (#has-ancestor? @injection.content "envoy")
        (#set! injection.combined)
        (#set! injection.language bash))
; -----------------------------------------


((php_only) @injection.content
    (#set! injection.language "php_embedded"))

((parameter) @injection.content
    (#set! injection.include-children) ; You may need this, depending on your editor e.g Helix
    (#set! injection.language "php_embedded"))


; ; Livewire attributes
((attribute_name) @_attr
    (#any-of? @_attr
      "wire:click"
      "wire:submit"
      "wire:model"
      "wire:loading"
      "wire:navigate"
      "wire:current"
      "wire:cloak"
      "wire:dirty"
      "wire:confirm"
      "wire:transition"
      "wire:init"
      "wire:poll"
      "wire:offline"
      "wire:ignore"
      "wire:replace"
      "wire:show"
      "wire:stream"
      "wire:text"
    )
  (quoted_attribute_value
    (attribute_value) @injection.content)
  (#set! injection.language "javascript"))

; ; See #33
; ; AlpineJS attributes
((attribute_name) @_attr
    (#match? @_attr "^x-[a-z]+")
  (quoted_attribute_value
    (attribute_value) @injection.content)
  (#set! injection.combined)
  (#set! injection.language "javascript"))

; ; Apline Events
((attribute_name) @_attr
    (#match? @_attr "^@[a-z]+")
  (quoted_attribute_value
    (attribute_value) @injection.content)
  (#set! injection.combined)
  (#set! injection.language "javascript"))

; ; normal HTML element alpine attributes
(element
  (_
    (tag_name) @_tag
      (#match? @_tag "[^x][^-]")
    (attribute_name) @_attr
      (#match? @_attr "^:[a-z]+")
    (quoted_attribute_value
      (attribute_value) @injection.content)
    (#set! injection.combined)
    (#set! injection.language "javascript")))

; ; ; Blade escaped JS attributes
; ; <x-foo ::bar="baz" />
(element
  (_
    (tag_name) @_tag
      (#match? @_tag "^x-[a-z]+")
    (attribute_name) @_attr
      (#match? @_attr "^::[a-z]+")
    (quoted_attribute_value
      (attribute_value) @injection.content)
    (#set! injection.language "javascript")))

; ; ; Blade escaped JS attributes
; ; <htmlTag :class="baz" />
(element
  (_
    (attribute_name) @_attr
      (#match? @_attr "^:[a-z]+")
    (quoted_attribute_value
      (attribute_value) @injection.content)
    (#set! injection.language "javascript")))

; Blade PHP attributes
; <x-foo :bar="$baz" />
(element
  (_
    (tag_name) @_tag
      (#match? @_tag "^x-[a-z]+")
      (attribute_name) @_attr
        (#match? @_attr "^:[a-z]+")
      (quoted_attribute_value
        (attribute_value) @injection.content)
      (#set! injection.language "php_embedded")))


; from tree-sitter-html

((script_element
  (raw_text) @injection.content)
 (#set! injection.language "javascript"))

((style_element
  (raw_text) @injection.content)
 (#set! injection.language "css"))
