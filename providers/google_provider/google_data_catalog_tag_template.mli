(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_tag_template__fields__type__enum_type__allowed_values

type google_data_catalog_tag_template__fields__type__enum_type
type google_data_catalog_tag_template__fields__type
type google_data_catalog_tag_template__fields
type google_data_catalog_tag_template__timeouts
type google_data_catalog_tag_template

val google_data_catalog_tag_template :
  ?display_name:string ->
  ?force_delete:bool ->
  ?timeouts:google_data_catalog_tag_template__timeouts ->
  tag_template_id:string ->
  fields:google_data_catalog_tag_template__fields list ->
  string ->
  unit
