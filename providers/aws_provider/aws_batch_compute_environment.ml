(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_batch_compute_environment__compute_resources__ec2_configuration = {
  image_id_override : string option; [@option]
      (** image_id_override *)
  image_type : string option; [@option]  (** image_type *)
}
[@@deriving yojson_of]
(** aws_batch_compute_environment__compute_resources__ec2_configuration *)

type aws_batch_compute_environment__compute_resources__launch_template = {
  launch_template_id : string option; [@option]
      (** launch_template_id *)
  launch_template_name : string option; [@option]
      (** launch_template_name *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_batch_compute_environment__compute_resources__launch_template *)

type aws_batch_compute_environment__compute_resources = {
  allocation_strategy : string option; [@option]
      (** allocation_strategy *)
  bid_percentage : float option; [@option]  (** bid_percentage *)
  desired_vcpus : float option; [@option]  (** desired_vcpus *)
  ec2_key_pair : string option; [@option]  (** ec2_key_pair *)
  image_id : string option; [@option]  (** image_id *)
  instance_role : string option; [@option]  (** instance_role *)
  instance_type : string list option; [@option]  (** instance_type *)
  max_vcpus : float;  (** max_vcpus *)
  min_vcpus : float option; [@option]  (** min_vcpus *)
  placement_group : string option; [@option]  (** placement_group *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  spot_iam_fleet_role : string option; [@option]
      (** spot_iam_fleet_role *)
  subnets : string list;  (** subnets *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  ec2_configuration :
    aws_batch_compute_environment__compute_resources__ec2_configuration
    list;
  launch_template :
    aws_batch_compute_environment__compute_resources__launch_template
    list;
}
[@@deriving yojson_of]
(** aws_batch_compute_environment__compute_resources *)

type aws_batch_compute_environment__eks_configuration = {
  eks_cluster_arn : string;  (** eks_cluster_arn *)
  kubernetes_namespace : string;  (** kubernetes_namespace *)
}
[@@deriving yojson_of]
(** aws_batch_compute_environment__eks_configuration *)

type aws_batch_compute_environment__update_policy = {
  job_execution_timeout_minutes : float;
      (** job_execution_timeout_minutes *)
  terminate_jobs_on_update : bool;  (** terminate_jobs_on_update *)
}
[@@deriving yojson_of]
(** aws_batch_compute_environment__update_policy *)

type aws_batch_compute_environment = {
  state : string option; [@option]  (** state *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  compute_resources :
    aws_batch_compute_environment__compute_resources list;
  eks_configuration :
    aws_batch_compute_environment__eks_configuration list;
  update_policy : aws_batch_compute_environment__update_policy list;
}
[@@deriving yojson_of]
(** aws_batch_compute_environment *)

let aws_batch_compute_environment ?state ?tags ~type_
    ~compute_resources ~eks_configuration ~update_policy
    __resource_id =
  let __resource_type = "aws_batch_compute_environment" in
  let __resource =
    {
      state;
      tags;
      type_;
      compute_resources;
      eks_configuration;
      update_policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_batch_compute_environment __resource);
  ()
