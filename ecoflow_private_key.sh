wget https://github.com/mihaimiculescu/mihai_ecoflow/archive/refs/heads/original.zip -O ecoflow.zip
unzip ecoflow.zip 'mihai_ecoflow-original/custom_components/*' -d . 
mv mihai_ecoflow-original/custom_components/ecoflow_cloud/ .
rm -rf mihai_ecoflow-original ecoflow.zip
mv ecoflow_cloud mihai_ecoflow
cd mihai_ecoflow
# change domain to avoid collisions
find . -type f -exec sed -i.bak 's/ecoflow_cloud/mihai_ecoflow/g' {} +
find . -type f -exec sed -i.bak 's/Ecoflow-Cloud/Ecoflow Cloud with Private Key/g' {} +
# deactivate controls and configs, leave only sensors
sed -i.bak 's/CONFIG_VERSION = 10/CONFIG_VERSION = 99/g; s/Platform.BUTTON/# Platform.BUTTON/g; s/Platform.NUMBER/# Platform.NUMBER/g; s/Platform.SELECT/# Platform.SELECT/g; s/Platform.SWITCH/# Platform.SWITCH/g' __init__.py
find . -name "*.bak" -delete
cd ..
rm ecoflow_private_key.sh

