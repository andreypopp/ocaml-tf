(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ecrpublic_repository_policy

val aws_ecrpublic_repository_policy :
  ?id:string prop ->
  policy:string prop ->
  repository_name:string prop ->
  unit ->
  aws_ecrpublic_repository_policy

val yojson_of_aws_ecrpublic_repository_policy :
  aws_ecrpublic_repository_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  policy : string prop;
  registry_id : string prop;
  repository_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  policy:string prop ->
  repository_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  policy:string prop ->
  repository_name:string prop ->
  string ->
  t Tf_core.resource
