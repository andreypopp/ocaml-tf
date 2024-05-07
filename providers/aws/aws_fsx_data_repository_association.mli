(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type s3__auto_export_policy

val s3__auto_export_policy :
  ?events:string prop list -> unit -> s3__auto_export_policy

type s3__auto_import_policy

val s3__auto_import_policy :
  ?events:string prop list -> unit -> s3__auto_import_policy

type s3

val s3 :
  ?auto_export_policy:s3__auto_export_policy list ->
  ?auto_import_policy:s3__auto_import_policy list ->
  unit ->
  s3

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_fsx_data_repository_association

val aws_fsx_data_repository_association :
  ?batch_import_meta_data_on_create:bool prop ->
  ?delete_data_in_filesystem:bool prop ->
  ?id:string prop ->
  ?imported_file_chunk_size:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?s3:s3 list ->
  ?timeouts:timeouts ->
  data_repository_path:string prop ->
  file_system_id:string prop ->
  file_system_path:string prop ->
  unit ->
  aws_fsx_data_repository_association

val yojson_of_aws_fsx_data_repository_association :
  aws_fsx_data_repository_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?batch_import_meta_data_on_create:bool prop ->
  ?delete_data_in_filesystem:bool prop ->
  ?id:string prop ->
  ?imported_file_chunk_size:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?s3:s3 list ->
  ?timeouts:timeouts ->
  data_repository_path:string prop ->
  file_system_id:string prop ->
  file_system_path:string prop ->
  string ->
  t

val make :
  ?batch_import_meta_data_on_create:bool prop ->
  ?delete_data_in_filesystem:bool prop ->
  ?id:string prop ->
  ?imported_file_chunk_size:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?s3:s3 list ->
  ?timeouts:timeouts ->
  data_repository_path:string prop ->
  file_system_id:string prop ->
  file_system_path:string prop ->
  string ->
  t Tf_core.resource
