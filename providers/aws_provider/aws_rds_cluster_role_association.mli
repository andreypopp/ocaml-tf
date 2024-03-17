(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_cluster_role_association__timeouts
type aws_rds_cluster_role_association

val aws_rds_cluster_role_association :
  ?id:string prop ->
  ?timeouts:aws_rds_cluster_role_association__timeouts ->
  db_cluster_identifier:string prop ->
  feature_name:string prop ->
  role_arn:string prop ->
  string ->
  unit
