(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type data_repository_association__nfs

val data_repository_association__nfs :
  ?dns_ips:string prop list ->
  version:string prop ->
  unit ->
  data_repository_association__nfs

type data_repository_association

val data_repository_association :
  ?data_repository_subdirectories:string prop list ->
  ?tags:(string * string prop) list ->
  data_repository_path:string prop ->
  file_cache_path:string prop ->
  nfs:data_repository_association__nfs list ->
  unit ->
  data_repository_association

type lustre_configuration__log_configuration = {
  destination : string prop;  (** destination *)
  level : string prop;  (** level *)
}

type lustre_configuration__metadata_configuration

val lustre_configuration__metadata_configuration :
  storage_capacity:float prop ->
  unit ->
  lustre_configuration__metadata_configuration

type lustre_configuration

val lustre_configuration :
  ?weekly_maintenance_start_time:string prop ->
  deployment_type:string prop ->
  per_unit_storage_throughput:float prop ->
  metadata_configuration:
    lustre_configuration__metadata_configuration list ->
  unit ->
  lustre_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_fsx_file_cache

val aws_fsx_file_cache :
  ?copy_tags_to_data_repository_associations:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  file_cache_type:string prop ->
  file_cache_type_version:string prop ->
  storage_capacity:float prop ->
  subnet_ids:string prop list ->
  data_repository_association:data_repository_association list ->
  lustre_configuration:lustre_configuration list ->
  unit ->
  aws_fsx_file_cache

val yojson_of_aws_fsx_file_cache : aws_fsx_file_cache -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  copy_tags_to_data_repository_associations : bool prop;
  data_repository_association_ids : string list prop;
  dns_name : string prop;
  file_cache_id : string prop;
  file_cache_type : string prop;
  file_cache_type_version : string prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  security_group_ids : string list prop;
  storage_capacity : float prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?copy_tags_to_data_repository_associations:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  file_cache_type:string prop ->
  file_cache_type_version:string prop ->
  storage_capacity:float prop ->
  subnet_ids:string prop list ->
  data_repository_association:data_repository_association list ->
  lustre_configuration:lustre_configuration list ->
  string ->
  t
