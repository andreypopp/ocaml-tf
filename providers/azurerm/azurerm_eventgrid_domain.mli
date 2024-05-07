(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type inbound_ip_rule = {
  action : string prop;  (** action *)
  ip_mask : string prop;  (** ip_mask *)
}

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type input_mapping_default_values

val input_mapping_default_values :
  ?data_version:string prop ->
  ?event_type:string prop ->
  ?subject:string prop ->
  unit ->
  input_mapping_default_values

type input_mapping_fields

val input_mapping_fields :
  ?data_version:string prop ->
  ?event_time:string prop ->
  ?event_type:string prop ->
  ?id:string prop ->
  ?subject:string prop ->
  ?topic:string prop ->
  unit ->
  input_mapping_fields

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_eventgrid_domain

val azurerm_eventgrid_domain :
  ?auto_create_topic_with_first_subscription:bool prop ->
  ?auto_delete_topic_with_last_subscription:bool prop ->
  ?id:string prop ->
  ?inbound_ip_rule:inbound_ip_rule list ->
  ?input_schema:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?input_mapping_default_values:input_mapping_default_values list ->
  ?input_mapping_fields:input_mapping_fields list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_eventgrid_domain

val yojson_of_azurerm_eventgrid_domain :
  azurerm_eventgrid_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_create_topic_with_first_subscription : bool prop;
  auto_delete_topic_with_last_subscription : bool prop;
  endpoint : string prop;
  id : string prop;
  inbound_ip_rule : inbound_ip_rule list prop;
  input_schema : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_access_key : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_create_topic_with_first_subscription:bool prop ->
  ?auto_delete_topic_with_last_subscription:bool prop ->
  ?id:string prop ->
  ?inbound_ip_rule:inbound_ip_rule list ->
  ?input_schema:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?input_mapping_default_values:input_mapping_default_values list ->
  ?input_mapping_fields:input_mapping_fields list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?auto_create_topic_with_first_subscription:bool prop ->
  ?auto_delete_topic_with_last_subscription:bool prop ->
  ?id:string prop ->
  ?inbound_ip_rule:inbound_ip_rule list ->
  ?input_schema:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?input_mapping_default_values:input_mapping_default_values list ->
  ?input_mapping_fields:input_mapping_fields list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
