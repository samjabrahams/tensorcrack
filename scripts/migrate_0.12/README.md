# Version 0.12.0 Migration Script

There were a number of breaking changes in [version 0.12.0](https://github.com/tensorflow/tensorflow/releases/tag/0.12.0-rc0) of TensorFlow. Luckily, most of these changes are name-only and preserve functionality, meaning that all you really need to do is update your code to use the new and shiny names. This script goes through your project directory and renames all affected functions for you. Hooray! To use it, copy `migrate.sh` to the root of your project, and run it!

```shell
$ cp migrate.sh /my/favorite/tensorflow/project
$ cd /my/favorite/tensorflow/project
$ chmod +x migrate.sh
$ ./migrate.sh
```

By default, the script only changes the names of functions using the full name space, assuming you've imported `tensorflow` as `tf` (ie. will change `tf.scalar_summary`, but not `scalar_summary`). If you'd like to change the default prefix (if you've given `tensorflow` a different name or don't care about the safety of the prefix), just pass in the preferred prefix as a regex string:

```
# If you import tensorflow without shortening the name of the module:
$ ./migrate.sh "tensorflow\."

# If you don't want to use any prefix
$ ./migrate.sh ""
```

Note that you must include an escaped period on your own, if you use a different name for the `tensorflow` module.

Please let me know if you encounter any bugs or if the script is missing any of the changes.
