(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_management_private_link_association__timeouts
type azurerm_resource_management_private_link_association

type t = private {
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_management_private_link_id : string prop;
  tenant_id : string prop;
}

val azurerm_resource_management_private_link_association :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:
    azurerm_resource_management_private_link_association__timeouts ->
  management_group_id:string prop ->
  public_network_access_enabled:bool prop ->
  resource_management_private_link_id:string prop ->
  string ->
  t
