## v.1.1.1

### Bug Fixes: 🐞

-   Fixes attribute html injection problems. See #11

## v1.1.0

### New Features ✨:

#### 1. Completion now covers all the directives supported in

`tree-sitter-blade` and they are as it follows:

-   **loops**
    -   `@for`
    -   `@foreach`
    -   `@forelse`
    -   `@while`
-   **Livewire 🪼**
    -   `@persist`
    -   `@teleport`
    -   `@volt`

#### 2. Syntax Highlighting adjustment

-   The attribute directives now match the theme colouring for
    `tag.attribute.name`
-   For other directives theme selector has been changed to
    `tag.framework` so that it is semantically correct

### Bug Fixes: 🐞

-   Fixed the issue `@verbatim` adding parameter in completion
-   Remove duplicate `@break` until the issue is fixed in #10

## 📣 1.0.0 🎉

##### Finally support for `php` **injection** 🥳 as well php autocompletion that is provided by Nova! see below for more info 👇

-   This includes
    -   inside `parameters`, `{{ }}` `@php @endphp` or anywhere else
        you expect syntax highlighting!
-   The `php` injection would have **NOT** been possible without the
    work done @CalebDW on the core `tree-sitter-php`🙏 see
    [tree-sitter-php split_parser pull request draft](https://github.com/tree-sitter/tree-sitter-php/pull/180)
    -   To get this work, I cloned the `split_parser draft`, then
        `php-only` subsyntax was created in Nova
    -   Then all the first party `completions`, `queries` were copied,
        and adjusted to support the new `php-only` **sub-syntax**
    -   This is a temporary measure until the pull request is merged,
        and then adopted by Nova, which might take a long time.

<img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Images/php%20injection.gif?raw=true" width="60%" style="border-radius: 2%" alt="php injection" title="php injection" />

##### Other Updates

-   Updated the submodules to the latest version
-   Completion file names all adjusted to avoid confusion, prefixed
    with `php` or `blade`
-   Added adjusted `makeFile` to `tree-sitter-php-only` to allow
    generation of correct dynamic library for Nova

## 0.2.2

-   Extension typo fix...

## 0.2.0

### New Features:

##### bumped the tree-sitter to v0.3.2, which includes:

-   a lot of bug fixes,
-   Folding Support
-   Directive support for Livewire including the upcoming v3.0
    ![folding](https://github-production-user-asset-6210df.s3.amazonaws.com/11975985/254418729-ba36eb66-fee4-4898-b94c-8f503a012122.gif 'folding')

##### Using Symbolic icons so that completion can be distinguished easier and semantic.

-   `@vite` support
-   Completions refactored and categorised to follow their order they
    appear in tree-sitter grammar as well as following the rule_names
-   Autocompletions:
    -   **attributes**
        -   `@class`
        -   `@style`
        -   `@checked`
        -   `@selected`
        -   `@disabled`
        -   `@readonly`
        -   `@required`
    -   **keywords**
        -   `@csrf`
        -   `@viteReactRefresh`
        -   `@livewireStyles`
        -   `@livewireScripts`
        -   `@livewireScriptConfig`
    -   **inline directives**
        -   `@extend`
        -   `@yield`
        -   `@include`
        -   `@includeIf`
        -   `@includeWhen`
        -   `@includeUnless`
        -   `@includeFirst`
        -   `@props`
        -   `@method`
        -   `@inject`
        -   `@each`
        -   `@vite`
        -   `@livewire`
    -   `@Switch`
        -   `@case`
        -   `@break`
        -   `@default`
    -   **conditionals and if statements**
        -   `@section`
        -   `@fragment`
        -   `@once`
        -   `@verbatim`
        -   `@push`
        -   `@pushOnce`
        -   `@pushIf`
        -   `@prepend`
        -   `@prependOnce`
        -   `@if`
        -   `@Unless`
        -   `@isset`
        -   `@auth`
        -   `@guest`
        -   `@production`
        -   `@env`
        -   `@hasSection`
        -   `@sectionMissing`
        -   `@error`
    -   `@php` tags

##### Adjustment to auto indentation increase/decrease

#### Bug Fix 🐞:

-   Issues with context aware completion see #7 resulting with problem
    completing the attribute directives as well as none relating
    completion showing in attributes

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
