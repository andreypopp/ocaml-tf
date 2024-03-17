(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_user_defined_function__resource_uris
type aws_glue_user_defined_function

val aws_glue_user_defined_function :
  ?catalog_id:string ->
  ?id:string ->
  class_name:string ->
  database_name:string ->
  name:string ->
  owner_name:string ->
  owner_type:string ->
  resource_uris:aws_glue_user_defined_function__resource_uris list ->
  string ->
  unit
