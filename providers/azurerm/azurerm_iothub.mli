(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint = {
  authentication_type : string prop;  (** authentication_type *)
  batch_frequency_in_seconds : float prop;
      (** batch_frequency_in_seconds *)
  connection_string : string prop;  (** connection_string *)
  container_name : string prop;  (** container_name *)
  encoding : string prop;  (** encoding *)
  endpoint_uri : string prop;  (** endpoint_uri *)
  entity_path : string prop;  (** entity_path *)
  file_name_format : string prop;  (** file_name_format *)
  identity_id : string prop;  (** identity_id *)
  max_chunk_size_in_bytes : float prop;
      (** max_chunk_size_in_bytes *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type enrichment = {
  endpoint_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** endpoint_names *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type route = {
  condition : string prop;  (** condition *)
  enabled : bool prop;  (** enabled *)
  endpoint_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** endpoint_names *)
  name : string prop;  (** name *)
  source : string prop;  (** source *)
}

type shared_access_policy = {
  key_name : string prop;  (** key_name *)
  permissions : string prop;  (** permissions *)
  primary_key : string prop;  (** primary_key *)
  secondary_key : string prop;  (** secondary_key *)
}

type cloud_to_device__feedback

val cloud_to_device__feedback :
  ?lock_duration:string prop ->
  ?max_delivery_count:float prop ->
  ?time_to_live:string prop ->
  unit ->
  cloud_to_device__feedback

type cloud_to_device

val cloud_to_device :
  ?default_ttl:string prop ->
  ?max_delivery_count:float prop ->
  ?feedback:cloud_to_device__feedback list ->
  unit ->
  cloud_to_device

type fallback_route

val fallback_route :
  ?condition:string prop ->
  ?enabled:bool prop ->
  ?endpoint_names:string prop list ->
  ?source:string prop ->
  unit ->
  fallback_route

type file_upload

val file_upload :
  ?authentication_type:string prop ->
  ?default_ttl:string prop ->
  ?identity_id:string prop ->
  ?lock_duration:string prop ->
  ?max_delivery_count:float prop ->
  ?notifications:bool prop ->
  ?sas_ttl:string prop ->
  connection_string:string prop ->
  container_name:string prop ->
  unit ->
  file_upload

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type network_rule_set__ip_rule

val network_rule_set__ip_rule :
  ?action:string prop ->
  ip_mask:string prop ->
  name:string prop ->
  unit ->
  network_rule_set__ip_rule

type network_rule_set

val network_rule_set :
  ?apply_to_builtin_eventhub_endpoint:bool prop ->
  ?default_action:string prop ->
  ?ip_rule:network_rule_set__ip_rule list ->
  unit ->
  network_rule_set

type sku

val sku : capacity:float prop -> name:string prop -> unit -> sku

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iothub

val azurerm_iothub :
  ?endpoint:endpoint list ->
  ?enrichment:enrichment list ->
  ?event_hub_partition_count:float prop ->
  ?event_hub_retention_in_days:float prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?min_tls_version:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?route:route list ->
  ?tags:string prop Tf_core.assoc ->
  ?cloud_to_device:cloud_to_device list ->
  ?fallback_route:fallback_route list ->
  ?file_upload:file_upload list ->
  ?identity:identity list ->
  ?network_rule_set:network_rule_set list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  unit ->
  azurerm_iothub

val yojson_of_azurerm_iothub : azurerm_iothub -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  endpoint : endpoint list prop;
  enrichment : enrichment list prop;
  event_hub_events_endpoint : string prop;
  event_hub_events_namespace : string prop;
  event_hub_events_path : string prop;
  event_hub_operations_endpoint : string prop;
  event_hub_operations_path : string prop;
  event_hub_partition_count : float prop;
  event_hub_retention_in_days : float prop;
  hostname : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  min_tls_version : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  route : route list prop;
  shared_access_policy : shared_access_policy list prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?endpoint:endpoint list ->
  ?enrichment:enrichment list ->
  ?event_hub_partition_count:float prop ->
  ?event_hub_retention_in_days:float prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?min_tls_version:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?route:route list ->
  ?tags:string prop Tf_core.assoc ->
  ?cloud_to_device:cloud_to_device list ->
  ?fallback_route:fallback_route list ->
  ?file_upload:file_upload list ->
  ?identity:identity list ->
  ?network_rule_set:network_rule_set list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  string ->
  t

val make :
  ?endpoint:endpoint list ->
  ?enrichment:enrichment list ->
  ?event_hub_partition_count:float prop ->
  ?event_hub_retention_in_days:float prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?min_tls_version:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?route:route list ->
  ?tags:string prop Tf_core.assoc ->
  ?cloud_to_device:cloud_to_device list ->
  ?fallback_route:fallback_route list ->
  ?file_upload:file_upload list ->
  ?identity:identity list ->
  ?network_rule_set:network_rule_set list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  string ->
  t Tf_core.resource
