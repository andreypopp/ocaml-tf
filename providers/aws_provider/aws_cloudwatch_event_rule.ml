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
    ?schedule_expression ?state ?tags ?tags_all __resource_id =
  let __resource_type = "aws_cloudwatch_event_rule" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_rule __resource);
  ()
