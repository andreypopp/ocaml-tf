(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_palo_alto_virtual_network_appliance

val azurerm_palo_alto_virtual_network_appliance :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  unit ->
  azurerm_palo_alto_virtual_network_appliance

val yojson_of_azurerm_palo_alto_virtual_network_appliance :
  azurerm_palo_alto_virtual_network_appliance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  string ->
  t
