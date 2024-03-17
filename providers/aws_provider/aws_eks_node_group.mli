(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_node_group__launch_template
type aws_eks_node_group__remote_access
type aws_eks_node_group__scaling_config
type aws_eks_node_group__taint
type aws_eks_node_group__timeouts
type aws_eks_node_group__update_config

type aws_eks_node_group__resources__autoscaling_groups = {
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_eks_node_group__resources = {
  autoscaling_groups :
    aws_eks_node_group__resources__autoscaling_groups list;
      (** autoscaling_groups *)
  remote_access_security_group_id : string;
      (** remote_access_security_group_id *)
}
[@@deriving yojson_of]

type aws_eks_node_group

val aws_eks_node_group :
  ?force_update_version:bool ->
  ?labels:(string * string) list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_eks_node_group__timeouts ->
  cluster_name:string ->
  node_role_arn:string ->
  subnet_ids:string list ->
  launch_template:aws_eks_node_group__launch_template list ->
  remote_access:aws_eks_node_group__remote_access list ->
  scaling_config:aws_eks_node_group__scaling_config list ->
  taint:aws_eks_node_group__taint list ->
  update_config:aws_eks_node_group__update_config list ->
  string ->
  unit
