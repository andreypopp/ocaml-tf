(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type definition

val definition : value:string prop -> unit -> definition

type aws_verifiedpermissions_schema

val aws_verifiedpermissions_schema :
  policy_store_id:string prop ->
  definition:definition ->
  unit ->
  aws_verifiedpermissions_schema

val yojson_of_aws_verifiedpermissions_schema :
  aws_verifiedpermissions_schema -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  namespaces : string list prop;
  policy_store_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  policy_store_id:string prop ->
  definition:definition ->
  string ->
  t
