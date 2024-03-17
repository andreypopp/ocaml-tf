(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_palo_alto_virtual_network_appliance__timeouts
type azurerm_palo_alto_virtual_network_appliance

type t = private {
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

val azurerm_palo_alto_virtual_network_appliance :
  ?id:string prop ->
  ?timeouts:azurerm_palo_alto_virtual_network_appliance__timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  string ->
  t
