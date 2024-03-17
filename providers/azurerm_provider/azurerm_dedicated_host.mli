(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dedicated_host__timeouts
type azurerm_dedicated_host

val azurerm_dedicated_host :
  ?auto_replace_on_failure:bool ->
  ?id:string ->
  ?license_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dedicated_host__timeouts ->
  dedicated_host_group_id:string ->
  location:string ->
  name:string ->
  platform_fault_domain:float ->
  sku_name:string ->
  string ->
  unit
