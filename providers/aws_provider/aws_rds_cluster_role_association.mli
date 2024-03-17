(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_cluster_role_association__timeouts
type aws_rds_cluster_role_association

val aws_rds_cluster_role_association :
  ?id:string ->
  ?timeouts:aws_rds_cluster_role_association__timeouts ->
  db_cluster_identifier:string ->
  feature_name:string ->
  role_arn:string ->
  string ->
  unit
