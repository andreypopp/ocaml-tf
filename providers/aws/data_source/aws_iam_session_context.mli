(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_session_context

val aws_iam_session_context :
  ?id:string prop ->
  arn:string prop ->
  unit ->
  aws_iam_session_context

val yojson_of_aws_iam_session_context :
  aws_iam_session_context -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  issuer_arn : string prop;
  issuer_id : string prop;
  issuer_name : string prop;
  session_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop -> arn:string prop -> string -> t Tf_core.resource
