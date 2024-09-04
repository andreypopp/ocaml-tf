(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type compute_resources__ec2_configuration

val compute_resources__ec2_configuration :
  ?image_id_override:string prop ->
  ?image_type:string prop ->
  unit ->
  compute_resources__ec2_configuration

type compute_resources__launch_template

val compute_resources__launch_template :
  ?launch_template_id:string prop ->
  ?launch_template_name:string prop ->
  ?version:string prop ->
  unit ->
  compute_resources__launch_template

type compute_resources

val compute_resources :
  ?allocation_strategy:string prop ->
  ?bid_percentage:float prop ->
  ?desired_vcpus:float prop ->
  ?ec2_key_pair:string prop ->
  ?image_id:string prop ->
  ?instance_role:string prop ->
  ?instance_type:string prop list ->
  ?min_vcpus:float prop ->
  ?placement_group:string prop ->
  ?security_group_ids:string prop list ->
  ?spot_iam_fleet_role:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?ec2_configuration:compute_resources__ec2_configuration list ->
  ?launch_template:compute_resources__launch_template list ->
  max_vcpus:float prop ->
  subnets:string prop list ->
  type_:string prop ->
  unit ->
  compute_resources

type eks_configuration

val eks_configuration :
  eks_cluster_arn:string prop ->
  kubernetes_namespace:string prop ->
  unit ->
  eks_configuration

type update_policy

val update_policy :
  job_execution_timeout_minutes:float prop ->
  terminate_jobs_on_update:bool prop ->
  unit ->
  update_policy

type aws_batch_compute_environment

val aws_batch_compute_environment :
  ?compute_environment_name:string prop ->
  ?compute_environment_name_prefix:string prop ->
  ?id:string prop ->
  ?service_role:string prop ->
  ?state:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?compute_resources:compute_resources list ->
  ?eks_configuration:eks_configuration list ->
  ?update_policy:update_policy list ->
  type_:string prop ->
  unit ->
  aws_batch_compute_environment

val yojson_of_aws_batch_compute_environment :
  aws_batch_compute_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  compute_environment_name : string prop;
  compute_environment_name_prefix : string prop;
  ecs_cluster_arn : string prop;
  id : string prop;
  service_role : string prop;
  state : string prop;
  status : string prop;
  status_reason : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?compute_environment_name:string prop ->
  ?compute_environment_name_prefix:string prop ->
  ?id:string prop ->
  ?service_role:string prop ->
  ?state:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?compute_resources:compute_resources list ->
  ?eks_configuration:eks_configuration list ->
  ?update_policy:update_policy list ->
  type_:string prop ->
  string ->
  t

val make :
  ?compute_environment_name:string prop ->
  ?compute_environment_name_prefix:string prop ->
  ?id:string prop ->
  ?service_role:string prop ->
  ?state:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?compute_resources:compute_resources list ->
  ?eks_configuration:eks_configuration list ->
  ?update_policy:update_policy list ->
  type_:string prop ->
  string ->
  t Tf_core.resource
