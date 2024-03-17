(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_purview_account__identity
type azurerm_purview_account__timeouts

type azurerm_purview_account__managed_resources = {
  event_hub_namespace_id : string prop;
      (** event_hub_namespace_id *)
  resource_group_id : string prop;  (** resource_group_id *)
  storage_account_id : string prop;  (** storage_account_id *)
}

type azurerm_purview_account

val azurerm_purview_account :
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?public_network_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_purview_account__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_purview_account__identity list ->
  string ->
  unit
