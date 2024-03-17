(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elastic_beanstalk_configuration_template__setting = {
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
  resource : string prop option; [@option]  (** resource *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_configuration_template__setting *)

type aws_elastic_beanstalk_configuration_template = {
  application : string prop;  (** application *)
  description : string prop option; [@option]  (** description *)
  environment_id : string prop option; [@option]
      (** environment_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  solution_stack_name : string prop option; [@option]
      (** solution_stack_name *)
  setting :
    aws_elastic_beanstalk_configuration_template__setting list;
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_configuration_template *)

type t = {
  application : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  name : string prop;
  solution_stack_name : string prop;
}

let aws_elastic_beanstalk_configuration_template ?description
    ?environment_id ?id ?solution_stack_name ~application ~name
    ~setting __resource_id =
  let __resource_type =
    "aws_elastic_beanstalk_configuration_template"
  in
  let __resource =
    ({
       application;
       description;
       environment_id;
       id;
       name;
       solution_stack_name;
       setting;
     }
      : aws_elastic_beanstalk_configuration_template)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastic_beanstalk_configuration_template
       __resource);
  let __resource_attributes =
    ({
       application =
         Prop.computed __resource_type __resource_id "application";
       description =
         Prop.computed __resource_type __resource_id "description";
       environment_id =
         Prop.computed __resource_type __resource_id "environment_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       solution_stack_name =
         Prop.computed __resource_type __resource_id
           "solution_stack_name";
     }
      : t)
  in
  __resource_attributes
