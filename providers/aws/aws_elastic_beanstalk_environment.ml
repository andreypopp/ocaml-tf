(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type setting = {
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
  resource : string prop option; [@option]  (** resource *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** setting *)

type all_settings = {
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
  resource : string prop;  (** resource *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type aws_elastic_beanstalk_environment = {
  application : string prop;  (** application *)
  cname_prefix : string prop option; [@option]  (** cname_prefix *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  platform_arn : string prop option; [@option]  (** platform_arn *)
  poll_interval : string prop option; [@option]  (** poll_interval *)
  solution_stack_name : string prop option; [@option]
      (** solution_stack_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  template_name : string prop option; [@option]  (** template_name *)
  tier : string prop option; [@option]  (** tier *)
  version_label : string prop option; [@option]  (** version_label *)
  wait_for_ready_timeout : string prop option; [@option]
      (** wait_for_ready_timeout *)
  setting : setting list;
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_environment *)

let setting ?resource ~name ~namespace ~value () : setting =
  { name; namespace; resource; value }

let aws_elastic_beanstalk_environment ?cname_prefix ?description ?id
    ?platform_arn ?poll_interval ?solution_stack_name ?tags ?tags_all
    ?template_name ?tier ?version_label ?wait_for_ready_timeout
    ~application ~name ~setting () :
    aws_elastic_beanstalk_environment =
  {
    application;
    cname_prefix;
    description;
    id;
    name;
    platform_arn;
    poll_interval;
    solution_stack_name;
    tags;
    tags_all;
    template_name;
    tier;
    version_label;
    wait_for_ready_timeout;
    setting;
  }

type t = {
  all_settings : all_settings list prop;
  application : string prop;
  arn : string prop;
  autoscaling_groups : string list prop;
  cname : string prop;
  cname_prefix : string prop;
  description : string prop;
  endpoint_url : string prop;
  id : string prop;
  instances : string list prop;
  launch_configurations : string list prop;
  load_balancers : string list prop;
  name : string prop;
  platform_arn : string prop;
  poll_interval : string prop;
  queues : string list prop;
  solution_stack_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  template_name : string prop;
  tier : string prop;
  triggers : string list prop;
  version_label : string prop;
  wait_for_ready_timeout : string prop;
}

let register ?tf_module ?cname_prefix ?description ?id ?platform_arn
    ?poll_interval ?solution_stack_name ?tags ?tags_all
    ?template_name ?tier ?version_label ?wait_for_ready_timeout
    ~application ~name ~setting __resource_id =
  let __resource_type = "aws_elastic_beanstalk_environment" in
  let __resource =
    aws_elastic_beanstalk_environment ?cname_prefix ?description ?id
      ?platform_arn ?poll_interval ?solution_stack_name ?tags
      ?tags_all ?template_name ?tier ?version_label
      ?wait_for_ready_timeout ~application ~name ~setting ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastic_beanstalk_environment __resource);
  let __resource_attributes =
    ({
       all_settings =
         Prop.computed __resource_type __resource_id "all_settings";
       application =
         Prop.computed __resource_type __resource_id "application";
       arn = Prop.computed __resource_type __resource_id "arn";
       autoscaling_groups =
         Prop.computed __resource_type __resource_id
           "autoscaling_groups";
       cname = Prop.computed __resource_type __resource_id "cname";
       cname_prefix =
         Prop.computed __resource_type __resource_id "cname_prefix";
       description =
         Prop.computed __resource_type __resource_id "description";
       endpoint_url =
         Prop.computed __resource_type __resource_id "endpoint_url";
       id = Prop.computed __resource_type __resource_id "id";
       instances =
         Prop.computed __resource_type __resource_id "instances";
       launch_configurations =
         Prop.computed __resource_type __resource_id
           "launch_configurations";
       load_balancers =
         Prop.computed __resource_type __resource_id "load_balancers";
       name = Prop.computed __resource_type __resource_id "name";
       platform_arn =
         Prop.computed __resource_type __resource_id "platform_arn";
       poll_interval =
         Prop.computed __resource_type __resource_id "poll_interval";
       queues = Prop.computed __resource_type __resource_id "queues";
       solution_stack_name =
         Prop.computed __resource_type __resource_id
           "solution_stack_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       template_name =
         Prop.computed __resource_type __resource_id "template_name";
       tier = Prop.computed __resource_type __resource_id "tier";
       triggers =
         Prop.computed __resource_type __resource_id "triggers";
       version_label =
         Prop.computed __resource_type __resource_id "version_label";
       wait_for_ready_timeout =
         Prop.computed __resource_type __resource_id
           "wait_for_ready_timeout";
     }
      : t)
  in
  __resource_attributes
