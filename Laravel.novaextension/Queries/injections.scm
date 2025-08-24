; tree-sitter-comment injection
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
        (#set! injection.language "bash"))
; -----------------------------------------


((php_only) @injection.content
    (#set! injection.language "php_embedded"))

((parameter) @injection.content
    (#set! injection.include-children) ; You may need this, depending on your editor e.g Helix
    (#set! injection.language "php_embedded"))




; ; Livewire attributes
(attribute
  (attribute_name) @_attr
    (#contains? @_attr
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
  (#set! injection.combined)
  (#set! injection.language "javascript"))

; ; See #33
; ; AlpineJS attributes
(attribute
  (attribute_name) @_attr
    (#match? @_attr "^x-[a-z]+")
  (quoted_attribute_value
    (attribute_value) @injection.content)
  (#set! injection.combined)
  (#set! injection.language "javascript"))

; ; Apline Events
(attribute
  (attribute_name) @_attr
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
    (attribute
      (attribute_name) @_attr
        (#match? @_attr "^:[a-z]+")
      (quoted_attribute_value
        (attribute_value) @injection.content)
      (#set! injection.combined)
      (#set! injection.language "javascript"))))

; ; ; Blade escaped JS attributes
; ; <x-foo ::bar="baz" />
(element
  (_
    (tag_name) @_tag
      (#match? @_tag "^x-[a-z]+")
    (attribute
      (attribute_name) @_attr
        (#match? @_attr "^::[a-z]+")
      (quoted_attribute_value
        (attribute_value) @injection.content)
      (#set! injection.combined)
      (#set! injection.language "javascript"))))

; ; ; Blade escaped JS attributes
; ; <htmlTag :class="baz" />
(element
  (_
    (attribute_name) @_attr
      (#match? @_attr "^:[a-z]+")
    (quoted_attribute_value
      (attribute_value) @injection.content)
    (#set! injection.combined)
    (#set! injection.language "javascript")))

; Blade PHP attributes
; <x-foo :bar="$baz" />
(element
  (_
    (tag_name) @_tag
      (#match? @_tag "^x-[a-z]+")
    (attribute
      (attribute_name) @_attr
        (#match? @_attr "^:[a-z]+")
      (quoted_attribute_value
        (attribute_value) @injection.content)
      (#set! injection.language "php_embedded"))))


; from tree-sitter-html

((script_element
  (raw_text) @injection.content)
 (#set! injection.language "javascript"))

((style_element
  (raw_text) @injection.content)
 (#set! injection.language "css"))


 ; Style attributes
 (attribute
  (attribute_name) @_attrname
  (quoted_attribute_value
    (attribute_value) @injection.content)
  (#set! injection.language "css")
  (#set! injection.reset)
  (#match? @_attrname "(?i)^style$")
 )

 ; Event handler attributes
 (
   (start_tag
     (attribute
       (attribute_name) @name
       (quoted_attribute_value
         ["\"" "'"]
         (_) @injection.content
         ["\"" "'"])
     )
   )
   (#match? @name "(?i)^on(abort|auxclick|beforematch|blur|cancel|canplay|canplaythrough|change|click|close|contextlost|contextmenu|contextrestored|copy|cuechange|cut|dblclick|drag|dragend|dragenter|dragleave|dragover|dragstart|drop|durationchange|emptied|ended|error|focus|formdata|input|invalid|keydown|keypress|keyup|load|loadeddata|loadedmetadata|loadstart|mousedown|mouseenter|mouseleave|mousemove|mouseout|mouseover|mouseup|paste|pause|play|playing|progress|ratechange|reset|resize|scroll|securitypolicyviolation|seeked|seeking|select|slotchange|stalled|submit|suspend|timeupdate|toggle|volumechange|waiting|webkitanimationend|webkitanimationiteration|webkitanimationstart|webkittransitionend|wheel)$")
   (#set! injection.language "javascript")
   (#set! injection.reset)
 )
