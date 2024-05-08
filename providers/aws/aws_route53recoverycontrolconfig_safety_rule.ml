(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule_config = {
  inverted : bool prop;
  threshold : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_config) -> ()

let yojson_of_rule_config =
  (function
   | {
       inverted = v_inverted;
       threshold = v_threshold;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_threshold in
         ("threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_inverted in
         ("inverted", arg) :: bnds
       in
       `Assoc bnds
    : rule_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_config

[@@@deriving.end]

type aws_route53recoverycontrolconfig_safety_rule = {
  asserted_controls : string prop list option; [@option]
  control_panel_arn : string prop;
  gating_controls : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  target_controls : string prop list option; [@option]
  wait_period_ms : float prop;
  rule_config : rule_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53recoverycontrolconfig_safety_rule) -> ()

let yojson_of_aws_route53recoverycontrolconfig_safety_rule =
  (function
   | {
       asserted_controls = v_asserted_controls;
       control_panel_arn = v_control_panel_arn;
       gating_controls = v_gating_controls;
       id = v_id;
       name = v_name;
       target_controls = v_target_controls;
       wait_period_ms = v_wait_period_ms;
       rule_config = v_rule_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_rule_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_config) v_rule_config
           in
           let bnd = "rule_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_wait_period_ms in
         ("wait_period_ms", arg) :: bnds
       in
       let bnds =
         match v_target_controls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_controls", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_gating_controls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "gating_controls", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_control_panel_arn
         in
         ("control_panel_arn", arg) :: bnds
       in
       let bnds =
         match v_asserted_controls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "asserted_controls", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_route53recoverycontrolconfig_safety_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53recoverycontrolconfig_safety_rule

[@@@deriving.end]

let rule_config ~inverted ~threshold ~type_ () : rule_config =
  { inverted; threshold; type_ }

let aws_route53recoverycontrolconfig_safety_rule ?asserted_controls
    ?gating_controls ?id ?target_controls ~control_panel_arn ~name
    ~wait_period_ms ~rule_config () :
    aws_route53recoverycontrolconfig_safety_rule =
  {
    asserted_controls;
    control_panel_arn;
    gating_controls;
    id;
    name;
    target_controls;
    wait_period_ms;
    rule_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  asserted_controls : string list prop;
  control_panel_arn : string prop;
  gating_controls : string list prop;
  id : string prop;
  name : string prop;
  status : string prop;
  target_controls : string list prop;
  wait_period_ms : float prop;
}

let make ?asserted_controls ?gating_controls ?id ?target_controls
    ~control_panel_arn ~name ~wait_period_ms ~rule_config __id =
  let __type = "aws_route53recoverycontrolconfig_safety_rule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       asserted_controls =
         Prop.computed __type __id "asserted_controls";
       control_panel_arn =
         Prop.computed __type __id "control_panel_arn";
       gating_controls = Prop.computed __type __id "gating_controls";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       target_controls = Prop.computed __type __id "target_controls";
       wait_period_ms = Prop.computed __type __id "wait_period_ms";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53recoverycontrolconfig_safety_rule
        (aws_route53recoverycontrolconfig_safety_rule
           ?asserted_controls ?gating_controls ?id ?target_controls
           ~control_panel_arn ~name ~wait_period_ms ~rule_config ());
    attrs = __attrs;
  }

let register ?tf_module ?asserted_controls ?gating_controls ?id
    ?target_controls ~control_panel_arn ~name ~wait_period_ms
    ~rule_config __id =
  let (r : _ Tf_core.resource) =
    make ?asserted_controls ?gating_controls ?id ?target_controls
      ~control_panel_arn ~name ~wait_period_ms ~rule_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
