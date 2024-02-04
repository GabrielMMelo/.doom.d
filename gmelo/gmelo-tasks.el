;;; gmelo/gmelo-tasks.el -*- lexical-binding: t; -*-

(require 'org-jira)

;; setup jira within org folder
(setq! org-jira-working-dir org-dir)
;; get assigned issues from current sprint only
(setq! org-jira-default-jql "assignee = currentUser() AND resolution = Unresolved AND sprint in openSprints()")

;; set jiralib-url
;; In MacOS, I needed to manually create the credentials on Keychain Access App
(require 'org-jira-conn nil 'noerror)
;; (setq! jiralib-url "")

(require 'todoist-conn nil 'noerror)
;; (setq! todoist-token "")


(provide 'gmelo-tasks)
