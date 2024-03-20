(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type master_user_secret = {
  kms_key_id : string prop;  (** kms_key_id *)
  secret_arn : string prop;  (** secret_arn *)
  secret_status : string prop;  (** secret_status *)
}

type aws_db_instance

val aws_db_instance :
  ?db_instance_identifier:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  aws_db_instance

val yojson_of_aws_db_instance : aws_db_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address : string prop;
  allocated_storage : float prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  backup_retention_period : float prop;
  ca_cert_identifier : string prop;
  db_cluster_identifier : string prop;
  db_instance_arn : string prop;
  db_instance_class : string prop;
  db_instance_identifier : string prop;
  db_instance_port : float prop;
  db_name : string prop;
  db_parameter_groups : string list prop;
  db_subnet_group : string prop;
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  hosted_zone_id : string prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  license_model : string prop;
  master_user_secret : master_user_secret list prop;
  master_username : string prop;
  max_allocated_storage : float prop;
  monitoring_interval : float prop;
  monitoring_role_arn : string prop;
  multi_az : bool prop;
  network_type : string prop;
  option_group_memberships : string list prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  replicate_source_db : string prop;
  resource_id : string prop;
  storage_encrypted : bool prop;
  storage_throughput : float prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  timezone : string prop;
  vpc_security_groups : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?db_instance_identifier:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?db_instance_identifier:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
