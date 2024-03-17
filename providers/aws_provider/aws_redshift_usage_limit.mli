(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  string ->
  unit
