(require 'treesit)

(setq treesit-language-source-alist
      '((bash . ("https://github.com/tree-sitter/tree-sitter-bash"))
        (c-sharp . ("https://github.com/tree-sitter/tree-sitter-c-sharp"))
        (css . ("https://github.com/tree-sitter/tree-sitter-css"))
        (dockerfile . ("https://github.com/camdencheek/tree-sitter-dockerfile"))
        (javascript . ("https://github.com/tree-sitter/tree-sitter-javascript"))
        (json . ("https://github.com/tree-sitter/tree-sitter-json"))
        (python . ("https://github.com/tree-sitter/tree-sitter-python"))
        (ruby . ("https://github.com/tree-sitter/tree-sitter-ruby"))
        (tsx . ("https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src"))
        (typescript . ("https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src"))
        (yaml . ("https://github.com/ikatyang/tree-sitter-yaml"))))

(provide 'setup-treesit)
