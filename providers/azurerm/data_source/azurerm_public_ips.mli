(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type public_ips = {
  domain_name_label : string prop;  (** domain_name_label *)
  fqdn : string prop;  (** fqdn *)
  id : string prop;  (** id *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_public_ips

val azurerm_public_ips :
  ?allocation_type:string prop ->
  ?attachment_status:string prop ->
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  unit ->
  azurerm_public_ips

val yojson_of_azurerm_public_ips : azurerm_public_ips -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allocation_type : string prop;
  attachment_status : string prop;
  id : string prop;
  name_prefix : string prop;
  public_ips : public_ips list prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allocation_type:string prop ->
  ?attachment_status:string prop ->
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?allocation_type:string prop ->
  ?attachment_status:string prop ->
  ?id:string prop ->
  ?name_prefix:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
