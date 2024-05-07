(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type source_s3_path = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}

type aws_kendra_query_suggestions_block_list

val aws_kendra_query_suggestions_block_list :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  index_id:string prop ->
  query_suggestions_block_list_id:string prop ->
  unit ->
  aws_kendra_query_suggestions_block_list

val yojson_of_aws_kendra_query_suggestions_block_list :
  aws_kendra_query_suggestions_block_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_at : string prop;
  description : string prop;
  error_message : string prop;
  file_size_bytes : float prop;
  id : string prop;
  index_id : string prop;
  item_count : float prop;
  name : string prop;
  query_suggestions_block_list_id : string prop;
  role_arn : string prop;
  source_s3_path : source_s3_path list prop;
  status : string prop;
  tags : (string * string) list prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  index_id:string prop ->
  query_suggestions_block_list_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  index_id:string prop ->
  query_suggestions_block_list_id:string prop ->
  string ->
  t Tf_core.resource
