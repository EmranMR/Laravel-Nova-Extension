((text) @injection.content
    (#not-has-ancestor? @injection.content "envoy")
    (#set! injection.combined)
    (#set! injection.language php))

((text) @injection.content
    (#has-ancestor? @injection.content "envoy")
    (#set! injection.combined)
    (#set! injection.language shell))


((php_only) @injection.content
    (#set! injection.language php_embedded))
((parameter) @injection.content
    (#set! injection.language php_embedded))

