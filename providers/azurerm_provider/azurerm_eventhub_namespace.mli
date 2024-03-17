(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_namespace__identity
type azurerm_eventhub_namespace__timeouts

type azurerm_eventhub_namespace__network_rulesets__virtual_network_rule = {
  ignore_missing_virtual_network_service_endpoint : bool;
      (** ignore_missing_virtual_network_service_endpoint *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]

type azurerm_eventhub_namespace__network_rulesets__ip_rule = {
  action : string;  (** action *)
  ip_mask : string;  (** ip_mask *)
}
[@@deriving yojson_of]

type azurerm_eventhub_namespace__network_rulesets = {
  default_action : string;  (** default_action *)
  ip_rule :
    azurerm_eventhub_namespace__network_rulesets__ip_rule list;
      (** ip_rule *)
  public_network_access_enabled : bool;
      (** public_network_access_enabled *)
  trusted_service_access_enabled : bool;
      (** trusted_service_access_enabled *)
  virtual_network_rule :
    azurerm_eventhub_namespace__network_rulesets__virtual_network_rule
    list;
      (** virtual_network_rule *)
}
[@@deriving yojson_of]

type azurerm_eventhub_namespace

val azurerm_eventhub_namespace :
  ?auto_inflate_enabled:bool ->
  ?capacity:float ->
  ?dedicated_cluster_id:string ->
  ?local_authentication_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?zone_redundant:bool ->
  ?timeouts:azurerm_eventhub_namespace__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  identity:azurerm_eventhub_namespace__identity list ->
  string ->
  unit
