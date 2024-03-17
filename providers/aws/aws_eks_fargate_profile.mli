(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_fargate_profile__selector
type aws_eks_fargate_profile__timeouts
type aws_eks_fargate_profile

type t = private {
  arn : string prop;
  cluster_name : string prop;
  fargate_profile_name : string prop;
  id : string prop;
  pod_execution_role_arn : string prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_eks_fargate_profile :
  ?id:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_eks_fargate_profile__timeouts ->
  cluster_name:string prop ->
  fargate_profile_name:string prop ->
  pod_execution_role_arn:string prop ->
  selector:aws_eks_fargate_profile__selector list ->
  string ->
  t
