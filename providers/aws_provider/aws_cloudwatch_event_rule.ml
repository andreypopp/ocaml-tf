(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudwatch_event_rule = {
  description : string option; [@option]  (** description *)
  event_bus_name : string option; [@option]  (** event_bus_name *)
  event_pattern : string option; [@option]  (** event_pattern *)
  is_enabled : bool option; [@option]  (** is_enabled *)
  role_arn : string option; [@option]  (** role_arn *)
  schedule_expression : string option; [@option]
      (** schedule_expression *)
  state : string option; [@option]  (** state *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_rule *)

let aws_cloudwatch_event_rule ?description ?event_bus_name
    ?event_pattern ?is_enabled ?role_arn ?schedule_expression ?state
    ?tags __resource_id =
  let __resource_type = "aws_cloudwatch_event_rule" in
  let __resource =
    {
      description;
      event_bus_name;
      event_pattern;
      is_enabled;
      role_arn;
      schedule_expression;
      state;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_rule __resource);
  ()
