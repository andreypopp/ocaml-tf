(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_storage_defender__timeouts
type azurerm_security_center_storage_defender

val azurerm_security_center_storage_defender :
  ?malware_scanning_on_upload_cap_gb_per_month:float ->
  ?malware_scanning_on_upload_enabled:bool ->
  ?override_subscription_settings_enabled:bool ->
  ?sensitive_data_discovery_enabled:bool ->
  ?timeouts:azurerm_security_center_storage_defender__timeouts ->
  storage_account_id:string ->
  string ->
  unit
