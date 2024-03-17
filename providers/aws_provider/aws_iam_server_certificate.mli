(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_server_certificate

type t = private {
  arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  expiration : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  private_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  upload_date : string prop;
}

val aws_iam_server_certificate :
  ?certificate_chain:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  certificate_body:string prop ->
  private_key:string prop ->
  string ->
  t
