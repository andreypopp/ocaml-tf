(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type subset_view__family_subsets

val subset_view__family_subsets :
  ?qualifier_prefixes:string prop list ->
  ?qualifiers:string prop list ->
  family_name:string prop ->
  unit ->
  subset_view__family_subsets

type subset_view

val subset_view :
  ?row_prefixes:string prop list ->
  family_subsets:subset_view__family_subsets list ->
  unit ->
  subset_view

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type google_bigtable_authorized_view

val google_bigtable_authorized_view :
  ?deletion_protection:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?subset_view:subset_view list ->
  ?timeouts:timeouts ->
  instance_name:string prop ->
  name:string prop ->
  table_name:string prop ->
  unit ->
  google_bigtable_authorized_view

val yojson_of_google_bigtable_authorized_view :
  google_bigtable_authorized_view -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  deletion_protection : string prop;
  id : string prop;
  instance_name : string prop;
  name : string prop;
  project : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_protection:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?subset_view:subset_view list ->
  ?timeouts:timeouts ->
  instance_name:string prop ->
  name:string prop ->
  table_name:string prop ->
  string ->
  t

val make :
  ?deletion_protection:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?subset_view:subset_view list ->
  ?timeouts:timeouts ->
  instance_name:string prop ->
  name:string prop ->
  table_name:string prop ->
  string ->
  t Tf_core.resource
