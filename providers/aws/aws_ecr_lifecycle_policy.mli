(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecr_lifecycle_policy

type t = private {
  id : string prop;
  policy : string prop;
  registry_id : string prop;
  repository : string prop;
}

val aws_ecr_lifecycle_policy :
  ?id:string prop ->
  policy:string prop ->
  repository:string prop ->
  string ->
  t
