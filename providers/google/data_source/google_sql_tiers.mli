(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type tiers = {
  disk_quota : float prop;  (** disk_quota *)
  ram : float prop;  (** ram *)
  region : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** region *)
  tier : string prop;  (** tier *)
}

type google_sql_tiers

val google_sql_tiers :
  ?id:string prop -> ?project:string prop -> unit -> google_sql_tiers

val yojson_of_google_sql_tiers : google_sql_tiers -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  project : string prop;
  tiers : tiers list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  string ->
  t Tf_core.resource
