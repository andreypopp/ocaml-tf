(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_schemas_registry_policy

type t = private {
  id : string prop;
  policy : string prop;
  registry_name : string prop;
}

val aws_schemas_registry_policy :
  ?id:string prop ->
  policy:string prop ->
  registry_name:string prop ->
  string ->
  t
