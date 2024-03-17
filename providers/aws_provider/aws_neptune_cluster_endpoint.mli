(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_cluster_endpoint

val aws_neptune_cluster_endpoint :
  ?excluded_members:string list ->
  ?static_members:string list ->
  ?tags:(string * string) list ->
  cluster_endpoint_identifier:string ->
  cluster_identifier:string ->
  endpoint_type:string ->
  string ->
  unit
