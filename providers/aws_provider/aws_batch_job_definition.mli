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

type t = private {
  arn : string prop;
  arn_prefix : string prop;
  container_properties : string prop;
  id : string prop;
  name : string prop;
  node_properties : string prop;
  parameters : (string * string) list prop;
  platform_capabilities : string list prop;
  propagate_tags : bool prop;
  revision : float prop;
  scheduling_priority : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val aws_batch_job_definition :
  ?container_properties:string prop ->
  ?id:string prop ->
  ?node_properties:string prop ->
  ?parameters:(string * string prop) list ->
  ?platform_capabilities:string prop list ->
  ?propagate_tags:bool prop ->
  ?scheduling_priority:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  type_:string prop ->
  eks_properties:aws_batch_job_definition__eks_properties list ->
  retry_strategy:aws_batch_job_definition__retry_strategy list ->
  timeout:aws_batch_job_definition__timeout list ->
  string ->
  t
