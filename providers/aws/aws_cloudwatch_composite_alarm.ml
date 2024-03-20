(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?actions_enabled ?alarm_actions ?alarm_description ?id
    ?insufficient_data_actions ?ok_actions ?tags ?tags_all
    ~alarm_name ~alarm_rule ~actions_suppressor __id =
  let __type = "aws_cloudwatch_composite_alarm" in
  let __attrs =
    ({
       actions_enabled = Prop.computed __type __id "actions_enabled";
       alarm_actions = Prop.computed __type __id "alarm_actions";
       alarm_description =
         Prop.computed __type __id "alarm_description";
       alarm_name = Prop.computed __type __id "alarm_name";
       alarm_rule = Prop.computed __type __id "alarm_rule";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       insufficient_data_actions =
         Prop.computed __type __id "insufficient_data_actions";
       ok_actions = Prop.computed __type __id "ok_actions";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_composite_alarm
        (aws_cloudwatch_composite_alarm ?actions_enabled
           ?alarm_actions ?alarm_description ?id
           ?insufficient_data_actions ?ok_actions ?tags ?tags_all
           ~alarm_name ~alarm_rule ~actions_suppressor ());
    attrs = __attrs;
  }

let register ?tf_module ?actions_enabled ?alarm_actions
    ?alarm_description ?id ?insufficient_data_actions ?ok_actions
    ?tags ?tags_all ~alarm_name ~alarm_rule ~actions_suppressor __id
    =
  let (r : _ Tf_core.resource) =
    make ?actions_enabled ?alarm_actions ?alarm_description ?id
      ?insufficient_data_actions ?ok_actions ?tags ?tags_all
      ~alarm_name ~alarm_rule ~actions_suppressor __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
