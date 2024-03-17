(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_batch_compute_environment__compute_resources__ec2_configuration = {
  image_id_override : string prop option; [@option]
      (** image_id_override *)
  image_type : string prop option; [@option]  (** image_type *)
}
[@@deriving yojson_of]
(** aws_batch_compute_environment__compute_resources__ec2_configuration *)

type aws_batch_compute_environment__compute_resources__launch_template = {
  launch_template_id : string prop option; [@option]
      (** launch_template_id *)
  launch_template_name : string prop option; [@option]
      (** launch_template_name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_batch_compute_environment__compute_resources__launch_template *)

type aws_batch_compute_environment__compute_resources = {
  allocation_strategy : string prop option; [@option]
      (** allocation_strategy *)
  bid_percentage : float prop option; [@option]
      (** bid_percentage *)
  desired_vcpus : float prop option; [@option]  (** desired_vcpus *)
  ec2_key_pair : string prop option; [@option]  (** ec2_key_pair *)
  image_id : string prop option; [@option]  (** image_id *)
  instance_role : string prop option; [@option]  (** instance_role *)
  instance_type : string prop list option; [@option]
      (** instance_type *)
  max_vcpus : float prop;  (** max_vcpus *)
  min_vcpus : float prop option; [@option]  (** min_vcpus *)
  placement_group : string prop option; [@option]
      (** placement_group *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  spot_iam_fleet_role : string prop option; [@option]
      (** spot_iam_fleet_role *)
  subnets : string prop list;  (** subnets *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
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
  eks_cluster_arn : string prop;  (** eks_cluster_arn *)
  kubernetes_namespace : string prop;  (** kubernetes_namespace *)
}
[@@deriving yojson_of]
(** aws_batch_compute_environment__eks_configuration *)

type aws_batch_compute_environment__update_policy = {
  job_execution_timeout_minutes : float prop;
      (** job_execution_timeout_minutes *)
  terminate_jobs_on_update : bool prop;
      (** terminate_jobs_on_update *)
}
[@@deriving yojson_of]
(** aws_batch_compute_environment__update_policy *)

type aws_batch_compute_environment = {
  compute_environment_name : string prop option; [@option]
      (** compute_environment_name *)
  compute_environment_name_prefix : string prop option; [@option]
      (** compute_environment_name_prefix *)
  id : string prop option; [@option]  (** id *)
  service_role : string prop option; [@option]  (** service_role *)
  state : string prop option; [@option]  (** state *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  compute_resources :
    aws_batch_compute_environment__compute_resources list;
  eks_configuration :
    aws_batch_compute_environment__eks_configuration list;
  update_policy : aws_batch_compute_environment__update_policy list;
}
[@@deriving yojson_of]
(** aws_batch_compute_environment *)

let aws_batch_compute_environment ?compute_environment_name
    ?compute_environment_name_prefix ?id ?service_role ?state ?tags
    ?tags_all ~type_ ~compute_resources ~eks_configuration
    ~update_policy __resource_id =
  let __resource_type = "aws_batch_compute_environment" in
  let __resource =
    {
      compute_environment_name;
      compute_environment_name_prefix;
      id;
      service_role;
      state;
      tags;
      tags_all;
      type_;
      compute_resources;
      eks_configuration;
      update_policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_batch_compute_environment __resource);
  ()
