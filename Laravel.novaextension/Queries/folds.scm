((directive_start) @start
    (directive_end) @end.after
    (#set! role block))

((element
      (start_tag) @start
      (end_tag) @end)
     (#set! role tag)
    )

    ((script_element
      (start_tag) @start
      (end_tag) @end)
     (#set! role tag)
    )

    ((style_element
      (start_tag) @start
      (end_tag) @end)
     (#set! role tag)
    )

