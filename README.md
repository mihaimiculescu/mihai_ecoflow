## Forked from [EcoFlow Cloud Integration for Home Assistant](https://github.com/tolwi/hassio-ecoflow-cloud)

Basically this fork installs the original integration twice:
- The `main` branch uses private credentials (username and password) and installs only the sensors
- The `public_key` branch uses AccessKey/SecretKey credentials and installs only the controls.

Reason:
- The public API authentication makes controls (sliders, switches, etc) functional. But the sensors freeze frequently.
- The private API authentication makes sensors' indications reliable, but the controls are never actually transmitted to the devices, being always overriden by the Ecoflow app.

This workaround - two seaparate installs, one for the sensors and one for the controls, brings the best of the two worlds together.

### Prerequisites

1. A THOROUGH understanding of the [original README](https://github.com/tolwi/hassio-ecoflow-cloud/blob/main/README.md)
2. Both sets of credentials - Ecoflow _username+password_ AND _AccessKey+SecretKey_ pairs.
   Depending on your location, you can obtain AccessKey/SecretKey credentials either from [the US-based API](https://developer.ecoflow.com/us) or [the European one](https://developer-eu.ecoflow.com/us) - once logged in with your Ecoflow username and password, click on the _**IoT Background**_ button and get them.
3. **If you have any Ecoflow cloud integration installed in Home Assistant, unistall it and remove it completely**

## Installation

### Manual installation only

This is a two-steps process.
#### Step one
- open your terminal, `cd` in your HA's `custom_components` folder
- From there run this commands:
```
wget -O ecoflow_private_key.sh https://raw.githubusercontent.com/mihaimiculescu/mihai_ecoflow/main/ecoflow_private_key.sh
bash ecoflow_private_key.sh
```
- This creates a folder `mihai_ecoflow` under `custom_components`.
- Restart Home Assistant. Once restart is complete, use `Add Integration` (type `mihai` in the search area to find it quickly) and install. 
- Choose `private API`. **!!!DO NOT CHOOSE PUBLIC API!!!**
- Use your Ecoflow username+password. Then check - you will see only the sensors installed.
- Go to the [next step](https://github.com/mihaimiculescu/mihai_ecoflow/tree/public_key) of the install and carry on.

## Disclaimers

⚠️ Originally developed for personal use without a goal to cover all available device attributes
