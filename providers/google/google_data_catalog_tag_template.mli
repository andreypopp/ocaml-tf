(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_tag_template__fields__type__enum_type__allowed_values

type google_data_catalog_tag_template__fields__type__enum_type
type google_data_catalog_tag_template__fields__type
type google_data_catalog_tag_template__fields
type google_data_catalog_tag_template__timeouts
type google_data_catalog_tag_template

type t = private {
  display_name : string prop;
  force_delete : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  tag_template_id : string prop;
}

val google_data_catalog_tag_template :
  ?display_name:string prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_data_catalog_tag_template__timeouts ->
  tag_template_id:string prop ->
  fields:google_data_catalog_tag_template__fields list ->
  string ->
  t
