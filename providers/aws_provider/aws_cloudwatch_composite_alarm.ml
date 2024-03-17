(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_composite_alarm__actions_suppressor = {
  alarm : string;  (** alarm *)
  extension_period : float;  (** extension_period *)
  wait_period : float;  (** wait_period *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_composite_alarm__actions_suppressor *)

type aws_cloudwatch_composite_alarm = {
  actions_enabled : bool option; [@option]  (** actions_enabled *)
  alarm_actions : string list option; [@option]  (** alarm_actions *)
  alarm_description : string option; [@option]
      (** alarm_description *)
  alarm_name : string;  (** alarm_name *)
  alarm_rule : string;  (** alarm_rule *)
  insufficient_data_actions : string list option; [@option]
      (** insufficient_data_actions *)
  ok_actions : string list option; [@option]  (** ok_actions *)
  tags : (string * string) list option; [@option]  (** tags *)
  actions_suppressor :
    aws_cloudwatch_composite_alarm__actions_suppressor list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_composite_alarm *)

let aws_cloudwatch_composite_alarm ?actions_enabled ?alarm_actions
    ?alarm_description ?insufficient_data_actions ?ok_actions ?tags
    ~alarm_name ~alarm_rule ~actions_suppressor __resource_id =
  let __resource_type = "aws_cloudwatch_composite_alarm" in
  let __resource =
    {
      actions_enabled;
      alarm_actions;
      alarm_description;
      alarm_name;
      alarm_rule;
      insufficient_data_actions;
      ok_actions;
      tags;
      actions_suppressor;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_composite_alarm __resource);
  ()
