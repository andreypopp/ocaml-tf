(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_managed_disk_sas_token__timeouts
type azurerm_managed_disk_sas_token

val azurerm_managed_disk_sas_token :
  ?id:string prop ->
  ?timeouts:azurerm_managed_disk_sas_token__timeouts ->
  access_level:string prop ->
  duration_in_seconds:float prop ->
  managed_disk_id:string prop ->
  string ->
  unit
