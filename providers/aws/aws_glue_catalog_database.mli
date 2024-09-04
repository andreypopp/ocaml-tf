(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type create_table_default_permission__principal

val create_table_default_permission__principal :
  ?data_lake_principal_identifier:string prop ->
  unit ->
  create_table_default_permission__principal

type create_table_default_permission

val create_table_default_permission :
  ?permissions:string prop list ->
  ?principal:create_table_default_permission__principal list ->
  unit ->
  create_table_default_permission

type federated_database

val federated_database :
  ?connection_name:string prop ->
  ?identifier:string prop ->
  unit ->
  federated_database

type target_database

val target_database :
  ?region:string prop ->
  catalog_id:string prop ->
  database_name:string prop ->
  unit ->
  target_database

type aws_glue_catalog_database

val aws_glue_catalog_database :
  ?catalog_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?location_uri:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?create_table_default_permission:
    create_table_default_permission list ->
  ?federated_database:federated_database list ->
  ?target_database:target_database list ->
  name:string prop ->
  unit ->
  aws_glue_catalog_database

val yojson_of_aws_glue_catalog_database :
  aws_glue_catalog_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  catalog_id : string prop;
  description : string prop;
  id : string prop;
  location_uri : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?catalog_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?location_uri:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?create_table_default_permission:
    create_table_default_permission list ->
  ?federated_database:federated_database list ->
  ?target_database:target_database list ->
  name:string prop ->
  string ->
  t

val make :
  ?catalog_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?location_uri:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?create_table_default_permission:
    create_table_default_permission list ->
  ?federated_database:federated_database list ->
  ?target_database:target_database list ->
  name:string prop ->
  string ->
  t Tf_core.resource
