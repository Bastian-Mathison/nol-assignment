(require 'ox-publish)

(setq org-publish-project-alist
      (list
       (list "natlight"
             ;; Basic options
             :recursive t
             :base-directory "./content"
             :publishing-directory "./public"
             :publishing-function 'org-html-publish-to-html

             ;; disabling
             :with-toc nil
             :with-creator nil
             :section-numbers nil

             ;; sitemap
             :auto-sitemap t
             :sitemap-file "common/sitemap.org"
             :sitemap-title "Sitemap"
             )))

(setq org-html-validation-link nil)
(setq org-html-footnote-format nil)
(setq org-html-postamble nil)
(setq org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\">")

(org-publish-all t)

(message "Build complete!")
