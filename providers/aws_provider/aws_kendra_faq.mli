(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kendra_faq__s3_path
type aws_kendra_faq__timeouts
type aws_kendra_faq

val aws_kendra_faq :
  ?description:string ->
  ?file_format:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_kendra_faq__timeouts ->
  index_id:string ->
  name:string ->
  role_arn:string ->
  s3_path:aws_kendra_faq__s3_path list ->
  string ->
  unit
