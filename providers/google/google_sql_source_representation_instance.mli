(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_sql_source_representation_instance

val google_sql_source_representation_instance :
  ?ca_certificate:string prop ->
  ?client_certificate:string prop ->
  ?client_key:string prop ->
  ?dump_file_path:string prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?username:string prop ->
  ?timeouts:timeouts ->
  database_version:string prop ->
  host:string prop ->
  name:string prop ->
  unit ->
  google_sql_source_representation_instance

val yojson_of_google_sql_source_representation_instance :
  google_sql_source_representation_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  ca_certificate : string prop;
  client_certificate : string prop;
  client_key : string prop;
  database_version : string prop;
  dump_file_path : string prop;
  host : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  project : string prop;
  region : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?ca_certificate:string prop ->
  ?client_certificate:string prop ->
  ?client_key:string prop ->
  ?dump_file_path:string prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?username:string prop ->
  ?timeouts:timeouts ->
  database_version:string prop ->
  host:string prop ->
  name:string prop ->
  string ->
  t
