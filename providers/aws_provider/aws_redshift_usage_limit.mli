(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_usage_limit

val aws_redshift_usage_limit :
  ?breach_action:string ->
  ?period:string ->
  ?tags:(string * string) list ->
  amount:float ->
  cluster_identifier:string ->
  feature_type:string ->
  limit_type:string ->
  string ->
  unit
