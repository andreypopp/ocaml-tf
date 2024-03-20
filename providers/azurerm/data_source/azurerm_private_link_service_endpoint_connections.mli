(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type private_endpoint_connections = {
  action_required : string prop;  (** action_required *)
  connection_id : string prop;  (** connection_id *)
  connection_name : string prop;  (** connection_name *)
  description : string prop;  (** description *)
  private_endpoint_id : string prop;  (** private_endpoint_id *)
  private_endpoint_name : string prop;  (** private_endpoint_name *)
  status : string prop;  (** status *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_private_link_service_endpoint_connections

val azurerm_private_link_service_endpoint_connections :
  ?id:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  service_id:string prop ->
  unit ->
  azurerm_private_link_service_endpoint_connections

val yojson_of_azurerm_private_link_service_endpoint_connections :
  azurerm_private_link_service_endpoint_connections -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  private_endpoint_connections :
    private_endpoint_connections list prop;
  resource_group_name : string prop;
  service_id : string prop;
  service_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  service_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  service_id:string prop ->
  string ->
  t Tf_core.resource
