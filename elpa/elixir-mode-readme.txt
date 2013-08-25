Provides font-locking, indentation and navigation support
for the Elixir programming language.


 Manual Installation:

  (add-to-list 'load-path "~/path/to/emacs-elixir/")
  (require 'elixir-mode)

 Interesting variables are:

     `elixir-compiler-command`

         Path to the executable <elixirc> command

     `elixir-iex-command`

         Path to the executable <iex> command

     `elixir-mode-highlight-operators`

         Option for whether or not to highlight operators.

     `elixir-mode-cygwin-paths`

         Use Cygwin style paths on Windows operating systems.

     `elixir-mode-cygwin-prefix`

         Cygwin prefix

 Major commands are:

      M-x elixir-mode

          Switches to elixir-mode.

      M-x elixir-cos-mode

          Applies compile-on-save minor mode.

      M-x elixir-mode-compile-file

          Compile and save current file.

      M-x elixir-mode-iex

          Launch <iex> inside Emacs.
          Use "C-u" (universal-argument) to run <iex> with some additional arguments.

      M-x elixir-mode-eval-on-region

          Evaluates the Elixir code on the marked region.
          This is bound to "C-c ,r" while in `elixir-mode'.

      M-x elixir-mode-eval-on-current-line

          Evaluates the Elixir code on the current line.
          This is bound to "C-c ,c" while in `elixir-mode'.

      M-x elixir-mode-eval-on-current-buffer

          Evaluates the Elixir code on the current buffer.
          This is bound to "C-c ,b" while in `elixir-mode'.

      M-x elixir-mode-string-to-quoted-on-region

          Get the representation of the expression on the marked region.
          This is bound to "C-c ,a" while in `elixir-mode'.

      M-x elixir-mode-string-to-quoted-on-current-line

          Get the representation of the expression on the current line.
          This is bound to "C-c ,l" while in `elixir-mode'.

      M-x elixir-mode-opengithub

          Open the GitHub page of the Elixir repository.

      M-x elixir-mode-open-elixir-home

          Open the Elixir website.

      M-x elixir-mode-open-docs-master

          Open the Elixir documentation for the master.

      M-x elixir-mode-open-docs-stable

          Open the Elixir documentation for the latest stable release.

      M-x elixir-mode-run-tests

          Run ERT tests for `elixir-mode`.

      M-x elixir-mode-show-version

          Print `elixir-mode` version.

  Also check out the customization group

      M-x customize-group RET elixir RET

  If you use the customization group to set variables like
  `elixir-compiler-command' or `elixir-iex-command', make sure the path to
  "elixir-mode.el" is present in the `load-path' *before* the
  `custom-set-variables' is executed in your .emacs file.
