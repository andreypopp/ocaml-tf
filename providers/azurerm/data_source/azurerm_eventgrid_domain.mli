(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type inbound_ip_rule = {
  action : string prop;  (** action *)
  ip_mask : string prop;  (** ip_mask *)
}

type input_mapping_default_values = {
  data_version : string prop;  (** data_version *)
  event_type : string prop;  (** event_type *)
  subject : string prop;  (** subject *)
}

type input_mapping_fields = {
  data_version : string prop;  (** data_version *)
  event_time : string prop;  (** event_time *)
  event_type : string prop;  (** event_type *)
  id : string prop;  (** id *)
  subject : string prop;  (** subject *)
  topic : string prop;  (** topic *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_eventgrid_domain

val azurerm_eventgrid_domain :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_eventgrid_domain

val yojson_of_azurerm_eventgrid_domain :
  azurerm_eventgrid_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  endpoint : string prop;
  id : string prop;
  identity : identity list prop;
  inbound_ip_rule : inbound_ip_rule list prop;
  input_mapping_default_values :
    input_mapping_default_values list prop;
  input_mapping_fields : input_mapping_fields list prop;
  input_schema : string prop;
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
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
