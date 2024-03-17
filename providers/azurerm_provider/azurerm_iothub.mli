(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub__cloud_to_device__feedback
type azurerm_iothub__cloud_to_device
type azurerm_iothub__fallback_route
type azurerm_iothub__file_upload
type azurerm_iothub__identity
type azurerm_iothub__network_rule_set__ip_rule
type azurerm_iothub__network_rule_set
type azurerm_iothub__sku
type azurerm_iothub__timeouts

type azurerm_iothub__endpoint = {
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

type azurerm_iothub__enrichment = {
  endpoint_names : string prop list;  (** endpoint_names *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type azurerm_iothub__route = {
  condition : string prop;  (** condition *)
  enabled : bool prop;  (** enabled *)
  endpoint_names : string prop list;  (** endpoint_names *)
  name : string prop;  (** name *)
  source : string prop;  (** source *)
}

type azurerm_iothub__shared_access_policy = {
  key_name : string prop;  (** key_name *)
  permissions : string prop;  (** permissions *)
  primary_key : string prop;  (** primary_key *)
  secondary_key : string prop;  (** secondary_key *)
}

type azurerm_iothub

val azurerm_iothub :
  ?endpoint:azurerm_iothub__endpoint list ->
  ?enrichment:azurerm_iothub__enrichment list ->
  ?event_hub_partition_count:float prop ->
  ?event_hub_retention_in_days:float prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?min_tls_version:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?route:azurerm_iothub__route list ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_iothub__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  cloud_to_device:azurerm_iothub__cloud_to_device list ->
  fallback_route:azurerm_iothub__fallback_route list ->
  file_upload:azurerm_iothub__file_upload list ->
  identity:azurerm_iothub__identity list ->
  network_rule_set:azurerm_iothub__network_rule_set list ->
  sku:azurerm_iothub__sku list ->
  string ->
  unit
