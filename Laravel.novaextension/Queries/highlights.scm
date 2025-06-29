(directive) @tag.framework
(attribute) @tag.attribute.name
(directive_start) @tag.framework
(directive_end) @tag.framework
(comment) @comment

(tag_name) @tag.name
(erroneous_end_tag_name) @invalid
(doctype) @declaration

 ; Attribute names and values
((attribute
    (_
        (attribute_name) @tag.attribute.name
        ["="]? @operator
        [
          (attribute_value) @tag.attribute.value
          (quoted_attribute_value
            ["\"" "'"] @tag.attribute.value.delimiter.left
            (_)? @tag.attribute.value
            ["\"" "'"] @tag.attribute.value.delimiter.right
          )
        ]?
  )

  (#not-match? @tag.attribute.name "(?i)^(src|href)$")
))

; Link attribute names and values
((attribute
    (_
        (attribute_name) @tag.attribute.name
        ["="]? @operator
        [
          (attribute_value) @tag.attribute.value.link
          (quoted_attribute_value
            ["\"" "'"] @tag.attribute.value.delimiter.left
            (_)? @markup.link
            ["\"" "'"] @tag.attribute.value.delimiter.right
          )
        ]?
  )
  (#match? @tag.attribute.name "(?i)^(src|href)$")
))


(entity) @value.entity

 [
  "{{"
  "}}"
  "{!!"
  "!!}"
  "("
  ")"
  "<"
  ">"
  "</"
  "/>"
] @bracket
