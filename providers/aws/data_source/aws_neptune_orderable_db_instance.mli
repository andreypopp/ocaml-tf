(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_neptune_orderable_db_instance

val aws_neptune_orderable_db_instance :
  ?engine:string prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?instance_class:string prop ->
  ?license_model:string prop ->
  ?preferred_instance_classes:string prop list ->
  ?vpc:bool prop ->
  unit ->
  aws_neptune_orderable_db_instance

val yojson_of_aws_neptune_orderable_db_instance :
  aws_neptune_orderable_db_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  availability_zones : string list prop;
  engine : string prop;
  engine_version : string prop;
  id : string prop;
  instance_class : string prop;
  license_model : string prop;
  max_iops_per_db_instance : float prop;
  max_iops_per_gib : float prop;
  max_storage_size : float prop;
  min_iops_per_db_instance : float prop;
  min_iops_per_gib : float prop;
  min_storage_size : float prop;
  multi_az_capable : bool prop;
  preferred_instance_classes : string list prop;
  read_replica_capable : bool prop;
  storage_type : string prop;
  supports_enhanced_monitoring : bool prop;
  supports_iam_database_authentication : bool prop;
  supports_iops : bool prop;
  supports_performance_insights : bool prop;
  supports_storage_encryption : bool prop;
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
