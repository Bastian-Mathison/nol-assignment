(require 'ox-publish)

(setq org-publish-project-alist
      (list
       (list "natlight"
             :recursive t
             :base-directory "./content"
             :publishing-directory "./public"
             :with-toc nil
             :with-creator nil
             :section-numbers nil
             :publishingfunction 'org-html-publish-to-html)))

(setq org-html-validation-link nil)
(setq org-html-footnote-format nil)
(setq org-html-postamble nil)
(setq org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\">")

(org-publish-all t)

(message "Build complete!")
