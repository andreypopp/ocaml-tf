(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_file_cache__data_repository_association__nfs
type aws_fsx_file_cache__data_repository_association
type aws_fsx_file_cache__lustre_configuration__metadata_configuration

type aws_fsx_file_cache__lustre_configuration__log_configuration = {
  destination : string;  (** destination *)
  level : string;  (** level *)
}

type aws_fsx_file_cache__lustre_configuration
type aws_fsx_file_cache__timeouts
type aws_fsx_file_cache

val aws_fsx_file_cache :
  ?copy_tags_to_data_repository_associations:bool ->
  ?id:string ->
  ?kms_key_id:string ->
  ?security_group_ids:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_fsx_file_cache__timeouts ->
  file_cache_type:string ->
  file_cache_type_version:string ->
  storage_capacity:float ->
  subnet_ids:string list ->
  data_repository_association:
    aws_fsx_file_cache__data_repository_association list ->
  lustre_configuration:aws_fsx_file_cache__lustre_configuration list ->
  string ->
  unit
