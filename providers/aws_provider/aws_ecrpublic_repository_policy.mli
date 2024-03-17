(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecrpublic_repository_policy

type t = private {
  id : string prop;
  policy : string prop;
  registry_id : string prop;
  repository_name : string prop;
}

val aws_ecrpublic_repository_policy :
  ?id:string prop ->
  policy:string prop ->
  repository_name:string prop ->
  string ->
  t
