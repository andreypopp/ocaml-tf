(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certs = {
  cert : string prop;  (** cert *)
  common_name : string prop;  (** common_name *)
  create_time : string prop;  (** create_time *)
  expiration_time : string prop;  (** expiration_time *)
  sha1_fingerprint : string prop;  (** sha1_fingerprint *)
}

type google_sql_ca_certs

val google_sql_ca_certs :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  unit ->
  google_sql_ca_certs

val yojson_of_google_sql_ca_certs : google_sql_ca_certs -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active_version : string prop;
  certs : certs list prop;
  id : string prop;
  instance : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  string ->
  t Tf_core.resource
