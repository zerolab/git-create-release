Create a Drupal Release with Git
================================

You must run this script from the root directory of a Git repo for a project on Drupal.org.

This script will prompt you for 4 things:
1. Your project's nid (node id)
2. The previous release (to generate history from)
3. Your new release
4. Where git-release-notes.php is

From that, it will generate release notes from the commits since the previous tag (#2). Then, it will create a tag named #3. It will open http://drupal.org/node/add/project-release/#1.
On the clipboard will be your changelog.
