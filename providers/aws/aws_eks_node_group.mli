(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type resources__autoscaling_groups = {
  name : string prop;  (** name *)
}

type resources = {
  autoscaling_groups : resources__autoscaling_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** autoscaling_groups *)
  remote_access_security_group_id : string prop;
      (** remote_access_security_group_id *)
}

type launch_template

val launch_template :
  ?id:string prop ->
  ?name:string prop ->
  version:string prop ->
  unit ->
  launch_template

type remote_access

val remote_access :
  ?ec2_ssh_key:string prop ->
  ?source_security_group_ids:string prop list ->
  unit ->
  remote_access

type scaling_config

val scaling_config :
  desired_size:float prop ->
  max_size:float prop ->
  min_size:float prop ->
  unit ->
  scaling_config

type taint

val taint :
  ?value:string prop ->
  effect:string prop ->
  key:string prop ->
  unit ->
  taint

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type update_config

val update_config :
  ?max_unavailable:float prop ->
  ?max_unavailable_percentage:float prop ->
  unit ->
  update_config

type aws_eks_node_group

val aws_eks_node_group :
  ?ami_type:string prop ->
  ?capacity_type:string prop ->
  ?disk_size:float prop ->
  ?force_update_version:bool prop ->
  ?id:string prop ->
  ?instance_types:string prop list ->
  ?labels:string prop Tf_core.assoc ->
  ?node_group_name:string prop ->
  ?node_group_name_prefix:string prop ->
  ?release_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?launch_template:launch_template list ->
  ?remote_access:remote_access list ->
  ?timeouts:timeouts ->
  ?update_config:update_config list ->
  cluster_name:string prop ->
  node_role_arn:string prop ->
  subnet_ids:string prop list ->
  scaling_config:scaling_config list ->
  taint:taint list ->
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
  force_update_version : bool prop;
  id : string prop;
  instance_types : string list prop;
  labels : string Tf_core.assoc prop;
  node_group_name : string prop;
  node_group_name_prefix : string prop;
  node_role_arn : string prop;
  release_version : string prop;
  resources : resources list prop;
  status : string prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?ami_type:string prop ->
  ?capacity_type:string prop ->
  ?disk_size:float prop ->
  ?force_update_version:bool prop ->
  ?id:string prop ->
  ?instance_types:string prop list ->
  ?labels:string prop Tf_core.assoc ->
  ?node_group_name:string prop ->
  ?node_group_name_prefix:string prop ->
  ?release_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?launch_template:launch_template list ->
  ?remote_access:remote_access list ->
  ?timeouts:timeouts ->
  ?update_config:update_config list ->
  cluster_name:string prop ->
  node_role_arn:string prop ->
  subnet_ids:string prop list ->
  scaling_config:scaling_config list ->
  taint:taint list ->
  string ->
  t

val make :
  ?ami_type:string prop ->
  ?capacity_type:string prop ->
  ?disk_size:float prop ->
  ?force_update_version:bool prop ->
  ?id:string prop ->
  ?instance_types:string prop list ->
  ?labels:string prop Tf_core.assoc ->
  ?node_group_name:string prop ->
  ?node_group_name_prefix:string prop ->
  ?release_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?launch_template:launch_template list ->
  ?remote_access:remote_access list ->
  ?timeouts:timeouts ->
  ?update_config:update_config list ->
  cluster_name:string prop ->
  node_role_arn:string prop ->
  subnet_ids:string prop list ->
  scaling_config:scaling_config list ->
  taint:taint list ->
  string ->
  t Tf_core.resource
