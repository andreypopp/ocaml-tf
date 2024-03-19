(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_swf_domain = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  workflow_execution_retention_period_in_days : string prop;
      (** workflow_execution_retention_period_in_days *)
}
[@@deriving yojson_of]
(** aws_swf_domain *)

let aws_swf_domain ?description ?id ?name ?name_prefix ?tags
    ?tags_all ~workflow_execution_retention_period_in_days () :
    aws_swf_domain =
  {
    description;
    id;
    name;
    name_prefix;
    tags;
    tags_all;
    workflow_execution_retention_period_in_days;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  workflow_execution_retention_period_in_days : string prop;
}

let register ?tf_module ?description ?id ?name ?name_prefix ?tags
    ?tags_all ~workflow_execution_retention_period_in_days
    __resource_id =
  let __resource_type = "aws_swf_domain" in
  let __resource =
    aws_swf_domain ?description ?id ?name ?name_prefix ?tags
      ?tags_all ~workflow_execution_retention_period_in_days ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_swf_domain __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       workflow_execution_retention_period_in_days =
         Prop.computed __resource_type __resource_id
           "workflow_execution_retention_period_in_days";
     }
      : t)
  in
  __resource_attributes
