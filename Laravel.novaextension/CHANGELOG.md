## v2.1.2

- Updated the `README` regarding syntax highlighting bug fix

## v2.1.1 🚀

### Bug Fix 🐞:

- HTML Theme selector improvement in highlights.scm

## v2.1.0 🚀

### Bug Fix 🐞:

- Support for ARM architecture

## v2.0.0 🚀

This major release takes care of many of the bugs and shorcomings due to the way
the blade files were parsed!

### New Stuff ✨:

- Bumped the tree-sitter-blade to the very latest, which was written from ground
  up to fix the shortcommings!
- The parser is now 5x faster
- The comments now work as expected with your code editor global shortcut.
  **NO** for workarounds
- The `Javascript` is now injected in the appropiate attribute thanks to the
  tree-sitter-blade
  - AlpineJS
  - Livewire
- The nested components are now correctly highlighted such as `<x-foo.bar ...`
- Better and more accurate syntax highlighting, in fact better than the internal
  HTML!
- Livewire Completions
- Improved syntax aware completion, based on where the code is located now!
- Better and improved semantic tree structure, allowing you to find bugs in your
  code faster.
- Support for `@svg`
- Fixed a bug relating to some parameter structures.
- Indentation should work as expected now!
- The parser is now using the ABI 15

## v1.9.0

### New Stuff ✨:

- Bumped `tree-sitter-blade` to `v0.11.0`
- Support for Inertia `@inertia` and `@inertiahead`
- Support for Ziggy `@routes`

## v1.8.0

### New Stuff ✨:

- Bumped `tree-sitter-blade` to `v0.10.0`
- Support for the brand new Laravel `@use` directive
- Support for `@js`

## v1.7.0

### New Stuff ✨:

- Bumps `tree-sitter-blade` to v0.9.2
- Shell injection for laravel Envoy

  <img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Images/Envoy%20Injection.png?raw=true" width="60%" style="border-radius: 2%" alt="php injection" title="php injection" />

- New directives
- **Envoy**
  - `@servers`
  - `@import`
  - `@task`
  - `@story`
  - `@setup`
- **Hooks**
  - `@before`
  - `@after`
  - `@error`
  - `@success`
  - `@finished`
- **Notifications**
  - `@before`
  - `@slack`
  - `@discord`
  - `@telegram`
  - `@microsoftTeams`

### Bug Fix 🐞:

- parsing bug #20

## v1.6.1

### Bug Fix 🐞:

- Emmet extension should now work as expected with Blade files! #19 🙈

## v1.6.0

### New Stuff ✨:

- Temporary replacement support for commenting in Blade, as there is a
  [conflict internally in Nova, when using injected languages](https://devforum.nova.app/t/comment-shortcut-improvement-in-complex-comment-situations-in-tree-sitter-based-syntax-extension/2220)
- There are three ways you can comments in blade files.

##### 1. Typing `{`

<img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/1f9bdb446e0bbaa4d36b4760750c9a8e33f3b52c/Images/comment.gif?raw=true" width="60%" style="border-radius: 2%" alt="comment" title="comment" />

##### 2. typing "comment"

<img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/1f9bdb446e0bbaa4d36b4760750c9a8e33f3b52c/Images/comment3.gif?raw=true" width="60%" style="border-radius: 2%" alt="comment" title="comment" />

##### 3. using `CMD+\` shortcut

<img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/1f9bdb446e0bbaa4d36b4760750c9a8e33f3b52c/Images/comment2.gif?raw=true" width="60%" style="border-radius: 2%" alt="comment" title="comment" />

## v1.5.0

### New Stuff ✨:

- Bumps `tree-sitter-blade` to
  [v0.7.0](https://github.com/EmranMR/tree-sitter-blade/releases/tag/v0.7.0)
- Full support
  [Template Inheritance](https://laravel.com/docs/10.x/blade#layouts-using-template-inheritance)
- `@aware`
- `@parent`
- inline `@section`
- nested `@section` with `@endsection` or `@show` end directive

## v1.4.0

### New Stuff ✨:

- Bumps `tree-sitter-blade` to v0.6.0
- Added support for `bracket` selectors, allowing the themes to take advantage
  of. #14
- Support for Laravel Pennant
  - `@feature`
  - `@elsefeature`

### Bug Fix 🐞:

- Fixed bug #15

## v1.2.0

### New Features ✨:

- bumped `tree-sitter-blade`🌳 to v0.4.1
- Support for Authorisation Directives:
  - `@can`
  - `@canany`
  - `@cannot`
  - `@elsecan`
  - `@elsecannot`
  - `@elsecanany`

## v.1.1.1

### Bug Fixes: 🐞

- Fixes attribute html injection problems. See #11

## v1.1.0

### New Features ✨:

#### 1. Completion now covers all the directives supported in

`tree-sitter-blade` and they are as it follows:

- **loops**
  - `@for`
  - `@foreach`
  - `@forelse`
  - `@while`
- **Livewire 🪼**
  - `@persist`
  - `@teleport`
  - `@volt`

#### 2. Syntax Highlighting adjustment

- The attribute directives now match the theme colouring for
  `tag.attribute.name`
- For other directives theme selector has been changed to `tag.framework` so
  that it is semantically correct

### Bug Fixes: 🐞

- Fixed the issue `@verbatim` adding parameter in completion
- Remove duplicate `@break` until the issue is fixed in #10

## 📣 1.0.0 🎉

##### Finally support for `php` **injection** 🥳 as well php autocompletion that is provided by Nova! see below for more info 👇

- This includes
  - inside `parameters`, `{{ }}` `@php @endphp` or anywhere else you expect
    syntax highlighting!
- The `php` injection would have **NOT** been possible without the work done
  @CalebDW on the core `tree-sitter-php`🙏 see
  [tree-sitter-php split_parser pull request draft](https://github.com/tree-sitter/tree-sitter-php/pull/180)
  - To get this work, I cloned the `split_parser draft`, then `php-only`
    subsyntax was created in Nova
  - Then all the first party `completions`, `queries` were copied, and adjusted
    to support the new `php-only` **sub-syntax**
  - This is a temporary measure until the pull request is merged, and then
    adopted by Nova, which might take a long time.

<img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Images/php%20injection.gif?raw=true" width="60%" style="border-radius: 2%" alt="php injection" title="php injection" />

##### Other Updates

- Updated the submodules to the latest version
- Completion file names all adjusted to avoid confusion, prefixed with `php` or
  `blade`
- Added adjusted `makeFile` to `tree-sitter-php-only` to allow generation of
  correct dynamic library for Nova

## 0.2.2

- Extension typo fix...

## 0.2.0

### New Features:

##### bumped the tree-sitter to v0.3.2, which includes:

- a lot of bug fixes,
- Folding Support
- Directive support for Livewire including the upcoming v3.0
  ![folding](https://github-production-user-asset-6210df.s3.amazonaws.com/11975985/254418729-ba36eb66-fee4-4898-b94c-8f503a012122.gif "folding")

##### Using Symbolic icons so that completion can be distinguished easier and semantic.

- `@vite` support
- Completions refactored and categorised to follow their order they appear in
  tree-sitter grammar as well as following the rule_names
- Autocompletions:
  - **attributes**
    - `@class`
    - `@style`
    - `@checked`
    - `@selected`
    - `@disabled`
    - `@readonly`
    - `@required`
  - **keywords**
    - `@csrf`
    - `@viteReactRefresh`
    - `@livewireStyles`
    - `@livewireScripts`
    - `@livewireScriptConfig`
  - **inline directives**
    - `@extend`
    - `@yield`
    - `@include`
    - `@includeIf`
    - `@includeWhen`
    - `@includeUnless`
    - `@includeFirst`
    - `@props`
    - `@method`
    - `@inject`
    - `@each`
    - `@vite`
    - `@livewire`
  - `@Switch`
    - `@case`
    - `@break`
    - `@default`
  - **conditionals and if statements**
    - `@section`
    - `@fragment`
    - `@once`
    - `@verbatim`
    - `@push`
    - `@pushOnce`
    - `@pushIf`
    - `@prepend`
    - `@prependOnce`
    - `@if`
    - `@Unless`
    - `@isset`
    - `@auth`
    - `@guest`
    - `@production`
    - `@env`
    - `@hasSection`
    - `@sectionMissing`
    - `@error`
  - `@php` tags

##### Adjustment to auto indentation increase/decrease

#### Bug Fix 🐞:

- Issues with context aware completion see #7 resulting with problem completing
  the attribute directives as well as none relating completion showing in
  attributes

## 0.1.0

- Support for **code folding** for blade directives
- bumped the `tree-sitter-blade` to 0.1.2

## Version 0.0.6

- Extension rearrangements for slimming purposes.
- Streamlining the build process & including the code signing

## Version 0.0.5

- Initial Release
- Integration with `tree-sitter-blade`
- Support for automatic indentation increase and decrease
- Very basic context aware autocompletion (not complete at all)
