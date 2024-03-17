(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_signing_certificate

type t = private {
  certificate_body : string prop;
  certificate_id : string prop;
  id : string prop;
  status : string prop;
  user_name : string prop;
}

val aws_iam_signing_certificate :
  ?id:string prop ->
  ?status:string prop ->
  certificate_body:string prop ->
  user_name:string prop ->
  string ->
  t
