(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_management_private_link_association__timeouts
type azurerm_resource_management_private_link_association

val azurerm_resource_management_private_link_association :
  ?name:string ->
  ?timeouts:
    azurerm_resource_management_private_link_association__timeouts ->
  management_group_id:string ->
  public_network_access_enabled:bool ->
  resource_management_private_link_id:string ->
  string ->
  unit
