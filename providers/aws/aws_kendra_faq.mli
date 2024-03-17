(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kendra_faq__s3_path
type aws_kendra_faq__timeouts
type aws_kendra_faq

type t = private {
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

val aws_kendra_faq :
  ?description:string prop ->
  ?file_format:string prop ->
  ?id:string prop ->
  ?language_code:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_kendra_faq__timeouts ->
  index_id:string prop ->
  name:string prop ->
  role_arn:string prop ->
  s3_path:aws_kendra_faq__s3_path list ->
  string ->
  t
