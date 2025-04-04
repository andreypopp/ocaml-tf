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

type google_tags_tag_key

val google_tags_tag_key :
  ?description:string prop ->
  ?id:string prop ->
  ?purpose:string prop ->
  ?purpose_data:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  parent:string prop ->
  short_name:string prop ->
  unit ->
  google_tags_tag_key

val yojson_of_google_tags_tag_key : google_tags_tag_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  namespaced_name : string prop;
  parent : string prop;
  purpose : string prop;
  purpose_data : string Tf_core.assoc prop;
  short_name : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?purpose:string prop ->
  ?purpose_data:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  parent:string prop ->
  short_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?purpose:string prop ->
  ?purpose_data:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  parent:string prop ->
  short_name:string prop ->
  string ->
  t Tf_core.resource
