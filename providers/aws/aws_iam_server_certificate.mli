(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_iam_server_certificate

val aws_iam_server_certificate :
  ?certificate_chain:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  certificate_body:string prop ->
  private_key:string prop ->
  unit ->
  aws_iam_server_certificate

val yojson_of_aws_iam_server_certificate :
  aws_iam_server_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  expiration : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  private_key : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  upload_date : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_chain:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  certificate_body:string prop ->
  private_key:string prop ->
  string ->
  t

val make :
  ?certificate_chain:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  certificate_body:string prop ->
  private_key:string prop ->
  string ->
  t Tf_core.resource
