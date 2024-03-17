(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_cluster_iam_roles__timeouts
type aws_redshift_cluster_iam_roles

val aws_redshift_cluster_iam_roles :
  ?default_iam_role_arn:string ->
  ?iam_role_arns:string list ->
  ?id:string ->
  ?timeouts:aws_redshift_cluster_iam_roles__timeouts ->
  cluster_identifier:string ->
  string ->
  unit
