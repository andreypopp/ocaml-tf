(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_private_endpoint__ip_configuration
type azurerm_private_endpoint__private_dns_zone_group
type azurerm_private_endpoint__private_service_connection
type azurerm_private_endpoint__timeouts

type azurerm_private_endpoint__custom_dns_configs = {
  fqdn : string prop;  (** fqdn *)
  ip_addresses : string prop list;  (** ip_addresses *)
}

type azurerm_private_endpoint__network_interface = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type azurerm_private_endpoint__private_dns_zone_configs__record_sets = {
  fqdn : string prop;  (** fqdn *)
  ip_addresses : string prop list;  (** ip_addresses *)
  name : string prop;  (** name *)
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
}

type azurerm_private_endpoint__private_dns_zone_configs = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  private_dns_zone_id : string prop;  (** private_dns_zone_id *)
  record_sets :
    azurerm_private_endpoint__private_dns_zone_configs__record_sets
    list;
      (** record_sets *)
}

type azurerm_private_endpoint

val azurerm_private_endpoint :
  ?custom_network_interface_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_private_endpoint__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  ip_configuration:azurerm_private_endpoint__ip_configuration list ->
  private_dns_zone_group:
    azurerm_private_endpoint__private_dns_zone_group list ->
  private_service_connection:
    azurerm_private_endpoint__private_service_connection list ->
  string ->
  unit
