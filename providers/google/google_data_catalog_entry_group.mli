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

type google_data_catalog_entry_group

val google_data_catalog_entry_group :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  entry_group_id:string prop ->
  unit ->
  google_data_catalog_entry_group

val yojson_of_google_data_catalog_entry_group :
  google_data_catalog_entry_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  entry_group_id : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  entry_group_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  entry_group_id:string prop ->
  string ->
  t Tf_core.resource
