(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type compute_resources__ec2_configuration = {
  image_id_override : string prop option; [@option]
      (** image_id_override *)
  image_type : string prop option; [@option]  (** image_type *)
}
[@@deriving yojson_of]
(** compute_resources__ec2_configuration *)

type compute_resources__launch_template = {
  launch_template_id : string prop option; [@option]
      (** launch_template_id *)
  launch_template_name : string prop option; [@option]
      (** launch_template_name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** compute_resources__launch_template *)

type compute_resources = {
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
  ec2_configuration : compute_resources__ec2_configuration list;
  launch_template : compute_resources__launch_template list;
}
[@@deriving yojson_of]
(** compute_resources *)

type eks_configuration = {
  eks_cluster_arn : string prop;  (** eks_cluster_arn *)
  kubernetes_namespace : string prop;  (** kubernetes_namespace *)
}
[@@deriving yojson_of]
(** eks_configuration *)

type update_policy = {
  job_execution_timeout_minutes : float prop;
      (** job_execution_timeout_minutes *)
  terminate_jobs_on_update : bool prop;
      (** terminate_jobs_on_update *)
}
[@@deriving yojson_of]
(** update_policy *)

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
  compute_resources : compute_resources list;
  eks_configuration : eks_configuration list;
  update_policy : update_policy list;
}
[@@deriving yojson_of]
(** aws_batch_compute_environment *)

let compute_resources__ec2_configuration ?image_id_override
    ?image_type () : compute_resources__ec2_configuration =
  { image_id_override; image_type }

let compute_resources__launch_template ?launch_template_id
    ?launch_template_name ?version () :
    compute_resources__launch_template =
  { launch_template_id; launch_template_name; version }

let compute_resources ?allocation_strategy ?bid_percentage
    ?desired_vcpus ?ec2_key_pair ?image_id ?instance_role
    ?instance_type ?min_vcpus ?placement_group ?security_group_ids
    ?spot_iam_fleet_role ?tags ~max_vcpus ~subnets ~type_
    ~ec2_configuration ~launch_template () : compute_resources =
  {
    allocation_strategy;
    bid_percentage;
    desired_vcpus;
    ec2_key_pair;
    image_id;
    instance_role;
    instance_type;
    max_vcpus;
    min_vcpus;
    placement_group;
    security_group_ids;
    spot_iam_fleet_role;
    subnets;
    tags;
    type_;
    ec2_configuration;
    launch_template;
  }

let eks_configuration ~eks_cluster_arn ~kubernetes_namespace () :
    eks_configuration =
  { eks_cluster_arn; kubernetes_namespace }

let update_policy ~job_execution_timeout_minutes
    ~terminate_jobs_on_update () : update_policy =
  { job_execution_timeout_minutes; terminate_jobs_on_update }

let aws_batch_compute_environment ?compute_environment_name
    ?compute_environment_name_prefix ?id ?service_role ?state ?tags
    ?tags_all ~type_ ~compute_resources ~eks_configuration
    ~update_policy () : aws_batch_compute_environment =
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

type t = {
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

let register ?tf_module ?compute_environment_name
    ?compute_environment_name_prefix ?id ?service_role ?state ?tags
    ?tags_all ~type_ ~compute_resources ~eks_configuration
    ~update_policy __resource_id =
  let __resource_type = "aws_batch_compute_environment" in
  let __resource =
    aws_batch_compute_environment ?compute_environment_name
      ?compute_environment_name_prefix ?id ?service_role ?state ?tags
      ?tags_all ~type_ ~compute_resources ~eks_configuration
      ~update_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_batch_compute_environment __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       compute_environment_name =
         Prop.computed __resource_type __resource_id
           "compute_environment_name";
       compute_environment_name_prefix =
         Prop.computed __resource_type __resource_id
           "compute_environment_name_prefix";
       ecs_cluster_arn =
         Prop.computed __resource_type __resource_id
           "ecs_cluster_arn";
       id = Prop.computed __resource_type __resource_id "id";
       service_role =
         Prop.computed __resource_type __resource_id "service_role";
       state = Prop.computed __resource_type __resource_id "state";
       status = Prop.computed __resource_type __resource_id "status";
       status_reason =
         Prop.computed __resource_type __resource_id "status_reason";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
