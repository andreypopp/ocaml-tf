(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_schemas_registry_policy

val aws_schemas_registry_policy :
  ?id:string prop ->
  policy:string prop ->
  registry_name:string prop ->
  unit ->
  aws_schemas_registry_policy

val yojson_of_aws_schemas_registry_policy :
  aws_schemas_registry_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  policy : string prop;
  registry_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  policy:string prop ->
  registry_name:string prop ->
  string ->
  t
