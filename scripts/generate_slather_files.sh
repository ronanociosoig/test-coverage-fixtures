#!/bin/bash 

bash generate_slather_yml_filtered.sh AppWithGoodCoverage slather_template.yml Modular
bash generate_slather_yml.sh AppWithPartialCoverage slather_template.yml
bash generate_slather_yml.sh ModularAppWithGoodCoverage slather_template_modular_app.yml
bash generate_slather_yml.sh ModularAppWithDependency slather_template_modular_app.yml
