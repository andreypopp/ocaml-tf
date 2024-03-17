(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_catalog_database__create_table_default_permission__principal

type aws_glue_catalog_database__create_table_default_permission
type aws_glue_catalog_database__federated_database
type aws_glue_catalog_database__target_database
type aws_glue_catalog_database

type t = private {
  arn : string prop;
  catalog_id : string prop;
  description : string prop;
  id : string prop;
  location_uri : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_glue_catalog_database :
  ?catalog_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?location_uri:string prop ->
  ?parameters:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  create_table_default_permission:
    aws_glue_catalog_database__create_table_default_permission list ->
  federated_database:
    aws_glue_catalog_database__federated_database list ->
  target_database:aws_glue_catalog_database__target_database list ->
  string ->
  t
