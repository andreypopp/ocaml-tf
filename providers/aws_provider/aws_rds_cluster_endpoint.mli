(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_cluster_endpoint

val aws_rds_cluster_endpoint :
  ?excluded_members:string prop list ->
  ?id:string prop ->
  ?static_members:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  cluster_endpoint_identifier:string prop ->
  cluster_identifier:string prop ->
  custom_endpoint_type:string prop ->
  string ->
  unit
