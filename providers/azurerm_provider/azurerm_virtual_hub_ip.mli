(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_ip__timeouts
type azurerm_virtual_hub_ip

val azurerm_virtual_hub_ip :
  ?id:string prop ->
  ?private_ip_address:string prop ->
  ?private_ip_allocation_method:string prop ->
  ?timeouts:azurerm_virtual_hub_ip__timeouts ->
  name:string prop ->
  public_ip_address_id:string prop ->
  subnet_id:string prop ->
  virtual_hub_id:string prop ->
  string ->
  unit
