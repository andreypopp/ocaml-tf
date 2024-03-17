(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventgrid_topic__identity
type azurerm_eventgrid_topic__input_mapping_default_values
type azurerm_eventgrid_topic__input_mapping_fields
type azurerm_eventgrid_topic__timeouts

type azurerm_eventgrid_topic__inbound_ip_rule = {
  action : string;  (** action *)
  ip_mask : string;  (** ip_mask *)
}
[@@deriving yojson_of]

type azurerm_eventgrid_topic

val azurerm_eventgrid_topic :
  ?inbound_ip_rule:azurerm_eventgrid_topic__inbound_ip_rule list ->
  ?input_schema:string ->
  ?local_auth_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_eventgrid_topic__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_eventgrid_topic__identity list ->
  input_mapping_default_values:
    azurerm_eventgrid_topic__input_mapping_default_values list ->
  input_mapping_fields:
    azurerm_eventgrid_topic__input_mapping_fields list ->
  string ->
  unit
