wget https://github.com/mihaimiculescu/mihai_ecoflow/archive/refs/heads/original.zip -O ecoflow.zip
unzip ecoflow.zip 'mihai_ecoflow-original/custom_components/*' -d . 
mv mihai_ecoflow-original/custom_components/ecoflow_cloud/ .
rm -rf mihai_ecoflow-original ecoflow.zip
cd ecoflow_cloud
# deactivate sensors leave only controls and configs
sed -i.bak 's/CONFIG_VERSION = 10/CONFIG_VERSION = 99/g; s/Platform.BINARY_SENSOR/# Platform.BINARY_SENSOR/g; s/Platform.SENSOR/# Platform.SENSOR/g' __init__.py
find . -name "*.bak" -delete
cd ..
rm ecoflow_public_key.sh

