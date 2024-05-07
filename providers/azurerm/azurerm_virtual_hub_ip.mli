(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_hub_ip

val azurerm_virtual_hub_ip :
  ?id:string prop ->
  ?private_ip_address:string prop ->
  ?private_ip_allocation_method:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  public_ip_address_id:string prop ->
  subnet_id:string prop ->
  virtual_hub_id:string prop ->
  unit ->
  azurerm_virtual_hub_ip

val yojson_of_azurerm_virtual_hub_ip : azurerm_virtual_hub_ip -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_allocation_method : string prop;
  public_ip_address_id : string prop;
  subnet_id : string prop;
  virtual_hub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?private_ip_address:string prop ->
  ?private_ip_allocation_method:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  public_ip_address_id:string prop ->
  subnet_id:string prop ->
  virtual_hub_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?private_ip_address:string prop ->
  ?private_ip_allocation_method:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  public_ip_address_id:string prop ->
  subnet_id:string prop ->
  virtual_hub_id:string prop ->
  string ->
  t Tf_core.resource
