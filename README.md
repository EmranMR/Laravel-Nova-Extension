# <img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Laravel.novaextension/extension.png?raw=true" width="100px" style="position: relative; top: 20px" alt="alt text" title="image Title" /> Laravel Suite

---

## Important Prerequisites

> ⚠️ Needless to say, if you have the
> [Blade Extension](https://extensions.panic.com/extensions/melvinbeemer/melvinbeemer.Blade/)
> installed, you need to **uninstall or disable**. Otherwise this extension
> won't work as expected

## Sponsorship ❤️

If [this project](https://github.com/EmranMR/Laravel-Nova-Extension/) &
[tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade) put a
delightful smile on your face, don't forget to **star ⭐** **both projects** or
[_maybe sponsor..._](https://github.com/sponsors/EmranMR) 👀

<a href="https://www.buymeacoffee.com/bw8dwqpbd2w" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>

## Introduction

This extension provides Laravel `blade` file parsing based on a
`tree-sitter-blade`🌳
[tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade) which was
created with this extension in mind.

Hoping for this extension to be an **_all in one_** for Laravel projects in
Nova, now that the `tree-sitter-blade` project has reached a very stable stages
`0.12.0+`

## Features

#### 1. Integration with [tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade)

- It is up to date as of 12.x

#### 2. Syntax highlighting and autocompletion support for all `blade` directives

- including the
  [**_custom if statements_**](https://laravel.com/docs/master/blade#custom-if-statements)
  and related projects such as the much Livewire v3.0.

#### 3. `php` injection support

- Unlike traditional textmate based parsers, you will now get `php` injections
  at all the right spots required. (no more `string` highlighting as parameter
  or in blade attributes!) 🤘

<img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Images/php%20injection.gif?raw=true" width="60%" style="border-radius: 2%" alt="php injection" title="php injection" />

#### 4. Context aware autocompletion

- You get the correct autocompletion, exactly based on the location of your
  cursor in the document
- For example you do not get _blade attribute_ autocompletion, if the cursor is
  not located in the attribute syntax tree

  <img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Images/Completion.gif?raw=true" width="60%" style="border-radius: 2%" alt="completion" title="completion" />

#### 5. Support for indentation increase/decrease after pressing **_return key_**

#### 6. Folding Support

<img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Images/folding.gif?raw=true" width="60%" style="border-radius: 2%" alt="folding" title="folding" />

#### 7. Shell injection / Laravel Envoy

- You now get completion for Laravel envoy directives
- On top of that, the content of the tasks are correctly parsed as `shell`! 🤯

<img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Images/Envoy%20Injection.png?raw=true" width="60%" style="border-radius: 2%" alt="php injection" title="php injection" />

#### 8. Commenting

- Since the `v2.0.0` thanks to `tree-sitter-blade v0.12.0` you can now use your
  global commenting shortcut to comment out in blade comments, and not in `html`
  syntax!

#### 9. Javascript injection for AlpineJS and Livewire

- From `v2.0.0` you will now get syntax highlighting and javascript injection
  for AlpineJS and Livewire attributes!

### Staying up-to-date?

Just _star_ ⭐ or _watch_ 👀
[Laravel Suite](https://github.com/EmranMR/Laravel-Nova-Extension/) and
[tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade)

## Issues:

#### Tree-Sitter-Blade 🌳

If you see any problem with _parsing_, very likely it is related to the
`tree-sitter-blade`. So please
[raise an issue on that repo](https://github.com/EmranMR/tree-sitter-blade/issues)

#### Laravel Suite <img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Laravel.novaextension/extension.png?raw=true" width="40px" style="position: relative; top: 10px;left: 10px" alt="alt text" title="image Title" />

Anything else please raise an issue on
[Laravel Suite repo](https://github.com/EmranMR/Laravel-Nova-Extension/issues)

###### Disclaimer

---

This project is not approved, sponsored, or affiliated with Laravel, Laravel or
its related projects
