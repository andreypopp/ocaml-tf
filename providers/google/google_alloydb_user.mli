(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_alloydb_user

val google_alloydb_user :
  ?database_roles:string prop list ->
  ?id:string prop ->
  ?password:string prop ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  user_id:string prop ->
  user_type:string prop ->
  unit ->
  google_alloydb_user

val yojson_of_google_alloydb_user : google_alloydb_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster : string prop;
  database_roles : string list prop;
  id : string prop;
  name : string prop;
  password : string prop;
  user_id : string prop;
  user_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?database_roles:string prop list ->
  ?id:string prop ->
  ?password:string prop ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  user_id:string prop ->
  user_type:string prop ->
  string ->
  t
