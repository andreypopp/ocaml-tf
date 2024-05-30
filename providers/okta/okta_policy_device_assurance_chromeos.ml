(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_policy_device_assurance_chromeos = {
  name : string prop;
  tpsp_allow_screen_lock : bool prop option; [@option]
  tpsp_browser_version : string prop option; [@option]
  tpsp_builtin_dns_client_enabled : bool prop option; [@option]
  tpsp_chrome_remote_desktop_app_blocked : bool prop option;
      [@option]
  tpsp_device_enrollment_domain : string prop option; [@option]
  tpsp_disk_encrypted : bool prop option; [@option]
  tpsp_key_trust_level : string prop option; [@option]
  tpsp_os_firewall : bool prop option; [@option]
  tpsp_os_version : string prop option; [@option]
  tpsp_password_proctection_warning_trigger : string prop option;
      [@option]
  tpsp_realtime_url_check_mode : bool prop option; [@option]
  tpsp_safe_browsing_protection_level : string prop option; [@option]
  tpsp_screen_lock_secured : bool prop option; [@option]
  tpsp_site_isolation_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_device_assurance_chromeos) -> ()

let yojson_of_okta_policy_device_assurance_chromeos =
  (function
   | {
       name = v_name;
       tpsp_allow_screen_lock = v_tpsp_allow_screen_lock;
       tpsp_browser_version = v_tpsp_browser_version;
       tpsp_builtin_dns_client_enabled =
         v_tpsp_builtin_dns_client_enabled;
       tpsp_chrome_remote_desktop_app_blocked =
         v_tpsp_chrome_remote_desktop_app_blocked;
       tpsp_device_enrollment_domain =
         v_tpsp_device_enrollment_domain;
       tpsp_disk_encrypted = v_tpsp_disk_encrypted;
       tpsp_key_trust_level = v_tpsp_key_trust_level;
       tpsp_os_firewall = v_tpsp_os_firewall;
       tpsp_os_version = v_tpsp_os_version;
       tpsp_password_proctection_warning_trigger =
         v_tpsp_password_proctection_warning_trigger;
       tpsp_realtime_url_check_mode = v_tpsp_realtime_url_check_mode;
       tpsp_safe_browsing_protection_level =
         v_tpsp_safe_browsing_protection_level;
       tpsp_screen_lock_secured = v_tpsp_screen_lock_secured;
       tpsp_site_isolation_enabled = v_tpsp_site_isolation_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tpsp_site_isolation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tpsp_site_isolation_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_screen_lock_secured with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tpsp_screen_lock_secured", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_safe_browsing_protection_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tpsp_safe_browsing_protection_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_realtime_url_check_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tpsp_realtime_url_check_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_password_proctection_warning_trigger with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "tpsp_password_proctection_warning_trigger", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_os_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tpsp_os_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_os_firewall with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tpsp_os_firewall", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_key_trust_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tpsp_key_trust_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_disk_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tpsp_disk_encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_device_enrollment_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tpsp_device_enrollment_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_chrome_remote_desktop_app_blocked with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "tpsp_chrome_remote_desktop_app_blocked", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_builtin_dns_client_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tpsp_builtin_dns_client_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_browser_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tpsp_browser_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpsp_allow_screen_lock with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tpsp_allow_screen_lock", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : okta_policy_device_assurance_chromeos ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_device_assurance_chromeos

[@@@deriving.end]

let okta_policy_device_assurance_chromeos ?tpsp_allow_screen_lock
    ?tpsp_browser_version ?tpsp_builtin_dns_client_enabled
    ?tpsp_chrome_remote_desktop_app_blocked
    ?tpsp_device_enrollment_domain ?tpsp_disk_encrypted
    ?tpsp_key_trust_level ?tpsp_os_firewall ?tpsp_os_version
    ?tpsp_password_proctection_warning_trigger
    ?tpsp_realtime_url_check_mode
    ?tpsp_safe_browsing_protection_level ?tpsp_screen_lock_secured
    ?tpsp_site_isolation_enabled ~name () :
    okta_policy_device_assurance_chromeos =
  {
    name;
    tpsp_allow_screen_lock;
    tpsp_browser_version;
    tpsp_builtin_dns_client_enabled;
    tpsp_chrome_remote_desktop_app_blocked;
    tpsp_device_enrollment_domain;
    tpsp_disk_encrypted;
    tpsp_key_trust_level;
    tpsp_os_firewall;
    tpsp_os_version;
    tpsp_password_proctection_warning_trigger;
    tpsp_realtime_url_check_mode;
    tpsp_safe_browsing_protection_level;
    tpsp_screen_lock_secured;
    tpsp_site_isolation_enabled;
  }

type t = {
  tf_name : string;
  created_by : string prop;
  created_date : string prop;
  id : string prop;
  last_update : string prop;
  last_updated_by : string prop;
  name : string prop;
  platform : string prop;
  tpsp_allow_screen_lock : bool prop;
  tpsp_browser_version : string prop;
  tpsp_builtin_dns_client_enabled : bool prop;
  tpsp_chrome_remote_desktop_app_blocked : bool prop;
  tpsp_device_enrollment_domain : string prop;
  tpsp_disk_encrypted : bool prop;
  tpsp_key_trust_level : string prop;
  tpsp_os_firewall : bool prop;
  tpsp_os_version : string prop;
  tpsp_password_proctection_warning_trigger : string prop;
  tpsp_realtime_url_check_mode : bool prop;
  tpsp_safe_browsing_protection_level : string prop;
  tpsp_screen_lock_secured : bool prop;
  tpsp_site_isolation_enabled : bool prop;
}

let make ?tpsp_allow_screen_lock ?tpsp_browser_version
    ?tpsp_builtin_dns_client_enabled
    ?tpsp_chrome_remote_desktop_app_blocked
    ?tpsp_device_enrollment_domain ?tpsp_disk_encrypted
    ?tpsp_key_trust_level ?tpsp_os_firewall ?tpsp_os_version
    ?tpsp_password_proctection_warning_trigger
    ?tpsp_realtime_url_check_mode
    ?tpsp_safe_browsing_protection_level ?tpsp_screen_lock_secured
    ?tpsp_site_isolation_enabled ~name __id =
  let __type = "okta_policy_device_assurance_chromeos" in
  let __attrs =
    ({
       tf_name = __id;
       created_by = Prop.computed __type __id "created_by";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       last_update = Prop.computed __type __id "last_update";
       last_updated_by = Prop.computed __type __id "last_updated_by";
       name = Prop.computed __type __id "name";
       platform = Prop.computed __type __id "platform";
       tpsp_allow_screen_lock =
         Prop.computed __type __id "tpsp_allow_screen_lock";
       tpsp_browser_version =
         Prop.computed __type __id "tpsp_browser_version";
       tpsp_builtin_dns_client_enabled =
         Prop.computed __type __id "tpsp_builtin_dns_client_enabled";
       tpsp_chrome_remote_desktop_app_blocked =
         Prop.computed __type __id
           "tpsp_chrome_remote_desktop_app_blocked";
       tpsp_device_enrollment_domain =
         Prop.computed __type __id "tpsp_device_enrollment_domain";
       tpsp_disk_encrypted =
         Prop.computed __type __id "tpsp_disk_encrypted";
       tpsp_key_trust_level =
         Prop.computed __type __id "tpsp_key_trust_level";
       tpsp_os_firewall =
         Prop.computed __type __id "tpsp_os_firewall";
       tpsp_os_version = Prop.computed __type __id "tpsp_os_version";
       tpsp_password_proctection_warning_trigger =
         Prop.computed __type __id
           "tpsp_password_proctection_warning_trigger";
       tpsp_realtime_url_check_mode =
         Prop.computed __type __id "tpsp_realtime_url_check_mode";
       tpsp_safe_browsing_protection_level =
         Prop.computed __type __id
           "tpsp_safe_browsing_protection_level";
       tpsp_screen_lock_secured =
         Prop.computed __type __id "tpsp_screen_lock_secured";
       tpsp_site_isolation_enabled =
         Prop.computed __type __id "tpsp_site_isolation_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_policy_device_assurance_chromeos
        (okta_policy_device_assurance_chromeos
           ?tpsp_allow_screen_lock ?tpsp_browser_version
           ?tpsp_builtin_dns_client_enabled
           ?tpsp_chrome_remote_desktop_app_blocked
           ?tpsp_device_enrollment_domain ?tpsp_disk_encrypted
           ?tpsp_key_trust_level ?tpsp_os_firewall ?tpsp_os_version
           ?tpsp_password_proctection_warning_trigger
           ?tpsp_realtime_url_check_mode
           ?tpsp_safe_browsing_protection_level
           ?tpsp_screen_lock_secured ?tpsp_site_isolation_enabled
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?tpsp_allow_screen_lock ?tpsp_browser_version
    ?tpsp_builtin_dns_client_enabled
    ?tpsp_chrome_remote_desktop_app_blocked
    ?tpsp_device_enrollment_domain ?tpsp_disk_encrypted
    ?tpsp_key_trust_level ?tpsp_os_firewall ?tpsp_os_version
    ?tpsp_password_proctection_warning_trigger
    ?tpsp_realtime_url_check_mode
    ?tpsp_safe_browsing_protection_level ?tpsp_screen_lock_secured
    ?tpsp_site_isolation_enabled ~name __id =
  let (r : _ Tf_core.resource) =
    make ?tpsp_allow_screen_lock ?tpsp_browser_version
      ?tpsp_builtin_dns_client_enabled
      ?tpsp_chrome_remote_desktop_app_blocked
      ?tpsp_device_enrollment_domain ?tpsp_disk_encrypted
      ?tpsp_key_trust_level ?tpsp_os_firewall ?tpsp_os_version
      ?tpsp_password_proctection_warning_trigger
      ?tpsp_realtime_url_check_mode
      ?tpsp_safe_browsing_protection_level ?tpsp_screen_lock_secured
      ?tpsp_site_isolation_enabled ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
