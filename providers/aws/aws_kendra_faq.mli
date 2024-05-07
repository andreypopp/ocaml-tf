(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type s3_path

val s3_path :
  bucket:string prop -> key:string prop -> unit -> s3_path

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_kendra_faq

val aws_kendra_faq :
  ?description:string prop ->
  ?file_format:string prop ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  s3_path:s3_path list ->
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
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?file_format:string prop ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  s3_path:s3_path list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?file_format:string prop ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  s3_path:s3_path list ->
  string ->
  t Tf_core.resource
