(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ses_receipt_filter

val aws_ses_receipt_filter :
  ?id:string prop ->
  cidr:string prop ->
  name:string prop ->
  policy:string prop ->
  unit ->
  aws_ses_receipt_filter

val yojson_of_aws_ses_receipt_filter : aws_ses_receipt_filter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  cidr : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cidr:string prop ->
  name:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cidr:string prop ->
  name:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
