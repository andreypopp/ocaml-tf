(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_pool__timeouts
type azurerm_netapp_pool

val azurerm_netapp_pool :
  ?encryption_type:string ->
  ?id:string ->
  ?qos_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_netapp_pool__timeouts ->
  account_name:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  service_level:string ->
  size_in_tb:float ->
  string ->
  unit
