(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_fargate_profile__selector
type aws_eks_fargate_profile__timeouts
type aws_eks_fargate_profile

val aws_eks_fargate_profile :
  ?subnet_ids:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_eks_fargate_profile__timeouts ->
  cluster_name:string ->
  fargate_profile_name:string ->
  pod_execution_role_arn:string ->
  selector:aws_eks_fargate_profile__selector list ->
  string ->
  unit
