(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventgrid_topic__identity
type azurerm_eventgrid_topic__input_mapping_default_values
type azurerm_eventgrid_topic__input_mapping_fields
type azurerm_eventgrid_topic__timeouts

type azurerm_eventgrid_topic__inbound_ip_rule = {
  action : string prop;  (** action *)
  ip_mask : string prop;  (** ip_mask *)
}

type azurerm_eventgrid_topic

val azurerm_eventgrid_topic :
  ?id:string prop ->
  ?inbound_ip_rule:azurerm_eventgrid_topic__inbound_ip_rule list ->
  ?input_schema:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_eventgrid_topic__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_eventgrid_topic__identity list ->
  input_mapping_default_values:
    azurerm_eventgrid_topic__input_mapping_default_values list ->
  input_mapping_fields:
    azurerm_eventgrid_topic__input_mapping_fields list ->
  string ->
  unit
