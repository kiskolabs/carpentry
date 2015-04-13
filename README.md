Carpentry
=========

[![Build Status](https://travis-ci.org/kiskolabs/carpentry.svg?branch=master)](https://travis-ci.org/kiskolabs/carpentry) [![Gem Version](https://badge.fury.io/rb/carpentry.svg)](http://badge.fury.io/rb/carpentry)

Handcrafted prototypes with ease.


Installation
------------

Add Carpentry to Gemfile:

    gem "carpentry"

Run the generator to create the prototypes folder (and inject the Carpentry route):

    rails generate carpentry:install


Usage
-----

Put your views in `app/views/carpentry/prototypes` and view them in
browser at `/p/path_to_file`.

Examples:

| URI Path     | File path                                          |
|--------------|----------------------------------------------------|
| /p           | app/views/carpentry/prototypes/index.html.erb      |
| /p/home      | app/views/carpentry/prototypes/home.html.haml      |
| /p/posts/new | app/views/carpentry/prototypes/posts/new.html.slim |

All available Rails helpers work nicely. Pure prototyping bliss!

If you want an special layout for your prototypes, stick the layout file
to `app/views/layouts/carpentry/prototypes.html.[format]`.


You can customize the prototype URI prefix (`/p`) by editing the engine mount in your `roures.rb` file, for example:

```
  mount_carpentry_at "/prototype"
```

Hooks
-----

Carpentry let's you add a `#before_carpentry` method in
`ApplicationController`, that will be run before any prototype. You can
use it, for example, to provide authentication or prevent prototypes
from being rendered in production.


Rails and Ruby compatiblity
---------------------------

Carpentry is compatible with **Rails 4.1** and above.

Only **Ruby 2.1.x** and above are supported, check [Travis CI][travis] for build details.

If you want to use Carpentry with Ruby 1.9.2 or below, use [Carpentry v1.0.1][v1].

Gotchas
-------

When rendering a partial, you must specify the full path
(e.g. `carpentry/prototypes/posts/form`) unless the partial is in
`app/views/carpentry/prototypes/`.


License
-------

MIT License. Copyright 2011-2013 Kisko Labs.


CI Build Status
---------------

[![Build Status](https://travis-ci.org/kiskolabs/carpentry.png?branch=master)][travis]

[travis]: https://travis-ci.org/kiskolabs/carpentry
[v1]: https://github.com/kiskolabs/carpentry/tree/v1.0.1
