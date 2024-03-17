(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_certificate__timeouts
type azurerm_app_service_certificate

val azurerm_app_service_certificate :
  ?app_service_plan_id:string ->
  ?key_vault_id:string ->
  ?key_vault_secret_id:string ->
  ?password:string ->
  ?pfx_blob:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_app_service_certificate__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
