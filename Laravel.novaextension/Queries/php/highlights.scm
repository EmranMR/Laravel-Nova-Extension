; Types

(primitive_type) @identifier.type.builtin
(cast_type) @identifier.type.builtin
(named_type (name) @identifier.type) @identifier.type
(named_type (qualified_name) @identifier.type) @identifier.type
(optional_type "?" @operator)
(object_creation_expression (name) @identifier.type)
(trait_declaration (name) @identifier.type)

; Functions

(array_creation_expression "array" @identifier.function.builtin)
(list_literal "list" @identifier.function.builtin)

(class_declaration
  name: (name) @identifier.type.class.declare)
(enum_declaration
  name: (name) @identifier.type.enum.declare)

(use_declaration
  (name) @identifier.type)

(method_declaration
  name: (name) @identifier.method)

(function_call_expression
  function: (qualified_name (name)) @identifier.function)
(function_call_expression
  function: (name) @identifier.function)

(scoped_call_expression
  scope: (name) @identifier.type.class)
(scoped_call_expression
  name: (name) @identifier.function)

(member_call_expression
  name: (name) @identifier.method)

(function_definition
  name: (name) @identifier.function)

; "exit" is a function in the grammar, but is a keyword in the language
(expression_statement (name) @keyword
  (#equal? @keyword "exit"))

; Member

(property_element
  (variable_name) @identifier.property)

(member_access_expression
  name: (variable_name (name)) @identifier.property)
(member_access_expression
  name: (name) @identifier.property)

; Variables

(relative_scope) @identifier.variable.builtin

; ((name) @identifier.constant
;  (#match? @identifier.constant "^_?[A-Z][A-Z\\d_]+$"))

(class_constant_access_expression . (name) @identifier.type.class)
(class_constant_access_expression "::" @operator)

(object_creation_expression
  (name) @identifier.type.constructor
 (#match? @identifier.type.constructor "^[A-Z]"))

(variable_name "$" @identifier.variable.prefix) @identifier.variable

; Basic tokens

(string
  "'" @string.delimiter.left
  "'" @string.delimiter.right) @string
(encapsed_string
  "\"" @string.delimiter.left
  "\"" @string.delimiter.right) @string
(shell_command_expression
  "`" @string.delimiter.left
  "`" @string.delimiter.right) @string
(heredoc
  "<<<" @string.delimiter.left
  identifier: (heredoc_start) @string.delimiter.left
  end_tag: (heredoc_end) @string.delimiter.right) @string
(nowdoc
  "<<<" @string.delimiter.left
  "'" @string.delimiter.left
  identifier: (heredoc_start) @string.delimiter.left
  "'" @string.delimiter.left
  end_tag: (heredoc_end) @string.delimiter.right) @string
(boolean) @value.boolean
(null) @value.null
(integer) @value.number
(float) @value.number
(comment) @comment

[
  "="
  "=>"
  "->"
  "~"
  "!"
  "||"
  "&&"
  "|"
  "^"
  "&"
  "=="
  "!="
  "<>"
  "==="
  "!=="
  "<"
  ">"
  "<="
  ">="
  "<=>"
  "<<"
  ">>"
  "+"
  "-"
  "."
  "*"
  "/"
  "%"
  "++"
  "--"
] @operator

(variadic_parameter "..." @operator)

["and" "or" "xor"] @keyword

; Keywords

[
  "break"
  "case"
  "catch"
  "class"
  "const"
  "continue"
  "default"
  "do"
  "echo"
  "else"
  "elseif"
  "enddeclare"
  "endfor"
  "endforeach"
  "endif"
  "endswitch"
  "endwhile"
  "enum"
  "finally"
  "for"
  "foreach"
  "function"
  "if"
  "include_once"
  "include"
  "interface"
  "namespace"
  "new"
  "print"
  "require_once"
  "require"
  "return"
  "switch"
  "throw"
  "trait"
  "try"
  "use"
  "unset"
  "while"
] @keyword

[
  "abstract"
  "as"
  "declare"
  "extends"
  "final"
  "global"
  "implements"
  "instanceof"
  "insteadof"
  "private"
  "protected"
  "public"
  "static"
] @keyword.modifier

((name) @keyword.self
 (#eq? @keyword.self "this"))

(property_declaration (var_modifier) @keyword)

["{" "}" "(" ")" "[" "]"] @bracket

[";" ","] @punctuation.delimiter
