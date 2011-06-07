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


Gotchas
-------

When rendering a partial, you must specify the full path
(e.g. `carpentry/prototypes/posts/form`) unless the partial is in 
`app/views/carpentry/prototypes/`.


License
-------

MIT License. Copyright 2011 Kisko Labs.
