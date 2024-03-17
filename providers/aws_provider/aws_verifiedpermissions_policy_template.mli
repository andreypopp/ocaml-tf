(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedpermissions_policy_template

type t = private {
  created_date : string prop;
  description : string prop;
  id : string prop;
  policy_store_id : string prop;
  policy_template_id : string prop;
  statement : string prop;
}

val aws_verifiedpermissions_policy_template :
  ?description:string prop ->
  policy_store_id:string prop ->
  statement:string prop ->
  string ->
  t
