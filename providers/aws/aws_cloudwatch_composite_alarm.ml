(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type actions_suppressor = {
  alarm : string prop;  (** alarm *)
  extension_period : float prop;  (** extension_period *)
  wait_period : float prop;  (** wait_period *)
}
[@@deriving yojson_of]
(** actions_suppressor *)

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
  actions_suppressor : actions_suppressor list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_composite_alarm *)

let actions_suppressor ~alarm ~extension_period ~wait_period () :
    actions_suppressor =
  { alarm; extension_period; wait_period }

let aws_cloudwatch_composite_alarm ?actions_enabled ?alarm_actions
    ?alarm_description ?id ?insufficient_data_actions ?ok_actions
    ?tags ?tags_all ~alarm_name ~alarm_rule ~actions_suppressor () :
    aws_cloudwatch_composite_alarm =
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

type t = {
  actions_enabled : bool prop;
  alarm_actions : string list prop;
  alarm_description : string prop;
  alarm_name : string prop;
  alarm_rule : string prop;
  arn : string prop;
  id : string prop;
  insufficient_data_actions : string list prop;
  ok_actions : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?actions_enabled ?alarm_actions
    ?alarm_description ?id ?insufficient_data_actions ?ok_actions
    ?tags ?tags_all ~alarm_name ~alarm_rule ~actions_suppressor
    __resource_id =
  let __resource_type = "aws_cloudwatch_composite_alarm" in
  let __resource =
    aws_cloudwatch_composite_alarm ?actions_enabled ?alarm_actions
      ?alarm_description ?id ?insufficient_data_actions ?ok_actions
      ?tags ?tags_all ~alarm_name ~alarm_rule ~actions_suppressor ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_composite_alarm __resource);
  let __resource_attributes =
    ({
       actions_enabled =
         Prop.computed __resource_type __resource_id
           "actions_enabled";
       alarm_actions =
         Prop.computed __resource_type __resource_id "alarm_actions";
       alarm_description =
         Prop.computed __resource_type __resource_id
           "alarm_description";
       alarm_name =
         Prop.computed __resource_type __resource_id "alarm_name";
       alarm_rule =
         Prop.computed __resource_type __resource_id "alarm_rule";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       insufficient_data_actions =
         Prop.computed __resource_type __resource_id
           "insufficient_data_actions";
       ok_actions =
         Prop.computed __resource_type __resource_id "ok_actions";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
