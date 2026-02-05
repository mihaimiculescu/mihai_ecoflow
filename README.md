# Forked from [EcoFlow Cloud Integration for Home Assistant](https://github.com/tolwi/hassio-ecoflow-cloud)

## This is step two installation of the Ecoflow integration.
#### For the first step [click  this link](https://github.com/mihaimiculescu/mihai_ecoflow/tree/main). Don't proceed with this step if you haven't completed step one!
### Prerequisites
- Ecoflow _AccessKey+SecretKey_ pair.
## Installation
### Manual installation only
- open your terminal, `cd` in your HA's `custom_components` folder
- From there run this commands:
```
wget -O ecoflow_public_key.sh https://raw.githubusercontent.com/mihaimiculescu/mihai_ecoflow/public_key/ecoflow_public_key.sh
bash ecoflow_public_key.sh
```
- This creates the folder `ecoflow_cloud` under `custom_components`.
- Restart Home Assistant. Once restart is complete, use `Add Integration` -> `Ecoflow-Cloud` and install. 
- Choose `public API`. **!!!DO NOT CHOOSE PRIVATE API!!!**
- Use your Ecoflow AccessKey+SecretKey. Then check - you will see only the controls installed, no sensors.
- The sensors are in the other integration
- If you had a previous Ecoflow installation, go to all your dashboards and manually update all entries with their new identities.
## Disclaimers

⚠️ Originally developed for personal use without a goal to cover all available device attributes
