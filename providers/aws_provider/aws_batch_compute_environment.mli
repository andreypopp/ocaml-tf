(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_batch_compute_environment__compute_resources__ec2_configuration

type aws_batch_compute_environment__compute_resources__launch_template
type aws_batch_compute_environment__compute_resources
type aws_batch_compute_environment__eks_configuration
type aws_batch_compute_environment__update_policy
type aws_batch_compute_environment

type t = private {
  arn : string prop;
  compute_environment_name : string prop;
  compute_environment_name_prefix : string prop;
  ecs_cluster_arn : string prop;
  id : string prop;
  service_role : string prop;
  state : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val aws_batch_compute_environment :
  ?compute_environment_name:string prop ->
  ?compute_environment_name_prefix:string prop ->
  ?id:string prop ->
  ?service_role:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  type_:string prop ->
  compute_resources:
    aws_batch_compute_environment__compute_resources list ->
  eks_configuration:
    aws_batch_compute_environment__eks_configuration list ->
  update_policy:aws_batch_compute_environment__update_policy list ->
  string ->
  t
