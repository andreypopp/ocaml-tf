(** Manages a device assurance policy for macos. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_policy_device_assurance_macos

val okta_policy_device_assurance_macos :
  ?disk_encryption_type:string prop list ->
  ?os_version:string prop ->
  ?screenlock_type:string prop list ->
  ?secure_hardware_present:bool prop ->
  ?third_party_signal_providers:bool prop ->
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
  okta_policy_device_assurance_macos

val yojson_of_okta_policy_device_assurance_macos :
  okta_policy_device_assurance_macos -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_by : string prop;
  created_date : string prop;
  disk_encryption_type : string list prop;
  id : string prop;
  last_update : string prop;
  last_updated_by : string prop;
  name : string prop;
  os_version : string prop;
  platform : string prop;
  screenlock_type : string list prop;
  secure_hardware_present : bool prop;
  third_party_signal_providers : bool prop;
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
  ?disk_encryption_type:string prop list ->
  ?os_version:string prop ->
  ?screenlock_type:string prop list ->
  ?secure_hardware_present:bool prop ->
  ?third_party_signal_providers:bool prop ->
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
  ?disk_encryption_type:string prop list ->
  ?os_version:string prop ->
  ?screenlock_type:string prop list ->
  ?secure_hardware_present:bool prop ->
  ?third_party_signal_providers:bool prop ->
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
