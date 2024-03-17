(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_cluster_endpoint

val aws_rds_cluster_endpoint :
  ?excluded_members:string list ->
  ?id:string ->
  ?static_members:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  cluster_endpoint_identifier:string ->
  cluster_identifier:string ->
  custom_endpoint_type:string ->
  string ->
  unit
