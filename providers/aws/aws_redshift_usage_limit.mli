(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_usage_limit

val aws_redshift_usage_limit :
  ?breach_action:string prop ->
  ?id:string prop ->
  ?period:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  amount:float prop ->
  cluster_identifier:string prop ->
  feature_type:string prop ->
  limit_type:string prop ->
  unit ->
  aws_redshift_usage_limit

val yojson_of_aws_redshift_usage_limit :
  aws_redshift_usage_limit -> json

(** RESOURCE REGISTRATION *)

type t = private {
  amount : float prop;
  arn : string prop;
  breach_action : string prop;
  cluster_identifier : string prop;
  feature_type : string prop;
  id : string prop;
  limit_type : string prop;
  period : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?breach_action:string prop ->
  ?id:string prop ->
  ?period:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  amount:float prop ->
  cluster_identifier:string prop ->
  feature_type:string prop ->
  limit_type:string prop ->
  string ->
  t

val make :
  ?breach_action:string prop ->
  ?id:string prop ->
  ?period:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  amount:float prop ->
  cluster_identifier:string prop ->
  feature_type:string prop ->
  limit_type:string prop ->
  string ->
  t Tf_core.resource
