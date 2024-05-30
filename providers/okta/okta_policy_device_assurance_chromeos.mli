(** Manages a device assurance policy for chromeos. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_policy_device_assurance_chromeos

val okta_policy_device_assurance_chromeos :
  ?tpsp_allow_screen_lock:bool prop ->
  ?tpsp_browser_version:string prop ->
  ?tpsp_builtin_dns_client_enabled:bool prop ->
  ?tpsp_chrome_remote_desktop_app_blocked:bool prop ->
  ?tpsp_device_enrollment_domain:string prop ->
  ?tpsp_disk_encrypted:bool prop ->
  ?tpsp_key_trust_level:string prop ->
  ?tpsp_os_firewall:bool prop ->
  ?tpsp_os_version:string prop ->
  ?tpsp_password_proctection_warning_trigger:string prop ->
  ?tpsp_realtime_url_check_mode:bool prop ->
  ?tpsp_safe_browsing_protection_level:string prop ->
  ?tpsp_screen_lock_secured:bool prop ->
  ?tpsp_site_isolation_enabled:bool prop ->
  name:string prop ->
  unit ->
  okta_policy_device_assurance_chromeos

val yojson_of_okta_policy_device_assurance_chromeos :
  okta_policy_device_assurance_chromeos -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?tpsp_allow_screen_lock:bool prop ->
  ?tpsp_browser_version:string prop ->
  ?tpsp_builtin_dns_client_enabled:bool prop ->
  ?tpsp_chrome_remote_desktop_app_blocked:bool prop ->
  ?tpsp_device_enrollment_domain:string prop ->
  ?tpsp_disk_encrypted:bool prop ->
  ?tpsp_key_trust_level:string prop ->
  ?tpsp_os_firewall:bool prop ->
  ?tpsp_os_version:string prop ->
  ?tpsp_password_proctection_warning_trigger:string prop ->
  ?tpsp_realtime_url_check_mode:bool prop ->
  ?tpsp_safe_browsing_protection_level:string prop ->
  ?tpsp_screen_lock_secured:bool prop ->
  ?tpsp_site_isolation_enabled:bool prop ->
  name:string prop ->
  string ->
  t

val make :
  ?tpsp_allow_screen_lock:bool prop ->
  ?tpsp_browser_version:string prop ->
  ?tpsp_builtin_dns_client_enabled:bool prop ->
  ?tpsp_chrome_remote_desktop_app_blocked:bool prop ->
  ?tpsp_device_enrollment_domain:string prop ->
  ?tpsp_disk_encrypted:bool prop ->
  ?tpsp_key_trust_level:string prop ->
  ?tpsp_os_firewall:bool prop ->
  ?tpsp_os_version:string prop ->
  ?tpsp_password_proctection_warning_trigger:string prop ->
  ?tpsp_realtime_url_check_mode:bool prop ->
  ?tpsp_safe_browsing_protection_level:string prop ->
  ?tpsp_screen_lock_secured:bool prop ->
  ?tpsp_site_isolation_enabled:bool prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
