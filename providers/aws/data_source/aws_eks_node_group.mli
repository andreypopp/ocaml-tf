(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type launch_template = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  version : string prop;  (** version *)
}

type remote_access = {
  ec2_ssh_key : string prop;  (** ec2_ssh_key *)
  source_security_group_ids : string prop list;
      (** source_security_group_ids *)
}

type resources__autoscaling_groups = {
  name : string prop;  (** name *)
}

type resources = {
  autoscaling_groups : resources__autoscaling_groups list;
      (** autoscaling_groups *)
  remote_access_security_group_id : string prop;
      (** remote_access_security_group_id *)
}

type scaling_config = {
  desired_size : float prop;  (** desired_size *)
  max_size : float prop;  (** max_size *)
  min_size : float prop;  (** min_size *)
}

type taints = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type aws_eks_node_group

val aws_eks_node_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_name:string prop ->
  node_group_name:string prop ->
  unit ->
  aws_eks_node_group

val yojson_of_aws_eks_node_group : aws_eks_node_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  ami_type : string prop;
  arn : string prop;
  capacity_type : string prop;
  cluster_name : string prop;
  disk_size : float prop;
  id : string prop;
  instance_types : string list prop;
  labels : (string * string) list prop;
  launch_template : launch_template list prop;
  node_group_name : string prop;
  node_role_arn : string prop;
  release_version : string prop;
  remote_access : remote_access list prop;
  resources : resources list prop;
  scaling_config : scaling_config list prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  taints : taints list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_name:string prop ->
  node_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_name:string prop ->
  node_group_name:string prop ->
  string ->
  t Tf_core.resource
