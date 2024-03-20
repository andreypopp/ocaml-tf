(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type eks_properties__pod_properties__volumes__secret = {
  optional : bool prop;  (** optional *)
  secret_name : string prop;  (** secret_name *)
}

type eks_properties__pod_properties__volumes__host_path = {
  path : string prop;  (** path *)
}

type eks_properties__pod_properties__volumes__empty_dir = {
  medium : string prop;  (** medium *)
  size_limit : string prop;  (** size_limit *)
}

type eks_properties__pod_properties__volumes = {
  empty_dir :
    eks_properties__pod_properties__volumes__empty_dir list;
      (** empty_dir *)
  host_path :
    eks_properties__pod_properties__volumes__host_path list;
      (** host_path *)
  name : string prop;  (** name *)
  secret : eks_properties__pod_properties__volumes__secret list;
      (** secret *)
}

type eks_properties__pod_properties__metadata = {
  labels : (string * string prop) list;  (** labels *)
}

type eks_properties__pod_properties__containers__volume_mounts = {
  mount_path : string prop;  (** mount_path *)
  name : string prop;  (** name *)
  read_only : bool prop;  (** read_only *)
}

type eks_properties__pod_properties__containers__security_context = {
  privileged : bool prop;  (** privileged *)
  read_only_root_file_system : bool prop;
      (** read_only_root_file_system *)
  run_as_group : float prop;  (** run_as_group *)
  run_as_non_root : bool prop;  (** run_as_non_root *)
  run_as_user : float prop;  (** run_as_user *)
}

type eks_properties__pod_properties__containers__resources = {
  limits : (string * string prop) list;  (** limits *)
  requests : (string * string prop) list;  (** requests *)
}

type eks_properties__pod_properties__containers__env = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type eks_properties__pod_properties__containers = {
  args : string prop list;  (** args *)
  command : string prop list;  (** command *)
  env : eks_properties__pod_properties__containers__env list;
      (** env *)
  image : string prop;  (** image *)
  image_pull_policy : string prop;  (** image_pull_policy *)
  name : string prop;  (** name *)
  resources :
    eks_properties__pod_properties__containers__resources list;
      (** resources *)
  security_context :
    eks_properties__pod_properties__containers__security_context list;
      (** security_context *)
  volume_mounts :
    eks_properties__pod_properties__containers__volume_mounts list;
      (** volume_mounts *)
}

type eks_properties__pod_properties = {
  containers : eks_properties__pod_properties__containers list;
      (** containers *)
  dns_policy : string prop;  (** dns_policy *)
  host_network : bool prop;  (** host_network *)
  metadata : eks_properties__pod_properties__metadata list;
      (** metadata *)
  service_account_name : bool prop;  (** service_account_name *)
  volumes : eks_properties__pod_properties__volumes list;
      (** volumes *)
}

type eks_properties = {
  pod_properties : eks_properties__pod_properties list;
      (** pod_properties *)
}

type node_properties__node_range_properties__container__volumes__host = {
  source_path : string prop;  (** source_path *)
}

type node_properties__node_range_properties__container__volumes__efs_volume_configuration__authorization_config = {
  access_point_id : string prop;  (** access_point_id *)
  iam : string prop;  (** iam *)
}

type node_properties__node_range_properties__container__volumes__efs_volume_configuration = {
  authorization_config :
    node_properties__node_range_properties__container__volumes__efs_volume_configuration__authorization_config
    list;
      (** authorization_config *)
  file_system_id : string prop;  (** file_system_id *)
  root_directory : string prop;  (** root_directory *)
  transit_encryption : string prop;  (** transit_encryption *)
  transit_encryption_port : float prop;
      (** transit_encryption_port *)
}

type node_properties__node_range_properties__container__volumes = {
  efs_volume_configuration :
    node_properties__node_range_properties__container__volumes__efs_volume_configuration
    list;
      (** efs_volume_configuration *)
  host :
    node_properties__node_range_properties__container__volumes__host
    list;
      (** host *)
  name : string prop;  (** name *)
}

type node_properties__node_range_properties__container__ulimits = {
  hard_limit : float prop;  (** hard_limit *)
  name : string prop;  (** name *)
  soft_limit : float prop;  (** soft_limit *)
}

type node_properties__node_range_properties__container__secrets = {
  name : string prop;  (** name *)
  value_from : string prop;  (** value_from *)
}

type node_properties__node_range_properties__container__runtime_platform = {
  cpu_architecture : string prop;  (** cpu_architecture *)
  operating_system_family : string prop;
      (** operating_system_family *)
}

type node_properties__node_range_properties__container__resource_requirements = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type node_properties__node_range_properties__container__network_configuration = {
  assign_public_ip : bool prop;  (** assign_public_ip *)
}

type node_properties__node_range_properties__container__mount_points = {
  container_path : string prop;  (** container_path *)
  read_only : bool prop;  (** read_only *)
  source_volume : string prop;  (** source_volume *)
}

type node_properties__node_range_properties__container__log_configuration__secret_options = {
  name : string prop;  (** name *)
  value_from : string prop;  (** value_from *)
}

type node_properties__node_range_properties__container__log_configuration = {
  log_driver : string prop;  (** log_driver *)
  options : (string * string prop) list;  (** options *)
  secret_options :
    node_properties__node_range_properties__container__log_configuration__secret_options
    list;
      (** secret_options *)
}

type node_properties__node_range_properties__container__linux_parameters__tmpfs = {
  container_path : string prop;  (** container_path *)
  mount_options : string prop list;  (** mount_options *)
  size : float prop;  (** size *)
}

type node_properties__node_range_properties__container__linux_parameters__devices = {
  container_path : string prop;  (** container_path *)
  host_path : string prop;  (** host_path *)
  permissions : string prop list;  (** permissions *)
}

type node_properties__node_range_properties__container__linux_parameters = {
  devices :
    node_properties__node_range_properties__container__linux_parameters__devices
    list;
      (** devices *)
  init_process_enabled : bool prop;  (** init_process_enabled *)
  max_swap : float prop;  (** max_swap *)
  shared_memory_size : float prop;  (** shared_memory_size *)
  swappiness : float prop;  (** swappiness *)
  tmpfs :
    node_properties__node_range_properties__container__linux_parameters__tmpfs
    list;
      (** tmpfs *)
}

type node_properties__node_range_properties__container__fargate_platform_configuration = {
  platform_version : string prop;  (** platform_version *)
}

type node_properties__node_range_properties__container__ephemeral_storage = {
  size_in_gib : float prop;  (** size_in_gib *)
}

type node_properties__node_range_properties__container__environment = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type node_properties__node_range_properties__container = {
  command : string prop list;  (** command *)
  environment :
    node_properties__node_range_properties__container__environment
    list;
      (** environment *)
  ephemeral_storage :
    node_properties__node_range_properties__container__ephemeral_storage
    list;
      (** ephemeral_storage *)
  execution_role_arn : string prop;  (** execution_role_arn *)
  fargate_platform_configuration :
    node_properties__node_range_properties__container__fargate_platform_configuration
    list;
      (** fargate_platform_configuration *)
  image : string prop;  (** image *)
  instance_type : string prop;  (** instance_type *)
  job_role_arn : string prop;  (** job_role_arn *)
  linux_parameters :
    node_properties__node_range_properties__container__linux_parameters
    list;
      (** linux_parameters *)
  log_configuration :
    node_properties__node_range_properties__container__log_configuration
    list;
      (** log_configuration *)
  mount_points :
    node_properties__node_range_properties__container__mount_points
    list;
      (** mount_points *)
  network_configuration :
    node_properties__node_range_properties__container__network_configuration
    list;
      (** network_configuration *)
  privileged : bool prop;  (** privileged *)
  readonly_root_filesystem : bool prop;
      (** readonly_root_filesystem *)
  resource_requirements :
    node_properties__node_range_properties__container__resource_requirements
    list;
      (** resource_requirements *)
  runtime_platform :
    node_properties__node_range_properties__container__runtime_platform
    list;
      (** runtime_platform *)
  secrets :
    node_properties__node_range_properties__container__secrets list;
      (** secrets *)
  ulimits :
    node_properties__node_range_properties__container__ulimits list;
      (** ulimits *)
  user : string prop;  (** user *)
  volumes :
    node_properties__node_range_properties__container__volumes list;
      (** volumes *)
}

type node_properties__node_range_properties = {
  container : node_properties__node_range_properties__container list;
      (** container *)
  target_nodes : string prop;  (** target_nodes *)
}

type node_properties = {
  main_node : float prop;  (** main_node *)
  node_range_properties :
    node_properties__node_range_properties list;
      (** node_range_properties *)
  num_nodes : float prop;  (** num_nodes *)
}

type retry_strategy__evaluate_on_exit = {
  action : string prop;  (** action *)
  on_exit_code : string prop;  (** on_exit_code *)
  on_reason : string prop;  (** on_reason *)
  on_status_reason : string prop;  (** on_status_reason *)
}

type retry_strategy = {
  attempts : float prop;  (** attempts *)
  evaluate_on_exit : retry_strategy__evaluate_on_exit list;
      (** evaluate_on_exit *)
}

type timeout = {
  attempt_duration_seconds : float prop;
      (** attempt_duration_seconds *)
}

type aws_batch_job_definition

val aws_batch_job_definition :
  ?arn:string prop ->
  ?name:string prop ->
  ?revision:float prop ->
  ?status:string prop ->
  unit ->
  aws_batch_job_definition

val yojson_of_aws_batch_job_definition :
  aws_batch_job_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  arn_prefix : string prop;
  container_orchestration_type : string prop;
  eks_properties : eks_properties list prop;
  id : string prop;
  name : string prop;
  node_properties : node_properties list prop;
  retry_strategy : retry_strategy list prop;
  revision : float prop;
  scheduling_priority : float prop;
  status : string prop;
  tags : (string * string) list prop;
  timeout : timeout list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?name:string prop ->
  ?revision:float prop ->
  ?status:string prop ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?name:string prop ->
  ?revision:float prop ->
  ?status:string prop ->
  string ->
  t Tf_core.resource
