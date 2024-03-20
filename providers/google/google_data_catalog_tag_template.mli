(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type fields__type__enum_type__allowed_values

val fields__type__enum_type__allowed_values :
  display_name:string prop ->
  unit ->
  fields__type__enum_type__allowed_values

type fields__type__enum_type

val fields__type__enum_type :
  allowed_values:fields__type__enum_type__allowed_values list ->
  unit ->
  fields__type__enum_type

type fields__type

val fields__type :
  ?primitive_type:string prop ->
  enum_type:fields__type__enum_type list ->
  unit ->
  fields__type

type fields

val fields :
  ?description:string prop ->
  ?display_name:string prop ->
  ?is_required:bool prop ->
  ?order:float prop ->
  field_id:string prop ->
  type_:fields__type list ->
  unit ->
  fields

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_data_catalog_tag_template

val google_data_catalog_tag_template :
  ?display_name:string prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  tag_template_id:string prop ->
  fields:fields list ->
  unit ->
  google_data_catalog_tag_template

val yojson_of_google_data_catalog_tag_template :
  google_data_catalog_tag_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  force_delete : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  tag_template_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  tag_template_id:string prop ->
  fields:fields list ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  tag_template_id:string prop ->
  fields:fields list ->
  string ->
  t Tf_core.resource
