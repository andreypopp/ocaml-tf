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

type google_migration_center_group

val google_migration_center_group :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  group_id:string prop ->
  location:string prop ->
  unit ->
  google_migration_center_group

val yojson_of_google_migration_center_group :
  google_migration_center_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  group_id : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  group_id:string prop ->
  location:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  group_id:string prop ->
  location:string prop ->
  string ->
  t Tf_core.resource
