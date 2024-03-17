(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_active_directory_domain__timeouts
type google_active_directory_domain

type t = private {
  admin : string prop;
  authorized_networks : string list prop;
  domain_name : string prop;
  effective_labels : (string * string) list prop;
  fqdn : string prop;
  id : string prop;
  labels : (string * string) list prop;
  locations : string list prop;
  name : string prop;
  project : string prop;
  reserved_ip_range : string prop;
  terraform_labels : (string * string) list prop;
}

val google_active_directory_domain :
  ?admin:string prop ->
  ?authorized_networks:string prop list ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_active_directory_domain__timeouts ->
  domain_name:string prop ->
  locations:string prop list ->
  reserved_ip_range:string prop ->
  string ->
  t
