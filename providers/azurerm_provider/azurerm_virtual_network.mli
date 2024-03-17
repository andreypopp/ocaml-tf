(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_network__ddos_protection_plan
type azurerm_virtual_network__encryption
type azurerm_virtual_network__timeouts

type azurerm_virtual_network__subnet = {
  address_prefix : string;  (** address_prefix *)
  id : string;  (** id *)
  name : string;  (** name *)
  security_group : string;  (** security_group *)
}

type azurerm_virtual_network

val azurerm_virtual_network :
  ?bgp_community:string ->
  ?dns_servers:string list ->
  ?edge_zone:string ->
  ?flow_timeout_in_minutes:float ->
  ?id:string ->
  ?subnet:azurerm_virtual_network__subnet list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_virtual_network__timeouts ->
  address_space:string list ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  ddos_protection_plan:
    azurerm_virtual_network__ddos_protection_plan list ->
  encryption:azurerm_virtual_network__encryption list ->
  string ->
  unit
