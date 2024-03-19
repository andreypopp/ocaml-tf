(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_event_rule = {
  description : string prop option; [@option]  (** description *)
  event_bus_name : string prop option; [@option]
      (** event_bus_name *)
  event_pattern : string prop option; [@option]  (** event_pattern *)
  id : string prop option; [@option]  (** id *)
  is_enabled : bool prop option; [@option]  (** is_enabled *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  role_arn : string prop option; [@option]  (** role_arn *)
  schedule_expression : string prop option; [@option]
      (** schedule_expression *)
  state : string prop option; [@option]  (** state *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_rule *)

let aws_cloudwatch_event_rule ?description ?event_bus_name
    ?event_pattern ?id ?is_enabled ?name ?name_prefix ?role_arn
    ?schedule_expression ?state ?tags ?tags_all () :
    aws_cloudwatch_event_rule =
  {
    description;
    event_bus_name;
    event_pattern;
    id;
    is_enabled;
    name;
    name_prefix;
    role_arn;
    schedule_expression;
    state;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  description : string prop;
  event_bus_name : string prop;
  event_pattern : string prop;
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
  name_prefix : string prop;
  role_arn : string prop;
  schedule_expression : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?event_bus_name ?event_pattern
    ?id ?is_enabled ?name ?name_prefix ?role_arn ?schedule_expression
    ?state ?tags ?tags_all __resource_id =
  let __resource_type = "aws_cloudwatch_event_rule" in
  let __resource =
    aws_cloudwatch_event_rule ?description ?event_bus_name
      ?event_pattern ?id ?is_enabled ?name ?name_prefix ?role_arn
      ?schedule_expression ?state ?tags ?tags_all ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       event_bus_name =
         Prop.computed __resource_type __resource_id "event_bus_name";
       event_pattern =
         Prop.computed __resource_type __resource_id "event_pattern";
       id = Prop.computed __resource_type __resource_id "id";
       is_enabled =
         Prop.computed __resource_type __resource_id "is_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       schedule_expression =
         Prop.computed __resource_type __resource_id
           "schedule_expression";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
