(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_acmpca_permission

val aws_acmpca_permission :
  ?id:string prop ->
  ?source_account:string prop ->
  actions:string prop list ->
  certificate_authority_arn:string prop ->
  principal:string prop ->
  unit ->
  aws_acmpca_permission

val yojson_of_aws_acmpca_permission : aws_acmpca_permission -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  actions : string list prop;
  certificate_authority_arn : string prop;
  id : string prop;
  policy : string prop;
  principal : string prop;
  source_account : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?source_account:string prop ->
  actions:string prop list ->
  certificate_authority_arn:string prop ->
  principal:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?source_account:string prop ->
  actions:string prop list ->
  certificate_authority_arn:string prop ->
  principal:string prop ->
  string ->
  t Tf_core.resource
