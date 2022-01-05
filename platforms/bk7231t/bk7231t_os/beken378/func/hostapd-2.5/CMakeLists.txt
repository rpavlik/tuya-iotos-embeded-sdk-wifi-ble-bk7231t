# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_func_hostapd-2.5.cmake,
### then re-run ./make-cmake.py







add_library(beken378_func_hostapd-2.5 STATIC


    bk_patch/ddrv.h
    bk_patch/errno-base.h
    bk_patch/fake_socket.h
    bk_patch/signal.h
    bk_patch/sk_intf.h
    hostapd/hostapd_cfg.h
    hostapd/main_none.h
    hs20/client/osu_client.h
    src/ap/accounting.h
    src/ap/acs.h
    src/ap/ap_config.h
    src/ap/ap_drv_ops.h
    src/ap/ap_list.h
    src/ap/ap_mlme.h
    src/ap/beacon.h
    src/ap/bss_load.h
    src/ap/dfs.h
    src/ap/hostapd.h
    src/ap/hw_features.h
    src/ap/ieee802_11.h
    src/ap/ieee802_11_auth.h
    src/ap/ieee802_1x.h
    src/ap/p2p_hostapd.h
    src/ap/preauth_auth.h
    src/ap/sta_info.h
    src/ap/tkip_countermeasures.h
    src/ap/vlan_init.h
    src/ap/wmm.h
    src/ap/wpa_auth.h
    src/ap/wpa_auth_glue.h
    src/ap/wpa_auth_i.h
    src/ap/wpa_auth_ie.h
    src/ap/wps_hostapd.h
    src/common/defs.h
    src/common/eapol_common.h
    src/common/hw_features_common.h
    src/common/ieee802_11_common.h
    src/common/ieee802_11_defs.h
    src/common/sae.h
    src/common/version.h
    src/common/wpa_common.h
    src/common/wpa_ctrl.h
    src/crypto/aes.h
    src/crypto/aes_i.h
    src/crypto/aes_siv.h
    src/crypto/aes_wrap.h
    src/crypto/crypto.h
    src/crypto/des_i.h
    src/crypto/dh_group5.h
    src/crypto/dh_groups.h
    src/crypto/md5.h
    src/crypto/md5_i.h
    src/crypto/milenage.h
    src/crypto/ms_funcs.h
    src/crypto/random.h
    src/crypto/sha1.h
    src/crypto/sha1_i.h
    src/crypto/sha256.h
    src/crypto/sha256_i.h
    src/crypto/sha384.h
    src/crypto/tls.h
    src/drivers/driver.h
    src/drivers/driver_beken.h
    src/drivers/linux_defines.h
    src/drivers/linux_ioctl.h
    src/drivers/netlink.h
    src/drivers/nl80211_copy.h
    src/drivers/priv_netlink.h
    src/eapol_supp/eapol_supp_sm.h
    src/l2_packet/l2_packet.h
    src/rsn_supp/peerkey.h
    src/rsn_supp/pmksa_cache.h
    src/rsn_supp/preauth.h
    src/rsn_supp/wpa.h
    src/rsn_supp/wpa_i.h
    src/rsn_supp/wpa_ie.h
    src/utils/base64.h
    src/utils/build_config.h
    src/utils/common.h
    src/utils/eloop.h
    src/utils/ext_password_i.h
    src/utils/includes.h
    src/utils/ip_addr.h
    src/utils/list.h
    src/utils/os.h
    src/utils/platform.h
    src/utils/state_machine.h
    src/utils/trace.h
    src/utils/uuid.h
    src/utils/wpa_debug.h
    src/utils/wpabuf.h
    src/wps/http.h
    src/wps/http_client.h
    src/wps/http_server.h
    src/wps/httpread.h
    src/wps/upnp_xml.h
    src/wps/wps.h
    src/wps/wps_attr_parse.h
    src/wps/wps_defs.h
    src/wps/wps_dev_attr.h
    src/wps/wps_er.h
    src/wps/wps_i.h
    src/wps/wps_upnp.h
    src/wps/wps_upnp_i.h
    wpa_supplicant/autoscan.h
    wpa_supplicant/bgscan.h
    wpa_supplicant/blacklist.h
    wpa_supplicant/bss.h
    wpa_supplicant/config.h
    wpa_supplicant/config_none.h
    wpa_supplicant/config_ssid.h
    wpa_supplicant/ctrl_iface.h
    wpa_supplicant/driver_i.h
    wpa_supplicant/gas_query.h
    wpa_supplicant/hs20_supplicant.h
    wpa_supplicant/ibss_rsn.h
    wpa_supplicant/interworking.h
    wpa_supplicant/mesh.h
    wpa_supplicant/mesh_mpm.h
    wpa_supplicant/mesh_rsn.h
    wpa_supplicant/notify.h
    wpa_supplicant/offchannel.h
    wpa_supplicant/p2p_supplicant.h
    wpa_supplicant/scan.h
    wpa_supplicant/sme.h
    wpa_supplicant/wifi_display.h
    wpa_supplicant/wmm_ac.h
    wpa_supplicant/wnm_sta.h
    wpa_supplicant/wpa_supplicant_i.h
    wpa_supplicant/wpas_glue.h
    wpa_supplicant/wpas_kay.h
    wpa_supplicant/wps_supplicant.h



    bk_patch/ddrv.c
    bk_patch/fake_socket.c
    bk_patch/signal.c
    bk_patch/sk_intf.c
    hostapd/main_none.c
    src/ap/ap_config.c
    src/ap/ap_drv_ops.c
    src/ap/ap_list.c
    src/ap/ap_mlme.c
    src/ap/beacon.c
    src/ap/drv_callbacks.c
    src/ap/hostapd.c
    src/ap/hw_features.c
    src/ap/ieee802_11.c
    src/ap/ieee802_11_auth.c
    src/ap/ieee802_11_ht.c
    src/ap/ieee802_11_shared.c
    src/ap/ieee802_1x.c
    src/ap/sta_info.c
    src/ap/tkip_countermeasures.c
    src/ap/utils.c
    src/ap/wmm.c
    src/ap/wpa_auth.c
    src/ap/wpa_auth_glue.c
    src/ap/wpa_auth_ie.c
    src/common/hw_features_common.c
    src/common/ieee802_11_common.c
    src/common/wpa_common.c
    src/crypto/aes-internal-dec.c
    src/crypto/aes-internal-enc.c
    src/crypto/aes-internal.c
    src/crypto/aes-unwrap.c
    src/crypto/aes-wrap.c
    src/crypto/bk_md5.c
    src/crypto/bk_sha1.c
    src/crypto/crypto_ali.c
    src/crypto/md5-internal.c
    src/crypto/rc4.c
    src/crypto/sha1-internal.c
    src/crypto/sha1-pbkdf2.c
    src/crypto/sha1-prf.c
    src/crypto/tls_none.c
    src/drivers/driver_beken.c
    src/drivers/driver_common.c
    src/drivers/drivers.c
    src/l2_packet/l2_packet_none.c
    src/rsn_supp/wpa.c
    src/rsn_supp/wpa_ie.c
    src/utils/common.c
    src/utils/eloop.c
    src/utils/os_none.c
    src/utils/wpabuf.c
    wpa_supplicant/blacklist.c
    wpa_supplicant/bss.c
    wpa_supplicant/config.c
    wpa_supplicant/config_none.c
    wpa_supplicant/events.c
    wpa_supplicant/main_supplicant.c
    wpa_supplicant/notify.c
    wpa_supplicant/wmm_ac.c
    wpa_supplicant/wpa_scan.c
    wpa_supplicant/wpa_supplicant.c
    wpa_supplicant/wpas_glue.c

)




target_compile_options(beken378_func_hostapd-2.5 PRIVATE -mthumb)




target_link_libraries(beken378_func_hostapd-2.5
    PUBLIC
    beken378_common
    beken378_func_include
)


# target_compile_features(beken378_func_hostapd-2.5 PUBLIC c_std_99)
set_target_properties(beken378_func_hostapd-2.5 PROPERTIES C_STANDARD 99)








