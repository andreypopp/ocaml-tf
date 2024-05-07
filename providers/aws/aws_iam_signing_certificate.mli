(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_signing_certificate

val aws_iam_signing_certificate :
  ?id:string prop ->
  ?status:string prop ->
  certificate_body:string prop ->
  user_name:string prop ->
  unit ->
  aws_iam_signing_certificate

val yojson_of_aws_iam_signing_certificate :
  aws_iam_signing_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_body : string prop;
  certificate_id : string prop;
  id : string prop;
  status : string prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?status:string prop ->
  certificate_body:string prop ->
  user_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?status:string prop ->
  certificate_body:string prop ->
  user_name:string prop ->
  string ->
  t Tf_core.resource
