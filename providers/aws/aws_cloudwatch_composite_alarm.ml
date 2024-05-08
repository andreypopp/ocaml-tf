(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type actions_suppressor = {
  alarm : string prop;
  extension_period : float prop;
  wait_period : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions_suppressor) -> ()

let yojson_of_actions_suppressor =
  (function
   | {
       alarm = v_alarm;
       extension_period = v_extension_period;
       wait_period = v_wait_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_wait_period in
         ("wait_period", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_extension_period
         in
         ("extension_period", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alarm in
         ("alarm", arg) :: bnds
       in
       `Assoc bnds
    : actions_suppressor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions_suppressor

[@@@deriving.end]

type aws_cloudwatch_composite_alarm = {
  actions_enabled : bool prop option; [@option]
  alarm_actions : string prop list option; [@option]
  alarm_description : string prop option; [@option]
  alarm_name : string prop;
  alarm_rule : string prop;
  id : string prop option; [@option]
  insufficient_data_actions : string prop list option; [@option]
  ok_actions : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  actions_suppressor : actions_suppressor list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_composite_alarm) -> ()

let yojson_of_aws_cloudwatch_composite_alarm =
  (function
   | {
       actions_enabled = v_actions_enabled;
       alarm_actions = v_alarm_actions;
       alarm_description = v_alarm_description;
       alarm_name = v_alarm_name;
       alarm_rule = v_alarm_rule;
       id = v_id;
       insufficient_data_actions = v_insufficient_data_actions;
       ok_actions = v_ok_actions;
       tags = v_tags;
       tags_all = v_tags_all;
       actions_suppressor = v_actions_suppressor;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_actions_suppressor then bnds
         else
           let arg =
             (yojson_of_list yojson_of_actions_suppressor)
               v_actions_suppressor
           in
           let bnd = "actions_suppressor", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ok_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ok_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_insufficient_data_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "insufficient_data_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alarm_rule in
         ("alarm_rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alarm_name in
         ("alarm_name", arg) :: bnds
       in
       let bnds =
         match v_alarm_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alarm_description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alarm_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "alarm_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_actions_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "actions_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_composite_alarm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_composite_alarm

[@@@deriving.end]

let actions_suppressor ~alarm ~extension_period ~wait_period () :
    actions_suppressor =
  { alarm; extension_period; wait_period }

let aws_cloudwatch_composite_alarm ?actions_enabled ?alarm_actions
    ?alarm_description ?id ?insufficient_data_actions ?ok_actions
    ?tags ?tags_all ?(actions_suppressor = []) ~alarm_name
    ~alarm_rule () : aws_cloudwatch_composite_alarm =
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
  tf_name : string;
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
    ?(actions_suppressor = []) ~alarm_name ~alarm_rule __id =
  let __type = "aws_cloudwatch_composite_alarm" in
  let __attrs =
    ({
       tf_name = __id;
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
           ~actions_suppressor ~alarm_name ~alarm_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?actions_enabled ?alarm_actions
    ?alarm_description ?id ?insufficient_data_actions ?ok_actions
    ?tags ?tags_all ?(actions_suppressor = []) ~alarm_name
    ~alarm_rule __id =
  let (r : _ Tf_core.resource) =
    make ?actions_enabled ?alarm_actions ?alarm_description ?id
      ?insufficient_data_actions ?ok_actions ?tags ?tags_all
      ~actions_suppressor ~alarm_name ~alarm_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
