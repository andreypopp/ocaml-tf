(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_active_directory_domain

val google_active_directory_domain :
  ?admin:string prop ->
  ?authorized_networks:string prop list ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  locations:string prop list ->
  reserved_ip_range:string prop ->
  unit ->
  google_active_directory_domain

val yojson_of_google_active_directory_domain :
  google_active_directory_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admin : string prop;
  authorized_networks : string list prop;
  domain_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  fqdn : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  locations : string list prop;
  name : string prop;
  project : string prop;
  reserved_ip_range : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?admin:string prop ->
  ?authorized_networks:string prop list ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  locations:string prop list ->
  reserved_ip_range:string prop ->
  string ->
  t

val make :
  ?admin:string prop ->
  ?authorized_networks:string prop list ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  locations:string prop list ->
  reserved_ip_range:string prop ->
  string ->
  t Tf_core.resource
