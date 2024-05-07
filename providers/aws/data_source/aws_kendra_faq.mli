(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type s3_path = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}

type aws_kendra_faq

val aws_kendra_faq :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  faq_id:string prop ->
  index_id:string prop ->
  unit ->
  aws_kendra_faq

val yojson_of_aws_kendra_faq : aws_kendra_faq -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_at : string prop;
  description : string prop;
  error_message : string prop;
  faq_id : string prop;
  file_format : string prop;
  id : string prop;
  index_id : string prop;
  language_code : string prop;
  name : string prop;
  role_arn : string prop;
  s3_path : s3_path list prop;
  status : string prop;
  tags : (string * string) list prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  faq_id:string prop ->
  index_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  faq_id:string prop ->
  index_id:string prop ->
  string ->
  t Tf_core.resource
