(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_managed_disk_sas_token__timeouts
type azurerm_managed_disk_sas_token

type t = private {
  access_level : string prop;
  duration_in_seconds : float prop;
  id : string prop;
  managed_disk_id : string prop;
  sas_url : string prop;
}

val azurerm_managed_disk_sas_token :
  ?id:string prop ->
  ?timeouts:azurerm_managed_disk_sas_token__timeouts ->
  access_level:string prop ->
  duration_in_seconds:float prop ->
  managed_disk_id:string prop ->
  string ->
  t
