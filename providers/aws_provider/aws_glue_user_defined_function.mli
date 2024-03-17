(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_user_defined_function__resource_uris
type aws_glue_user_defined_function

type t = private {
  arn : string prop;
  catalog_id : string prop;
  class_name : string prop;
  create_time : string prop;
  database_name : string prop;
  id : string prop;
  name : string prop;
  owner_name : string prop;
  owner_type : string prop;
}

val aws_glue_user_defined_function :
  ?catalog_id:string prop ->
  ?id:string prop ->
  class_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  owner_name:string prop ->
  owner_type:string prop ->
  resource_uris:aws_glue_user_defined_function__resource_uris list ->
  string ->
  t
