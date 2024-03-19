(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type max_age

val max_age :
  ?days:float prop -> ?duration:string prop -> unit -> max_age

type max_version

val max_version : number:float prop -> unit -> max_version

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_bigtable_gc_policy

val google_bigtable_gc_policy :
  ?deletion_policy:string prop ->
  ?gc_rules:string prop ->
  ?id:string prop ->
  ?mode:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  column_family:string prop ->
  instance_name:string prop ->
  table:string prop ->
  max_age:max_age list ->
  max_version:max_version list ->
  unit ->
  google_bigtable_gc_policy

val yojson_of_google_bigtable_gc_policy :
  google_bigtable_gc_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  column_family : string prop;
  deletion_policy : string prop;
  gc_rules : string prop;
  id : string prop;
  instance_name : string prop;
  mode : string prop;
  project : string prop;
  table : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_policy:string prop ->
  ?gc_rules:string prop ->
  ?id:string prop ->
  ?mode:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  column_family:string prop ->
  instance_name:string prop ->
  table:string prop ->
  max_age:max_age list ->
  max_version:max_version list ->
  string ->
  t
