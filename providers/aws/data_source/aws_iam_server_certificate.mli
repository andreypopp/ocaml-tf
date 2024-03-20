(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_server_certificate

val aws_iam_server_certificate :
  ?id:string prop ->
  ?latest:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path_prefix:string prop ->
  unit ->
  aws_iam_server_certificate

val yojson_of_aws_iam_server_certificate :
  aws_iam_server_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  expiration_date : string prop;
  id : string prop;
  latest : bool prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  path_prefix : string prop;
  upload_date : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?latest:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path_prefix:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?latest:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path_prefix:string prop ->
  string ->
  t Tf_core.resource
