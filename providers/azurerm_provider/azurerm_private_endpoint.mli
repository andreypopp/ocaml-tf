(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_endpoint__ip_configuration
type azurerm_private_endpoint__private_dns_zone_group
type azurerm_private_endpoint__private_service_connection
type azurerm_private_endpoint__timeouts

type azurerm_private_endpoint__custom_dns_configs = {
  fqdn : string;  (** fqdn *)
  ip_addresses : string list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint__network_interface = {
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint__private_dns_zone_configs__record_sets = {
  fqdn : string;  (** fqdn *)
  ip_addresses : string list;  (** ip_addresses *)
  name : string;  (** name *)
  ttl : float;  (** ttl *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint__private_dns_zone_configs = {
  id : string;  (** id *)
  name : string;  (** name *)
  private_dns_zone_id : string;  (** private_dns_zone_id *)
  record_sets :
    azurerm_private_endpoint__private_dns_zone_configs__record_sets
    list;
      (** record_sets *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint

val azurerm_private_endpoint :
  ?custom_network_interface_name:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_private_endpoint__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  subnet_id:string ->
  ip_configuration:azurerm_private_endpoint__ip_configuration list ->
  private_dns_zone_group:
    azurerm_private_endpoint__private_dns_zone_group list ->
  private_service_connection:
    azurerm_private_endpoint__private_service_connection list ->
  string ->
  unit
