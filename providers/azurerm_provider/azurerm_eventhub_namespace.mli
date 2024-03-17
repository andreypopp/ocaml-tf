(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_namespace__identity
type azurerm_eventhub_namespace__timeouts

type azurerm_eventhub_namespace__network_rulesets__virtual_network_rule = {
  ignore_missing_virtual_network_service_endpoint : bool prop;
      (** ignore_missing_virtual_network_service_endpoint *)
  subnet_id : string prop;  (** subnet_id *)
}

type azurerm_eventhub_namespace__network_rulesets__ip_rule = {
  action : string prop;  (** action *)
  ip_mask : string prop;  (** ip_mask *)
}

type azurerm_eventhub_namespace__network_rulesets = {
  default_action : string prop;  (** default_action *)
  ip_rule :
    azurerm_eventhub_namespace__network_rulesets__ip_rule list;
      (** ip_rule *)
  public_network_access_enabled : bool prop;
      (** public_network_access_enabled *)
  trusted_service_access_enabled : bool prop;
      (** trusted_service_access_enabled *)
  virtual_network_rule :
    azurerm_eventhub_namespace__network_rulesets__virtual_network_rule
    list;
      (** virtual_network_rule *)
}

type azurerm_eventhub_namespace

val azurerm_eventhub_namespace :
  ?auto_inflate_enabled:bool prop ->
  ?capacity:float prop ->
  ?dedicated_cluster_id:string prop ->
  ?id:string prop ->
  ?local_authentication_enabled:bool prop ->
  ?maximum_throughput_units:float prop ->
  ?minimum_tls_version:string prop ->
  ?network_rulesets:azurerm_eventhub_namespace__network_rulesets list ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:azurerm_eventhub_namespace__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  identity:azurerm_eventhub_namespace__identity list ->
  string ->
  unit
