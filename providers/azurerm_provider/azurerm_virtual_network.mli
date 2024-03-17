(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_network__ddos_protection_plan
type azurerm_virtual_network__encryption
type azurerm_virtual_network__timeouts

type azurerm_virtual_network__subnet = {
  address_prefix : string prop;  (** address_prefix *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  security_group : string prop;  (** security_group *)
}

type azurerm_virtual_network

val azurerm_virtual_network :
  ?bgp_community:string prop ->
  ?dns_servers:string prop list ->
  ?edge_zone:string prop ->
  ?flow_timeout_in_minutes:float prop ->
  ?id:string prop ->
  ?subnet:azurerm_virtual_network__subnet list ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_virtual_network__timeouts ->
  address_space:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ddos_protection_plan:
    azurerm_virtual_network__ddos_protection_plan list ->
  encryption:azurerm_virtual_network__encryption list ->
  string ->
  unit
