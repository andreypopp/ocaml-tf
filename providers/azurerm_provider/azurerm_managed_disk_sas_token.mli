(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_managed_disk_sas_token__timeouts
type azurerm_managed_disk_sas_token

val azurerm_managed_disk_sas_token :
  ?id:string ->
  ?timeouts:azurerm_managed_disk_sas_token__timeouts ->
  access_level:string ->
  duration_in_seconds:float ->
  managed_disk_id:string ->
  string ->
  unit
