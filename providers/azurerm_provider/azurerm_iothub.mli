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
  authentication_type : string;  (** authentication_type *)
  batch_frequency_in_seconds : float;
      (** batch_frequency_in_seconds *)
  connection_string : string;  (** connection_string *)
  container_name : string;  (** container_name *)
  encoding : string;  (** encoding *)
  endpoint_uri : string;  (** endpoint_uri *)
  entity_path : string;  (** entity_path *)
  file_name_format : string;  (** file_name_format *)
  identity_id : string;  (** identity_id *)
  max_chunk_size_in_bytes : float;  (** max_chunk_size_in_bytes *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  type_ : string; [@key "type"]  (** type *)
}

type azurerm_iothub__enrichment = {
  endpoint_names : string list;  (** endpoint_names *)
  key : string;  (** key *)
  value : string;  (** value *)
}

type azurerm_iothub__route = {
  condition : string;  (** condition *)
  enabled : bool;  (** enabled *)
  endpoint_names : string list;  (** endpoint_names *)
  name : string;  (** name *)
  source : string;  (** source *)
}

type azurerm_iothub__shared_access_policy = {
  key_name : string;  (** key_name *)
  permissions : string;  (** permissions *)
  primary_key : string;  (** primary_key *)
  secondary_key : string;  (** secondary_key *)
}

type azurerm_iothub

val azurerm_iothub :
  ?endpoint:azurerm_iothub__endpoint list ->
  ?enrichment:azurerm_iothub__enrichment list ->
  ?event_hub_partition_count:float ->
  ?event_hub_retention_in_days:float ->
  ?id:string ->
  ?local_authentication_enabled:bool ->
  ?min_tls_version:string ->
  ?public_network_access_enabled:bool ->
  ?route:azurerm_iothub__route list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_iothub__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  cloud_to_device:azurerm_iothub__cloud_to_device list ->
  fallback_route:azurerm_iothub__fallback_route list ->
  file_upload:azurerm_iothub__file_upload list ->
  identity:azurerm_iothub__identity list ->
  network_rule_set:azurerm_iothub__network_rule_set list ->
  sku:azurerm_iothub__sku list ->
  string ->
  unit
