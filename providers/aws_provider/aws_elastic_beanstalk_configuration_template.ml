(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_elastic_beanstalk_configuration_template__setting = {
  name : string;  (** name *)
  namespace : string;  (** namespace *)
  resource : string option; [@option]  (** resource *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_configuration_template__setting *)

type aws_elastic_beanstalk_configuration_template = {
  application : string;  (** application *)
  description : string option; [@option]  (** description *)
  environment_id : string option; [@option]  (** environment_id *)
  name : string;  (** name *)
  solution_stack_name : string option; [@option]
      (** solution_stack_name *)
  setting :
    aws_elastic_beanstalk_configuration_template__setting list;
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_configuration_template *)

let aws_elastic_beanstalk_configuration_template ?description
    ?environment_id ?solution_stack_name ~application ~name ~setting
    __resource_id =
  let __resource_type =
    "aws_elastic_beanstalk_configuration_template"
  in
  let __resource =
    {
      application;
      description;
      environment_id;
      name;
      solution_stack_name;
      setting;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastic_beanstalk_configuration_template
       __resource);
  ()
