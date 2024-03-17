(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_node_group__launch_template
type aws_eks_node_group__remote_access
type aws_eks_node_group__scaling_config
type aws_eks_node_group__taint
type aws_eks_node_group__timeouts
type aws_eks_node_group__update_config

type aws_eks_node_group__resources__autoscaling_groups = {
  name : string prop;  (** name *)
}

type aws_eks_node_group__resources = {
  autoscaling_groups :
    aws_eks_node_group__resources__autoscaling_groups list;
      (** autoscaling_groups *)
  remote_access_security_group_id : string prop;
      (** remote_access_security_group_id *)
}

type aws_eks_node_group

type t = private {
  ami_type : string prop;
  arn : string prop;
  capacity_type : string prop;
  cluster_name : string prop;
  disk_size : float prop;
  force_update_version : bool prop;
  id : string prop;
  instance_types : string list prop;
  labels : (string * string) list prop;
  node_group_name : string prop;
  node_group_name_prefix : string prop;
  node_role_arn : string prop;
  release_version : string prop;
  resources : aws_eks_node_group__resources list prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

val aws_eks_node_group :
  ?ami_type:string prop ->
  ?capacity_type:string prop ->
  ?disk_size:float prop ->
  ?force_update_version:bool prop ->
  ?id:string prop ->
  ?instance_types:string prop list ->
  ?labels:(string * string prop) list ->
  ?node_group_name:string prop ->
  ?node_group_name_prefix:string prop ->
  ?release_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?version:string prop ->
  ?timeouts:aws_eks_node_group__timeouts ->
  cluster_name:string prop ->
  node_role_arn:string prop ->
  subnet_ids:string prop list ->
  launch_template:aws_eks_node_group__launch_template list ->
  remote_access:aws_eks_node_group__remote_access list ->
  scaling_config:aws_eks_node_group__scaling_config list ->
  taint:aws_eks_node_group__taint list ->
  update_config:aws_eks_node_group__update_config list ->
  string ->
  t
