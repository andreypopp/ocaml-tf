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

type google_data_catalog_taxonomy

val google_data_catalog_taxonomy :
  ?activated_policy_types:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  unit ->
  google_data_catalog_taxonomy

val yojson_of_google_data_catalog_taxonomy :
  google_data_catalog_taxonomy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  activated_policy_types : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?activated_policy_types:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t

val make :
  ?activated_policy_types:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
