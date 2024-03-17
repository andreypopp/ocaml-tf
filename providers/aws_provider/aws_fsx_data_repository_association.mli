(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_data_repository_association__s3__auto_export_policy
type aws_fsx_data_repository_association__s3__auto_import_policy
type aws_fsx_data_repository_association__s3
type aws_fsx_data_repository_association__timeouts
type aws_fsx_data_repository_association

val aws_fsx_data_repository_association :
  ?batch_import_meta_data_on_create:bool ->
  ?delete_data_in_filesystem:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_fsx_data_repository_association__timeouts ->
  data_repository_path:string ->
  file_system_id:string ->
  file_system_path:string ->
  s3:aws_fsx_data_repository_association__s3 list ->
  string ->
  unit
