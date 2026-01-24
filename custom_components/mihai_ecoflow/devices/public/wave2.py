from custom_components.mihai_ecoflow.devices.public.data_bridge import to_plain
from typing import Any
from custom_components.mihai_ecoflow.devices.internal.wave2 import Wave2 as InternalWave2
from custom_components.mihai_ecoflow.api import EcoflowApiClient
from custom_components.mihai_ecoflow.sensor import StatusSensorEntity


class Wave2(InternalWave2):
    def _prepare_data(self, raw_data) -> dict[str, Any]:
        res = super()._prepare_data(raw_data)
        res = to_plain(res)
        return res

    def _status_sensor(self, client: EcoflowApiClient) -> StatusSensorEntity:
        return StatusSensorEntity(client, self)
