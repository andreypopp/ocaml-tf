(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshiftserverless_usage_limit

val aws_redshiftserverless_usage_limit :
  ?breach_action:string prop ->
  ?id:string prop ->
  ?period:string prop ->
  amount:float prop ->
  resource_arn:string prop ->
  usage_type:string prop ->
  unit ->
  aws_redshiftserverless_usage_limit

val yojson_of_aws_redshiftserverless_usage_limit :
  aws_redshiftserverless_usage_limit -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  amount : float prop;
  arn : string prop;
  breach_action : string prop;
  id : string prop;
  period : string prop;
  resource_arn : string prop;
  usage_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?breach_action:string prop ->
  ?id:string prop ->
  ?period:string prop ->
  amount:float prop ->
  resource_arn:string prop ->
  usage_type:string prop ->
  string ->
  t

val make :
  ?breach_action:string prop ->
  ?id:string prop ->
  ?period:string prop ->
  amount:float prop ->
  resource_arn:string prop ->
  usage_type:string prop ->
  string ->
  t Tf_core.resource
