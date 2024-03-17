(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elastic_beanstalk_environment__setting = {
  name : string;  (** name *)
  namespace : string;  (** namespace *)
  resource : string option; [@option]  (** resource *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_environment__setting *)

type aws_elastic_beanstalk_environment__all_settings = {
  name : string;  (** name *)
  namespace : string;  (** namespace *)
  resource : string;  (** resource *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type aws_elastic_beanstalk_environment = {
  application : string;  (** application *)
  cname_prefix : string option; [@option]  (** cname_prefix *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  platform_arn : string option; [@option]  (** platform_arn *)
  poll_interval : string option; [@option]  (** poll_interval *)
  solution_stack_name : string option; [@option]
      (** solution_stack_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  template_name : string option; [@option]  (** template_name *)
  tier : string option; [@option]  (** tier *)
  version_label : string option; [@option]  (** version_label *)
  wait_for_ready_timeout : string option; [@option]
      (** wait_for_ready_timeout *)
  setting : aws_elastic_beanstalk_environment__setting list;
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_environment *)

let aws_elastic_beanstalk_environment ?cname_prefix ?description ?id
    ?platform_arn ?poll_interval ?solution_stack_name ?tags ?tags_all
    ?template_name ?tier ?version_label ?wait_for_ready_timeout
    ~application ~name ~setting __resource_id =
  let __resource_type = "aws_elastic_beanstalk_environment" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastic_beanstalk_environment __resource);
  ()
