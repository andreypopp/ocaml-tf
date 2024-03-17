(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedpermissions_policy_store__validation_settings
type aws_verifiedpermissions_policy_store

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  policy_store_id : string prop;
}

val aws_verifiedpermissions_policy_store :
  ?description:string prop ->
  validation_settings:
    aws_verifiedpermissions_policy_store__validation_settings list ->
  string ->
  t
