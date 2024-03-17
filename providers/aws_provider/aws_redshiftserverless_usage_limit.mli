(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshiftserverless_usage_limit

type t = private {
  amount : float prop;
  arn : string prop;
  breach_action : string prop;
  id : string prop;
  period : string prop;
  resource_arn : string prop;
  usage_type : string prop;
}

val aws_redshiftserverless_usage_limit :
  ?breach_action:string prop ->
  ?id:string prop ->
  ?period:string prop ->
  amount:float prop ->
  resource_arn:string prop ->
  usage_type:string prop ->
  string ->
  t
