# <img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Laravel.novaextension/extension.png?raw=true" width="100px" style="position: relative; top: 20px" alt="alt text" title="image Title" /> Laravel Suite

---

-   ~~The extension is not quite there yet, because of the
    shortcomings with `tree-sitter-php`. However feel free to use it
    for experimenting and testing. I would appreciate any feedbacks.~~

### 🎉The Extension is now V1.0.0 🎉

> ⚠️ Needless to say, if you have the
> [Blade Extension](https://extensions.panic.com/extensions/melvinbeemer/melvinbeemer.Blade/)
> installed, you need to **uninstall or disable**. Otherwise this
> extension won't work as expected

##### Sponsorship ❤️

If [this project](https://github.com/EmranMR/Laravel-Nova-Extension/)
& [tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade)
put a delightful smile on your face, don't forget to **star ⭐**
**both projects** or
[_maybe sponsor..._](https://github.com/sponsors/EmranMR) ❤️👀

#### Introduction

This is a `tree-sitter` 🌳 based _syntax highlighting_ and
_autocompletion_, built on top of the **_brand new_**✨
[tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade)
which was created with this project in mind.

Hoping for this extension to be an **_all in one_** for Laravel
projects. A bit ambitious but hopefully we can get there one day!

### Features

-   Integration with
    [tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade)
    is up to date as of 10.x and growing!
-   Syntax highlighting and autocompletion support for all `blade`,
    including the
    [**_custom if statements_**](https://laravel.com/docs/master/blade#custom-if-statements)
    😱 and related projects such as the much anticipated upcoming 🚀
    Livewire v3.0.
-   `php` injection support 🥳 (this was one of the major hurdles see
    [tree-sitter-blade#5](https://github.com/EmranMR/tree-sitter-blade/issues/5)
    and
    [Nova Forum](https://devforum.nova.app/t/tree-sitter-php-injection-help-for-syntax-extension-developments/2165)
    for the backstory 😁)

    -   To find out how this was resolved checkout v1.0.0 release
        notes / Changelog
    -   This is a temporary measure, to overcome the `tree-sitter-php`
        shortcomings, until the `split_parser` is merged into
        `tree-sitter-php` and then it is adopted by Nova's first party
        PHP syntax highlighting. Which could possibly a long time
        until we see that...

    <img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Images/php%20injection.gif?raw=true" width="60%" style="border-radius: 2%" alt="php injection" title="php injection" />

-   Context aware autocompletion (_wip_)

    -   There is a
        [bug 🐞](https://devforum.nova.app/t/bug-query-element-for-tree-sitter-based-completion-sets-when-using-injection-scm/2331)
        associated with Nova which has been reported, until then it
        wont be as great as expected.

    -   For currently supported directives see the **changelog** or
        **github release notes**
    -   More directives are on the way, as I work through them. 😬

    <img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Images/Completion.gif?raw=true" width="60%" style="border-radius: 2%" alt="completion" title="completion" />

-   Support for indentation increase/decrease after pressing **_return
    key_**
-   Folding Support

    <img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Images/folding.gif?raw=true" width="60%" style="border-radius: 2%" alt="folding" title="folding" />

### Staying up-to-date?

Just _star_ ⭐ or _watch_ 👀
[Laravel Suite](https://github.com/EmranMR/Laravel-Nova-Extension/)
and [tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade)

## Issues:

#### Tree-Sitter-Blade 🌳

If you see any problem with _parsing_, very likely it is related to
the `tree-sitter-blade`. So please
[raise an issue on that repo](https://github.com/EmranMR/tree-sitter-blade/issues)

#### Laravel Suite <img src="https://github.com/EmranMR/Laravel-Nova-Extension/blob/main/Laravel.novaextension/extension.png?raw=true" width="40px" style="position: relative; top: 10px;left: 10px" alt="alt text" title="image Title" />

Anything else please raise an issue on
[Laravel Suite repo](https://github.com/EmranMR/Laravel-Nova-Extension/issues)

#### What if I dont know? 🤷‍♂️

Well raise it in either repos and I will link it up to the correct
repo, I won't bite, I promise! After all it is hard to draw the line
sometimes especially for highlighting or folding.

###### Disclaimer

---

This project is not approved, sponsored, or affiliated with Laravel,
Laravel or its related projects
