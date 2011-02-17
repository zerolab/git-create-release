#!/bin/bash
# Create Project Release with Git

read -p "What is your project's nid on drupal.org? " CPR_NID
read -p "What was the tag for your previous release? " CPR_OLD
read -p "What tag should this release be? " CPR_NEW
read -p "Where is git-release-notes.php? " CPR_GRN
if [ ! -d ".git" ]; then
echo "Not a repo."
exit 1
fi;

echo -n "Creating tag... "
git tag $CPR_NEW
echo "done."

echo -n "Generating release notes... "
$CPR_GRN $CPR_OLD $CPR_NEW | pbcopy
echo "done."

echo "Your release notes are on the clipboard."

echo -n "Opening drupal.org add release page... "
open http://drupal.org/node/add/project-release/$CPR_NID
echo "done."
