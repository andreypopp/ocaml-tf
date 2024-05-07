(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_dns_configs = {
  fqdn : string prop;  (** fqdn *)
  ip_addresses : string prop list;  (** ip_addresses *)
}

type network_interface = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type private_dns_zone_configs__record_sets = {
  fqdn : string prop;  (** fqdn *)
  ip_addresses : string prop list;  (** ip_addresses *)
  name : string prop;  (** name *)
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
}

type private_dns_zone_configs = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  private_dns_zone_id : string prop;  (** private_dns_zone_id *)
  record_sets : private_dns_zone_configs__record_sets list;
      (** record_sets *)
}

type ip_configuration

val ip_configuration :
  ?member_name:string prop ->
  ?subresource_name:string prop ->
  name:string prop ->
  private_ip_address:string prop ->
  unit ->
  ip_configuration

type private_dns_zone_group

val private_dns_zone_group :
  name:string prop ->
  private_dns_zone_ids:string prop list ->
  unit ->
  private_dns_zone_group

type private_service_connection

val private_service_connection :
  ?private_connection_resource_alias:string prop ->
  ?private_connection_resource_id:string prop ->
  ?request_message:string prop ->
  ?subresource_names:string prop list ->
  is_manual_connection:bool prop ->
  name:string prop ->
  unit ->
  private_service_connection

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_private_endpoint

val azurerm_private_endpoint :
  ?custom_network_interface_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?ip_configuration:ip_configuration list ->
  ?private_dns_zone_group:private_dns_zone_group list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  private_service_connection:private_service_connection list ->
  unit ->
  azurerm_private_endpoint

val yojson_of_azurerm_private_endpoint :
  azurerm_private_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  custom_dns_configs : custom_dns_configs list prop;
  custom_network_interface_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  network_interface : network_interface list prop;
  private_dns_zone_configs : private_dns_zone_configs list prop;
  resource_group_name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_network_interface_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?ip_configuration:ip_configuration list ->
  ?private_dns_zone_group:private_dns_zone_group list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  private_service_connection:private_service_connection list ->
  string ->
  t

val make :
  ?custom_network_interface_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?ip_configuration:ip_configuration list ->
  ?private_dns_zone_group:private_dns_zone_group list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  private_service_connection:private_service_connection list ->
  string ->
  t Tf_core.resource
