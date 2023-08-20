## 0.2.1
- Extension typo fix...
## 0.2.0
- bumped the tree-sitter to v0.3.2, which includes:
    - a lot of bug fixes,
    - Folding Support
    - Directive support for Livewire including the upcoming v3.0
    ![folding](https://github-production-user-asset-6210df.s3.amazonaws.com/11975985/254418729-ba36eb66-fee4-4898-b94c-8f503a012122.gif "folding")
- Using Symbolic icons so that completion can be distinguished easier and semantic.
- `@vite` support
- Completions refactored and categorised to follow their order they appear in tree-sitter grammar as well as following the rule_names
- Autocompletions:
    - attributes
    - inline directives
    - Switch
    - conditionals and if statements
    - `@php` tags
- Adjustment to auto indentation increase/decrease


###### Bug Fix:
- Issues with context aware completion see #7 resulting with problem completing the attribute directives as well as none relating completion showing in attributes


## 0.1.0

-   Support for **code folding** for blade directives
-   bumped the `tree-sitter-blade` to 0.1.2

## Version 0.0.6

-   Extension rearrangements for slimming purposes.
-   Streamlining the build process & including the code signing

## Version 0.0.5

-   Initial Release
-   Integration with `tree-sitter-blade`
-   Support for automatic indentation increase and decrease
-   Very basic context aware autocompletion (not complete at all)
