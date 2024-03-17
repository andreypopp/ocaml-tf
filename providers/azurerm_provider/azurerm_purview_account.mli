(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_purview_account__identity
type azurerm_purview_account__timeouts

type azurerm_purview_account__managed_resources = {
  event_hub_namespace_id : string;  (** event_hub_namespace_id *)
  resource_group_id : string;  (** resource_group_id *)
  storage_account_id : string;  (** storage_account_id *)
}
[@@deriving yojson_of]

type azurerm_purview_account

val azurerm_purview_account :
  ?public_network_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_purview_account__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_purview_account__identity list ->
  string ->
  unit
