(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hive_options

val hive_options :
  ?location_uri:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  unit ->
  hive_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_biglake_database

val google_biglake_database :
  ?id:string prop ->
  ?timeouts:timeouts ->
  catalog:string prop ->
  name:string prop ->
  type_:string prop ->
  hive_options:hive_options list ->
  unit ->
  google_biglake_database

val yojson_of_google_biglake_database :
  google_biglake_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  catalog : string prop;
  create_time : string prop;
  delete_time : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  catalog:string prop ->
  name:string prop ->
  type_:string prop ->
  hive_options:hive_options list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  catalog:string prop ->
  name:string prop ->
  type_:string prop ->
  hive_options:hive_options list ->
  string ->
  t Tf_core.resource
