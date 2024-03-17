(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_resource_policy

type t = private {
  enable_hybrid : string prop;
  id : string prop;
  policy : string prop;
}

val aws_glue_resource_policy :
  ?enable_hybrid:string prop ->
  ?id:string prop ->
  policy:string prop ->
  string ->
  t
