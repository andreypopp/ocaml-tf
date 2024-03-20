(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_docdb_orderable_db_instance

val aws_docdb_orderable_db_instance :
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?instance_class:string prop ->
  ?license_model:string prop ->
  ?preferred_instance_classes:string prop list ->
  ?vpc:bool prop ->
  unit ->
  aws_docdb_orderable_db_instance

val yojson_of_aws_docdb_orderable_db_instance :
  aws_docdb_orderable_db_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  availability_zones : string list prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  instance_class : string prop;
  license_model : string prop;
  preferred_instance_classes : string list prop;
  vpc : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?instance_class:string prop ->
  ?license_model:string prop ->
  ?preferred_instance_classes:string prop list ->
  ?vpc:bool prop ->
  string ->
  t

val make :
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?instance_class:string prop ->
  ?license_model:string prop ->
  ?preferred_instance_classes:string prop list ->
  ?vpc:bool prop ->
  string ->
  t Tf_core.resource
