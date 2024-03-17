(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_ip__timeouts
type azurerm_virtual_hub_ip

val azurerm_virtual_hub_ip :
  ?private_ip_address:string ->
  ?private_ip_allocation_method:string ->
  ?timeouts:azurerm_virtual_hub_ip__timeouts ->
  name:string ->
  public_ip_address_id:string ->
  subnet_id:string ->
  virtual_hub_id:string ->
  string ->
  unit
