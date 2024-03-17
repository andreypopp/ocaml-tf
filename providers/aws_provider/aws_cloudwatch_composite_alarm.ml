(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_composite_alarm__actions_suppressor = {
  alarm : string prop;  (** alarm *)
  extension_period : float prop;  (** extension_period *)
  wait_period : float prop;  (** wait_period *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_composite_alarm__actions_suppressor *)

type aws_cloudwatch_composite_alarm = {
  actions_enabled : bool prop option; [@option]
      (** actions_enabled *)
  alarm_actions : string prop list option; [@option]
      (** alarm_actions *)
  alarm_description : string prop option; [@option]
      (** alarm_description *)
  alarm_name : string prop;  (** alarm_name *)
  alarm_rule : string prop;  (** alarm_rule *)
  id : string prop option; [@option]  (** id *)
  insufficient_data_actions : string prop list option; [@option]
      (** insufficient_data_actions *)
  ok_actions : string prop list option; [@option]  (** ok_actions *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  actions_suppressor :
    aws_cloudwatch_composite_alarm__actions_suppressor list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_composite_alarm *)

let aws_cloudwatch_composite_alarm ?actions_enabled ?alarm_actions
    ?alarm_description ?id ?insufficient_data_actions ?ok_actions
    ?tags ?tags_all ~alarm_name ~alarm_rule ~actions_suppressor
    __resource_id =
  let __resource_type = "aws_cloudwatch_composite_alarm" in
  let __resource =
    {
      actions_enabled;
      alarm_actions;
      alarm_description;
      alarm_name;
      alarm_rule;
      id;
      insufficient_data_actions;
      ok_actions;
      tags;
      tags_all;
      actions_suppressor;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_composite_alarm __resource);
  ()
