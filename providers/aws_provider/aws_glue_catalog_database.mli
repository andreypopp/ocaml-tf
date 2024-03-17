(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_catalog_database__create_table_default_permission__principal

type aws_glue_catalog_database__create_table_default_permission
type aws_glue_catalog_database__federated_database
type aws_glue_catalog_database__target_database
type aws_glue_catalog_database

val aws_glue_catalog_database :
  ?catalog_id:string ->
  ?description:string ->
  ?id:string ->
  ?location_uri:string ->
  ?parameters:(string * string) list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  create_table_default_permission:
    aws_glue_catalog_database__create_table_default_permission list ->
  federated_database:
    aws_glue_catalog_database__federated_database list ->
  target_database:aws_glue_catalog_database__target_database list ->
  string ->
  unit
