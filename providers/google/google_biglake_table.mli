(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hive_options__storage_descriptor

val hive_options__storage_descriptor :
  ?input_format:string prop ->
  ?location_uri:string prop ->
  ?output_format:string prop ->
  unit ->
  hive_options__storage_descriptor

type hive_options

val hive_options :
  ?parameters:(string * string prop) list ->
  ?table_type:string prop ->
  ?storage_descriptor:hive_options__storage_descriptor list ->
  unit ->
  hive_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_biglake_table

val google_biglake_table :
  ?database:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?hive_options:hive_options list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_biglake_table

val yojson_of_google_biglake_table : google_biglake_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  database : string prop;
  delete_time : string prop;
  etag : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?database:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?hive_options:hive_options list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?database:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?hive_options:hive_options list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
