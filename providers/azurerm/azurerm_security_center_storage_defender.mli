(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_security_center_storage_defender

val azurerm_security_center_storage_defender :
  ?id:string prop ->
  ?malware_scanning_on_upload_cap_gb_per_month:float prop ->
  ?malware_scanning_on_upload_enabled:bool prop ->
  ?override_subscription_settings_enabled:bool prop ->
  ?sensitive_data_discovery_enabled:bool prop ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  unit ->
  azurerm_security_center_storage_defender

val yojson_of_azurerm_security_center_storage_defender :
  azurerm_security_center_storage_defender -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  malware_scanning_on_upload_cap_gb_per_month : float prop;
  malware_scanning_on_upload_enabled : bool prop;
  override_subscription_settings_enabled : bool prop;
  sensitive_data_discovery_enabled : bool prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?malware_scanning_on_upload_cap_gb_per_month:float prop ->
  ?malware_scanning_on_upload_enabled:bool prop ->
  ?override_subscription_settings_enabled:bool prop ->
  ?sensitive_data_discovery_enabled:bool prop ->
  ?timeouts:timeouts ->
  storage_account_id:string prop ->
  string ->
  t
