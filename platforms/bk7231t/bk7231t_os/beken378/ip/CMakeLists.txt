# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

### Generated file! Edit the templates in templates,
### specifically templates/CMakeLists.template.cmake (shared with all other directories),
### or create a derived template in templates/beken378_ip.cmake,
### then re-run ./make-cmake.py







add_library(beken378_ip STATIC


    common/co_bool.h
    common/co_dlist.h
    common/co_endian.h
    common/co_int.h
    common/co_list.h
    common/co_math.h
    common/co_pool.h
    common/co_ring.h
    common/co_status.h
    common/co_utils.h
    ke/ke_config.h
    ke/ke_env.h
    ke/ke_event.h
    ke/ke_msg.h
    ke/ke_queue.h
    ke/ke_task.h
    ke/ke_timer.h
    lmac/src/bfr/bfr.h
    lmac/src/chan/chan.h
    lmac/src/hal/hal_desc.h
    lmac/src/hal/hal_dma.h
    lmac/src/hal/hal_machw.h
    lmac/src/hal/hal_machw_mib.h
    lmac/src/mm/mm.h
    lmac/src/mm/mm_bcn.h
    lmac/src/mm/mm_task.h
    lmac/src/mm/mm_timer.h
    lmac/src/p2p/p2p.h
    lmac/src/ps/ps.h
    lmac/src/rd/rd.h
    lmac/src/rwnx/rwnx.h
    lmac/src/rwnx/rwnx_config.h
    lmac/src/rwnx/rwnx_version.h
    lmac/src/rx/rx_swdesc.h
    lmac/src/rx/rxl/rxl_cntrl.h
    lmac/src/rx/rxl/rxl_hwdesc.h
    lmac/src/scan/scan.h
    lmac/src/scan/scan_task.h
    lmac/src/sta/sta_mgmt.h
    lmac/src/td/td.h
    lmac/src/tdls/tdls.h
    lmac/src/tdls/tdls_task.h
    lmac/src/tpc/tpc.h
    lmac/src/tx/tx_swdesc.h
    lmac/src/tx/txl/txl_buffer.h
    lmac/src/tx/txl/txl_cfm.h
    lmac/src/tx/txl/txl_cntrl.h
    lmac/src/tx/txl/txl_frame.h
    lmac/src/tx/txl/txl_hwdesc.h
    lmac/src/vif/vif_mgmt.h
    mac/mac.h
    mac/mac_common.h
    mac/mac_defs.h
    mac/mac_frame.h
    mac/mac_ie.h
    umac/src/apm/apm.h
    umac/src/apm/apm_task.h
    umac/src/bam/bam.h
    umac/src/bam/bam_task.h
    umac/src/llc/llc.h
    umac/src/me/me.h
    umac/src/me/me_mgmtframe.h
    umac/src/me/me_mic.h
    umac/src/me/me_task.h
    umac/src/me/me_utils.h
    umac/src/mesh/mesh.h
    umac/src/mesh/mesh_hwmp.h
    umac/src/mesh/mesh_mpm.h
    umac/src/mesh/mesh_ps.h
    umac/src/mesh/mesh_task.h
    umac/src/mfp/mfp.h
    umac/src/mfp/mfp_bip.h
    umac/src/rc/rc.h
    umac/src/rc/rc_basic.h
    umac/src/rxu/rxu_cntrl.h
    umac/src/rxu/rxu_task.h
    umac/src/scanu/scanu.h
    umac/src/scanu/scanu_task.h
    umac/src/sm/sm.h
    umac/src/sm/sm_task.h
    umac/src/txu/txu_cntrl.h



    

)




target_compile_options(beken378_ip PRIVATE -mthumb)




target_link_libraries(beken378_ip
    PUBLIC
    beken378_common)


# target_compile_features(beken378_ip PUBLIC c_std_99)
set_target_properties(beken378_ip PROPERTIES C_STANDARD 99)








