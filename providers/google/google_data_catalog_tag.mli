(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type fields

val fields :
  ?bool_value:bool prop ->
  ?double_value:float prop ->
  ?enum_value:string prop ->
  ?string_value:string prop ->
  ?timestamp_value:string prop ->
  field_name:string prop ->
  unit ->
  fields

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_data_catalog_tag

val google_data_catalog_tag :
  ?column:string prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  template:string prop ->
  fields:fields list ->
  unit ->
  google_data_catalog_tag

val yojson_of_google_data_catalog_tag :
  google_data_catalog_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  column : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  template : string prop;
  template_displayname : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?column:string prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  template:string prop ->
  fields:fields list ->
  string ->
  t

val make :
  ?column:string prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  template:string prop ->
  fields:fields list ->
  string ->
  t Tf_core.resource
