(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type source_s3_path = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}

type aws_kendra_thesaurus

val aws_kendra_thesaurus :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  index_id:string prop ->
  thesaurus_id:string prop ->
  unit ->
  aws_kendra_thesaurus

val yojson_of_aws_kendra_thesaurus : aws_kendra_thesaurus -> json

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
  name : string prop;
  role_arn : string prop;
  source_s3_path : source_s3_path list prop;
  status : string prop;
  synonym_rule_count : float prop;
  tags : string Tf_core.assoc prop;
  term_count : float prop;
  thesaurus_id : string prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  index_id:string prop ->
  thesaurus_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  index_id:string prop ->
  thesaurus_id:string prop ->
  string ->
  t Tf_core.resource
