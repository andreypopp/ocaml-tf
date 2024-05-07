(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type databases = {
  charset : string prop;  (** charset *)
  collation : string prop;  (** collation *)
  deletion_policy : string prop;  (** deletion_policy *)
  instance : string prop;  (** instance *)
  name : string prop;  (** name *)
  project : string prop;  (** project *)
  self_link : string prop;  (** self_link *)
}

type google_sql_databases

val google_sql_databases :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  unit ->
  google_sql_databases

val yojson_of_google_sql_databases : google_sql_databases -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  databases : databases list prop;
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
