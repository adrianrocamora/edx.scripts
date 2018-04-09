#!/bin/bash
#---------------------------------------------------------
# written by: lawrence mcdaniel
#             https://lawrencemcdaniel.com
#             https://blog.lawrencemcdaniel.com
#
# date:       feb-2018
#
# usage:      Compile Open edX static assets.
#             This process is required any time you change your custom theme, or if you Add
#             new static assets (like images, pdf documents, custom CSS / JS) to an existing theme.
#
#             Compiling (and "transpiling") assets is the process of translating CSS templates and source files
#             like SASS and Coffee scripts into final CSS files, plus, moving these files from their
#             locations in the code base folder structure to the Nginx locations for hosting purposes.
#             files also pickup codified suffixes as part of this process.
#
# reference:  https://openedx.atlassian.net/wiki/spaces/OpenOPS/pages/60227913/Managing+OpenEdX+Tips+and+Tricks
#---------------------------------------------------------

# update assets as edxapp user
sudo -H -u edxapp bash << EOF
source /edx/app/edxapp/edxapp_env
cd /edx/app/edxapp/edx-platform
paver update_assets lms --settings=aws
EOF

# restart edx instances
sudo /edx/bin/supervisorctl restart edxapp:
/edx/bin/supervisorctl restart edxapp_worker:
