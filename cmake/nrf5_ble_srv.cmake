# MIT License

# Copyright (c) 2020 Polidea

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# WARNING: FILE GENERATED FROM ./ci/scripts/generate_cmake.sh SCRIPT.

# BLE LED Button Service (Peripheral)
add_library(nrf5_ble_srv_lbs OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_lbs/ble_lbs.c"
)
target_include_directories(nrf5_ble_srv_lbs PUBLIC
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_lbs"
  "${NRF5_SDK_PATH}/components/libraries/util"
)
target_link_libraries(nrf5_ble_srv_lbs PUBLIC
  nrf5_ble_common
  nrf5_config
  nrf5_sdh
)
list(APPEND NRF5_LIBRARY_NRF5_BLE_SRV_LBS_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_timer
  nrf5_app_util_platform
  nrf5_atflags
  nrf5_atomic
  nrf5_ble_common
  nrf5_ble_srv_lbs
  nrf5_config
  nrf5_delay
  nrf5_log_fwd
  nrf5_mdk
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)

# BLE LED Button Service (Central)
add_library(nrf5_ble_srv_lbs_c OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_lbs_c/ble_lbs_c.c"
)
target_include_directories(nrf5_ble_srv_lbs_c PUBLIC
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_lbs_c"
  "${NRF5_SDK_PATH}/components/libraries/util"
)
target_link_libraries(nrf5_ble_srv_lbs_c PUBLIC
  nrf5_ble_db_discovery
)
list(APPEND NRF5_LIBRARY_NRF5_BLE_SRV_LBS_C_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_timer
  nrf5_app_util_platform
  nrf5_atfifo
  nrf5_atflags
  nrf5_atomic
  nrf5_balloc
  nrf5_balloc_fwd
  nrf5_ble_common
  nrf5_ble_db_discovery
  nrf5_ble_srv_lbs_c
  nrf5_cli
  nrf5_cli_fwd
  nrf5_config
  nrf5_delay
  nrf5_ext_fprintf
  nrf5_fds
  nrf5_fstorage
  nrf5_log
  nrf5_log_fwd
  nrf5_mdk
  nrf5_memobj
  nrf5_memobj_fwd
  nrf5_mtx
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_pwr_mgmt
  nrf5_queue
  nrf5_ringbuf
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)
if(NRF5_SDK_VERSION VERSION_EQUAL 16.0.0)
  list(APPEND NRF5_LIBRARY_NRF5_BLE_SRV_LBS_C_DEPENDENCIES
    nrf5_ble_gq
  )
endif()

# BLE Nordic UART Service (Peripheral)
add_library(nrf5_ble_srv_nus OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_nus/ble_nus.c"
)
target_include_directories(nrf5_ble_srv_nus PUBLIC
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_nus"
  "${NRF5_SDK_PATH}/components/libraries/util"
)
target_link_libraries(nrf5_ble_srv_nus PUBLIC
  nrf5_ble_link_ctx_manager
)
list(APPEND NRF5_LIBRARY_NRF5_BLE_SRV_NUS_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_timer
  nrf5_app_util_platform
  nrf5_atflags
  nrf5_atomic
  nrf5_ble_common
  nrf5_ble_link_ctx_manager
  nrf5_ble_srv_nus
  nrf5_config
  nrf5_delay
  nrf5_log_fwd
  nrf5_mdk
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)

# BLE Nordic UART Service (Central)
add_library(nrf5_ble_srv_nus_c OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_nus_c/ble_nus_c.c"
)
target_include_directories(nrf5_ble_srv_nus_c PUBLIC
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_nus_c"
  "${NRF5_SDK_PATH}/components/libraries/util"
)
target_link_libraries(nrf5_ble_srv_nus_c PUBLIC
  nrf5_ble_db_discovery
)
list(APPEND NRF5_LIBRARY_NRF5_BLE_SRV_NUS_C_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_timer
  nrf5_app_util_platform
  nrf5_atfifo
  nrf5_atflags
  nrf5_atomic
  nrf5_balloc
  nrf5_balloc_fwd
  nrf5_ble_common
  nrf5_ble_db_discovery
  nrf5_ble_srv_nus_c
  nrf5_cli
  nrf5_cli_fwd
  nrf5_config
  nrf5_delay
  nrf5_ext_fprintf
  nrf5_fds
  nrf5_fstorage
  nrf5_log
  nrf5_log_fwd
  nrf5_mdk
  nrf5_memobj
  nrf5_memobj_fwd
  nrf5_mtx
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_pwr_mgmt
  nrf5_queue
  nrf5_ringbuf
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)
if(NRF5_SDK_VERSION VERSION_EQUAL 16.0.0)
  list(APPEND NRF5_LIBRARY_NRF5_BLE_SRV_NUS_C_DEPENDENCIES
    nrf5_ble_gq
  )
endif()

# BLE Device Information Service (Peripheral)
add_library(nrf5_ble_srv_dis OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_dis/ble_dis.c"
)
target_include_directories(nrf5_ble_srv_dis PUBLIC
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_dis"
  "${NRF5_SDK_PATH}/components/libraries/util"
)
target_link_libraries(nrf5_ble_srv_dis PUBLIC
  nrf5_ble_common
)
list(APPEND NRF5_LIBRARY_NRF5_BLE_SRV_DIS_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_timer
  nrf5_app_util_platform
  nrf5_atflags
  nrf5_atomic
  nrf5_ble_common
  nrf5_ble_srv_dis
  nrf5_config
  nrf5_delay
  nrf5_log_fwd
  nrf5_mdk
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)

# BLE Bond Management Service
add_library(nrf5_ble_srv_bms OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/ble/ble_services/nrf_ble_bms/nrf_ble_bms.c"
)
target_include_directories(nrf5_ble_srv_bms PUBLIC
  "${NRF5_SDK_PATH}/components/ble/ble_services/nrf_ble_bms"
  "${NRF5_SDK_PATH}/components/libraries/util"
)
target_link_libraries(nrf5_ble_srv_bms PUBLIC
  nrf5_ble_common
  nrf5_ble_qwr
)
list(APPEND NRF5_LIBRARY_NRF5_BLE_SRV_BMS_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_timer
  nrf5_app_util_platform
  nrf5_atflags
  nrf5_atomic
  nrf5_ble_common
  nrf5_ble_qwr
  nrf5_ble_srv_bms
  nrf5_config
  nrf5_delay
  nrf5_log_fwd
  nrf5_mdk
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)

# BLE Internet Protocol Support Profile Service
add_library(nrf5_ble_srv_ipsp OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_ipsp/ble_ipsp.c"
)
target_include_directories(nrf5_ble_srv_ipsp PUBLIC
  "${NRF5_SDK_PATH}/components/ble/ble_services/ble_ipsp"
  "${NRF5_SDK_PATH}/components/libraries/util"
)
target_link_libraries(nrf5_ble_srv_ipsp PUBLIC
  nrf5_ble_common
)
list(APPEND NRF5_LIBRARY_NRF5_BLE_SRV_IPSP_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_timer
  nrf5_app_util_platform
  nrf5_atflags
  nrf5_atomic
  nrf5_ble_common
  nrf5_ble_srv_ipsp
  nrf5_config
  nrf5_delay
  nrf5_log_fwd
  nrf5_mdk
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)