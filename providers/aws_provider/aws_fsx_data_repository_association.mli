(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_data_repository_association__s3__auto_export_policy
type aws_fsx_data_repository_association__s3__auto_import_policy
type aws_fsx_data_repository_association__s3
type aws_fsx_data_repository_association__timeouts
type aws_fsx_data_repository_association

type t = private {
  arn : string prop;
  association_id : string prop;
  batch_import_meta_data_on_create : bool prop;
  data_repository_path : string prop;
  delete_data_in_filesystem : bool prop;
  file_system_id : string prop;
  file_system_path : string prop;
  id : string prop;
  imported_file_chunk_size : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_fsx_data_repository_association :
  ?batch_import_meta_data_on_create:bool prop ->
  ?delete_data_in_filesystem:bool prop ->
  ?id:string prop ->
  ?imported_file_chunk_size:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_fsx_data_repository_association__timeouts ->
  data_repository_path:string prop ->
  file_system_id:string prop ->
  file_system_path:string prop ->
  s3:aws_fsx_data_repository_association__s3 list ->
  string ->
  t
