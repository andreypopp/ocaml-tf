(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type selector

val selector :
  ?labels:(string * string prop) list ->
  namespace:string prop ->
  unit ->
  selector

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_eks_fargate_profile

val aws_eks_fargate_profile :
  ?id:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  fargate_profile_name:string prop ->
  pod_execution_role_arn:string prop ->
  selector:selector list ->
  unit ->
  aws_eks_fargate_profile

val yojson_of_aws_eks_fargate_profile :
  aws_eks_fargate_profile -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  fargate_profile_name:string prop ->
  pod_execution_role_arn:string prop ->
  selector:selector list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  fargate_profile_name:string prop ->
  pod_execution_role_arn:string prop ->
  selector:selector list ->
  string ->
  t Tf_core.resource
