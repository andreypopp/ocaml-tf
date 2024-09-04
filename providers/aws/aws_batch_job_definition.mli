(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type eks_properties__pod_properties__containers__env

val eks_properties__pod_properties__containers__env :
  name:string prop ->
  value:string prop ->
  unit ->
  eks_properties__pod_properties__containers__env

type eks_properties__pod_properties__containers__resources

val eks_properties__pod_properties__containers__resources :
  ?limits:string prop Tf_core.assoc ->
  ?requests:string prop Tf_core.assoc ->
  unit ->
  eks_properties__pod_properties__containers__resources

type eks_properties__pod_properties__containers__security_context

val eks_properties__pod_properties__containers__security_context :
  ?privileged:bool prop ->
  ?read_only_root_file_system:bool prop ->
  ?run_as_group:float prop ->
  ?run_as_non_root:bool prop ->
  ?run_as_user:float prop ->
  unit ->
  eks_properties__pod_properties__containers__security_context

type eks_properties__pod_properties__containers__volume_mounts

val eks_properties__pod_properties__containers__volume_mounts :
  ?read_only:bool prop ->
  mount_path:string prop ->
  name:string prop ->
  unit ->
  eks_properties__pod_properties__containers__volume_mounts

type eks_properties__pod_properties__containers

val eks_properties__pod_properties__containers :
  ?args:string prop list ->
  ?command:string prop list ->
  ?image_pull_policy:string prop ->
  ?name:string prop ->
  ?resources:
    eks_properties__pod_properties__containers__resources list ->
  ?security_context:
    eks_properties__pod_properties__containers__security_context list ->
  ?volume_mounts:
    eks_properties__pod_properties__containers__volume_mounts list ->
  image:string prop ->
  env:eks_properties__pod_properties__containers__env list ->
  unit ->
  eks_properties__pod_properties__containers

type eks_properties__pod_properties__metadata

val eks_properties__pod_properties__metadata :
  ?labels:string prop Tf_core.assoc ->
  unit ->
  eks_properties__pod_properties__metadata

type eks_properties__pod_properties__volumes__empty_dir

val eks_properties__pod_properties__volumes__empty_dir :
  ?medium:string prop ->
  size_limit:string prop ->
  unit ->
  eks_properties__pod_properties__volumes__empty_dir

type eks_properties__pod_properties__volumes__host_path

val eks_properties__pod_properties__volumes__host_path :
  path:string prop ->
  unit ->
  eks_properties__pod_properties__volumes__host_path

type eks_properties__pod_properties__volumes__secret

val eks_properties__pod_properties__volumes__secret :
  ?optional:bool prop ->
  secret_name:string prop ->
  unit ->
  eks_properties__pod_properties__volumes__secret

type eks_properties__pod_properties__volumes

val eks_properties__pod_properties__volumes :
  ?name:string prop ->
  ?empty_dir:eks_properties__pod_properties__volumes__empty_dir list ->
  ?host_path:eks_properties__pod_properties__volumes__host_path list ->
  ?secret:eks_properties__pod_properties__volumes__secret list ->
  unit ->
  eks_properties__pod_properties__volumes

type eks_properties__pod_properties

val eks_properties__pod_properties :
  ?dns_policy:string prop ->
  ?host_network:bool prop ->
  ?service_account_name:string prop ->
  ?metadata:eks_properties__pod_properties__metadata list ->
  ?volumes:eks_properties__pod_properties__volumes list ->
  containers:eks_properties__pod_properties__containers list ->
  unit ->
  eks_properties__pod_properties

type eks_properties

val eks_properties :
  pod_properties:eks_properties__pod_properties list ->
  unit ->
  eks_properties

type retry_strategy__evaluate_on_exit

val retry_strategy__evaluate_on_exit :
  ?on_exit_code:string prop ->
  ?on_reason:string prop ->
  ?on_status_reason:string prop ->
  action:string prop ->
  unit ->
  retry_strategy__evaluate_on_exit

type retry_strategy

val retry_strategy :
  ?attempts:float prop ->
  ?evaluate_on_exit:retry_strategy__evaluate_on_exit list ->
  unit ->
  retry_strategy

type timeout

val timeout : ?attempt_duration_seconds:float prop -> unit -> timeout

type aws_batch_job_definition

val aws_batch_job_definition :
  ?container_properties:string prop ->
  ?deregister_on_new_revision:bool prop ->
  ?id:string prop ->
  ?node_properties:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?platform_capabilities:string prop list ->
  ?propagate_tags:bool prop ->
  ?scheduling_priority:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?eks_properties:eks_properties list ->
  ?retry_strategy:retry_strategy list ->
  ?timeout:timeout list ->
  name:string prop ->
  type_:string prop ->
  unit ->
  aws_batch_job_definition

val yojson_of_aws_batch_job_definition :
  aws_batch_job_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  arn_prefix : string prop;
  container_properties : string prop;
  deregister_on_new_revision : bool prop;
  id : string prop;
  name : string prop;
  node_properties : string prop;
  parameters : string Tf_core.assoc prop;
  platform_capabilities : string list prop;
  propagate_tags : bool prop;
  revision : float prop;
  scheduling_priority : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?container_properties:string prop ->
  ?deregister_on_new_revision:bool prop ->
  ?id:string prop ->
  ?node_properties:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?platform_capabilities:string prop list ->
  ?propagate_tags:bool prop ->
  ?scheduling_priority:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?eks_properties:eks_properties list ->
  ?retry_strategy:retry_strategy list ->
  ?timeout:timeout list ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?container_properties:string prop ->
  ?deregister_on_new_revision:bool prop ->
  ?id:string prop ->
  ?node_properties:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?platform_capabilities:string prop list ->
  ?propagate_tags:bool prop ->
  ?scheduling_priority:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?eks_properties:eks_properties list ->
  ?retry_strategy:retry_strategy list ->
  ?timeout:timeout list ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
