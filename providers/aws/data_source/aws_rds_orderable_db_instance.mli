(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_rds_orderable_db_instance

val aws_rds_orderable_db_instance :
  ?availability_zone_group:string prop ->
  ?engine_latest_version:bool prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?instance_class:string prop ->
  ?license_model:string prop ->
  ?preferred_engine_versions:string prop list ->
  ?preferred_instance_classes:string prop list ->
  ?read_replica_capable:bool prop ->
  ?storage_type:string prop ->
  ?supported_engine_modes:string prop list ->
  ?supported_network_types:string prop list ->
  ?supports_clusters:bool prop ->
  ?supports_enhanced_monitoring:bool prop ->
  ?supports_global_databases:bool prop ->
  ?supports_iam_database_authentication:bool prop ->
  ?supports_iops:bool prop ->
  ?supports_kerberos_authentication:bool prop ->
  ?supports_multi_az:bool prop ->
  ?supports_performance_insights:bool prop ->
  ?supports_storage_autoscaling:bool prop ->
  ?supports_storage_encryption:bool prop ->
  ?vpc:bool prop ->
  engine:string prop ->
  unit ->
  aws_rds_orderable_db_instance

val yojson_of_aws_rds_orderable_db_instance :
  aws_rds_orderable_db_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  availability_zone_group : string prop;
  availability_zones : string list prop;
  engine : string prop;
  engine_latest_version : bool prop;
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
  outpost_capable : bool prop;
  preferred_engine_versions : string list prop;
  preferred_instance_classes : string list prop;
  read_replica_capable : bool prop;
  storage_type : string prop;
  supported_engine_modes : string list prop;
  supported_network_types : string list prop;
  supports_clusters : bool prop;
  supports_enhanced_monitoring : bool prop;
  supports_global_databases : bool prop;
  supports_iam_database_authentication : bool prop;
  supports_iops : bool prop;
  supports_kerberos_authentication : bool prop;
  supports_multi_az : bool prop;
  supports_performance_insights : bool prop;
  supports_storage_autoscaling : bool prop;
  supports_storage_encryption : bool prop;
  vpc : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_zone_group:string prop ->
  ?engine_latest_version:bool prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?instance_class:string prop ->
  ?license_model:string prop ->
  ?preferred_engine_versions:string prop list ->
  ?preferred_instance_classes:string prop list ->
  ?read_replica_capable:bool prop ->
  ?storage_type:string prop ->
  ?supported_engine_modes:string prop list ->
  ?supported_network_types:string prop list ->
  ?supports_clusters:bool prop ->
  ?supports_enhanced_monitoring:bool prop ->
  ?supports_global_databases:bool prop ->
  ?supports_iam_database_authentication:bool prop ->
  ?supports_iops:bool prop ->
  ?supports_kerberos_authentication:bool prop ->
  ?supports_multi_az:bool prop ->
  ?supports_performance_insights:bool prop ->
  ?supports_storage_autoscaling:bool prop ->
  ?supports_storage_encryption:bool prop ->
  ?vpc:bool prop ->
  engine:string prop ->
  string ->
  t

val make :
  ?availability_zone_group:string prop ->
  ?engine_latest_version:bool prop ->
  ?engine_version:string prop ->
  ?id:string prop ->
  ?instance_class:string prop ->
  ?license_model:string prop ->
  ?preferred_engine_versions:string prop list ->
  ?preferred_instance_classes:string prop list ->
  ?read_replica_capable:bool prop ->
  ?storage_type:string prop ->
  ?supported_engine_modes:string prop list ->
  ?supported_network_types:string prop list ->
  ?supports_clusters:bool prop ->
  ?supports_enhanced_monitoring:bool prop ->
  ?supports_global_databases:bool prop ->
  ?supports_iam_database_authentication:bool prop ->
  ?supports_iops:bool prop ->
  ?supports_kerberos_authentication:bool prop ->
  ?supports_multi_az:bool prop ->
  ?supports_performance_insights:bool prop ->
  ?supports_storage_autoscaling:bool prop ->
  ?supports_storage_encryption:bool prop ->
  ?vpc:bool prop ->
  engine:string prop ->
  string ->
  t Tf_core.resource
