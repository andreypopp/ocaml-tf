(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_file_cache__data_repository_association__nfs
type aws_fsx_file_cache__data_repository_association
type aws_fsx_file_cache__lustre_configuration__metadata_configuration

type aws_fsx_file_cache__lustre_configuration__log_configuration = {
  destination : string prop;  (** destination *)
  level : string prop;  (** level *)
}

type aws_fsx_file_cache__lustre_configuration
type aws_fsx_file_cache__timeouts
type aws_fsx_file_cache

val aws_fsx_file_cache :
  ?copy_tags_to_data_repository_associations:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_fsx_file_cache__timeouts ->
  file_cache_type:string prop ->
  file_cache_type_version:string prop ->
  storage_capacity:float prop ->
  subnet_ids:string prop list ->
  data_repository_association:
    aws_fsx_file_cache__data_repository_association list ->
  lustre_configuration:aws_fsx_file_cache__lustre_configuration list ->
  string ->
  unit
