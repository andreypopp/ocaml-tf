(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_batch_job_definition__eks_properties__pod_properties__containers__env

type aws_batch_job_definition__eks_properties__pod_properties__containers__resources

type aws_batch_job_definition__eks_properties__pod_properties__containers__security_context

type aws_batch_job_definition__eks_properties__pod_properties__containers__volume_mounts

type aws_batch_job_definition__eks_properties__pod_properties__containers

type aws_batch_job_definition__eks_properties__pod_properties__metadata

type aws_batch_job_definition__eks_properties__pod_properties__volumes__empty_dir

type aws_batch_job_definition__eks_properties__pod_properties__volumes__host_path

type aws_batch_job_definition__eks_properties__pod_properties__volumes__secret

type aws_batch_job_definition__eks_properties__pod_properties__volumes
type aws_batch_job_definition__eks_properties__pod_properties
type aws_batch_job_definition__eks_properties
type aws_batch_job_definition__retry_strategy__evaluate_on_exit
type aws_batch_job_definition__retry_strategy
type aws_batch_job_definition__timeout
type aws_batch_job_definition

val aws_batch_job_definition :
  ?container_properties:string ->
  ?id:string ->
  ?node_properties:string ->
  ?parameters:(string * string) list ->
  ?platform_capabilities:string list ->
  ?propagate_tags:bool ->
  ?scheduling_priority:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  type_:string ->
  eks_properties:aws_batch_job_definition__eks_properties list ->
  retry_strategy:aws_batch_job_definition__retry_strategy list ->
  timeout:aws_batch_job_definition__timeout list ->
  string ->
  unit
