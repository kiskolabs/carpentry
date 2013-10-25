Carpentry
=========

     ____________________________________ 
    / Carpentry – handcrafted prototypes \
    \ with ease                          /
     ------------------------------------ 
          \   ^__^
           \  (oo)\_______
              (__)\       )\/\
                  ||----w |
                  ||     ||


Installation
------------

Add Carpentry to Gemfile:

    gem "carpentry"

Run the generator to create the prototypes folder:

    rails generate carpentry:install


Usage
-----

Put your views in app/views/carpentry/prototypes and view them in 
browser at /p/path_to_file.

Examples:

| URI Path     | File path                                          |
|--------------|----------------------------------------------------|
| /p           | app/views/carpentry/prototypes/index.html.erb      |
| /p/home      | app/views/carpentry/prototypes/home.html.haml      |
| /p/posts/new | app/views/carpentry/prototypes/posts/new.html.slim |

All available Rails helpers work nicely. Pure prototyping bliss!

If you want an special layout for your prototypes, stick the layout file 
to `app/views/layouts/carpentry/prototypes.html.[format]`.


Hooks
-----

Carpentry let's you add a `#before_carpentry` method in 
`ApplicationController`, that will be run before any prototype. You can 
use it, for example, to provide authentication or prevent prototypes 
from being rendered in production.


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

[![Build Status](http://travis-ci.org/kiskolabs/carpentry.png)](http://travis-ci.org/kiskolabs/carpentry)

