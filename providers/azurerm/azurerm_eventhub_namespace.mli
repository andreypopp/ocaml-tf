(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type network_rulesets__virtual_network_rule = {
  ignore_missing_virtual_network_service_endpoint : bool prop;
      (** ignore_missing_virtual_network_service_endpoint *)
  subnet_id : string prop;  (** subnet_id *)
}

type network_rulesets__ip_rule = {
  action : string prop;  (** action *)
  ip_mask : string prop;  (** ip_mask *)
}

type network_rulesets = {
  default_action : string prop;  (** default_action *)
  ip_rule : network_rulesets__ip_rule list;  (** ip_rule *)
  public_network_access_enabled : bool prop;
      (** public_network_access_enabled *)
  trusted_service_access_enabled : bool prop;
      (** trusted_service_access_enabled *)
  virtual_network_rule : network_rulesets__virtual_network_rule list;
      (** virtual_network_rule *)
}

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_eventhub_namespace

val azurerm_eventhub_namespace :
  ?auto_inflate_enabled:bool prop ->
  ?capacity:float prop ->
  ?dedicated_cluster_id:string prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?maximum_throughput_units:float prop ->
  ?minimum_tls_version:string prop ->
  ?network_rulesets:network_rulesets list ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  unit ->
  azurerm_eventhub_namespace

val yojson_of_azurerm_eventhub_namespace :
  azurerm_eventhub_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_inflate_enabled : bool prop;
  capacity : float prop;
  dedicated_cluster_id : string prop;
  default_primary_connection_string : string prop;
  default_primary_connection_string_alias : string prop;
  default_primary_key : string prop;
  default_secondary_connection_string : string prop;
  default_secondary_connection_string_alias : string prop;
  default_secondary_key : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  maximum_throughput_units : float prop;
  minimum_tls_version : string prop;
  name : string prop;
  network_rulesets : network_rulesets list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_inflate_enabled:bool prop ->
  ?capacity:float prop ->
  ?dedicated_cluster_id:string prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?maximum_throughput_units:float prop ->
  ?minimum_tls_version:string prop ->
  ?network_rulesets:network_rulesets list ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t

val make :
  ?auto_inflate_enabled:bool prop ->
  ?capacity:float prop ->
  ?dedicated_cluster_id:string prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?maximum_throughput_units:float prop ->
  ?minimum_tls_version:string prop ->
  ?network_rulesets:network_rulesets list ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t Tf_core.resource
