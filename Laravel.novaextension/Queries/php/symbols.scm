(class_declaration
  name: (name) @name
 (#set! role class)
) @subtree

(enum_declaration
  name: (name) @name
 (#set! role enum)
) @subtree

(property_declaration
  (property_element
    (variable_name (name) @name)
  )
 (#set! role property)
) @subtree

(method_declaration
  name: (name) @name
  parameters: (formal_parameters) @arguments.target
 (#set! role method)
 (#set! arguments.query "php/arguments.scm")
) @subtree

(function_definition
  name: (name) @name
  parameters: (formal_parameters) @arguments.target
 (#set! role function)
 (#set! arguments.query "php/arguments.scm")
) @subtree

(trait_declaration
  (name) @name
  (#set! role type)
) @subtree

;((php_tag) @start.before @name
; (#set! role tag-framework)
; (#set! scope.group php_tag)
;)
;((text_interpolation "?>" @end.after)
; (#set! scope.group php_tag)
;)
