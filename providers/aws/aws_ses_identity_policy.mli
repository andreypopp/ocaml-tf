(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ses_identity_policy

val aws_ses_identity_policy :
  ?id:string prop ->
  identity:string prop ->
  name:string prop ->
  policy:string prop ->
  unit ->
  aws_ses_identity_policy

val yojson_of_aws_ses_identity_policy :
  aws_ses_identity_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  identity : string prop;
  name : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  identity:string prop ->
  name:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  identity:string prop ->
  name:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
