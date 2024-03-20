(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type network_interface = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type private_service_connection = {
  name : string prop;  (** name *)
  private_ip_address : string prop;  (** private_ip_address *)
  request_response : string prop;  (** request_response *)
  status : string prop;  (** status *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_private_endpoint_connection

val azurerm_private_endpoint_connection :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_private_endpoint_connection

val yojson_of_azurerm_private_endpoint_connection :
  azurerm_private_endpoint_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  network_interface : network_interface list prop;
  private_service_connection : private_service_connection list prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
