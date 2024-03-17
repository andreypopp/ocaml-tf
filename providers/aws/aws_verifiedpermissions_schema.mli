(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedpermissions_schema__definition
type aws_verifiedpermissions_schema

type t = private {
  id : string prop;
  namespaces : string list prop;
  policy_store_id : string prop;
}

val aws_verifiedpermissions_schema :
  policy_store_id:string prop ->
  definition:aws_verifiedpermissions_schema__definition ->
  string ->
  t
