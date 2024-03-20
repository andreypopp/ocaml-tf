(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule_config = {
  inverted : bool prop;  (** inverted *)
  threshold : float prop;  (** threshold *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** rule_config *)

type aws_route53recoverycontrolconfig_safety_rule = {
  asserted_controls : string prop list option; [@option]
      (** asserted_controls *)
  control_panel_arn : string prop;  (** control_panel_arn *)
  gating_controls : string prop list option; [@option]
      (** gating_controls *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  target_controls : string prop list option; [@option]
      (** target_controls *)
  wait_period_ms : float prop;  (** wait_period_ms *)
  rule_config : rule_config list;
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_safety_rule *)

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
