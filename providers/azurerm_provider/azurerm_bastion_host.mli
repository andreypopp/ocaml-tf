(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_bastion_host__ip_configuration
type azurerm_bastion_host__timeouts
type azurerm_bastion_host

val azurerm_bastion_host :
  ?copy_paste_enabled:bool ->
  ?file_copy_enabled:bool ->
  ?id:string ->
  ?ip_connect_enabled:bool ->
  ?scale_units:float ->
  ?shareable_link_enabled:bool ->
  ?sku:string ->
  ?tags:(string * string) list ->
  ?tunneling_enabled:bool ->
  ?timeouts:azurerm_bastion_host__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  ip_configuration:azurerm_bastion_host__ip_configuration list ->
  string ->
  unit
