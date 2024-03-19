(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_verifiedpermissions_policy_template

val aws_verifiedpermissions_policy_template :
  ?description:string prop ->
  policy_store_id:string prop ->
  statement:string prop ->
  unit ->
  aws_verifiedpermissions_policy_template

val yojson_of_aws_verifiedpermissions_policy_template :
  aws_verifiedpermissions_policy_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_date : string prop;
  description : string prop;
  id : string prop;
  policy_store_id : string prop;
  policy_template_id : string prop;
  statement : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  policy_store_id:string prop ->
  statement:string prop ->
  string ->
  t
