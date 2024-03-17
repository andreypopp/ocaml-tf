(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoverycontrolconfig_safety_rule__rule_config = {
  inverted : bool prop;  (** inverted *)
  threshold : float prop;  (** threshold *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_safety_rule__rule_config *)

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
  rule_config :
    aws_route53recoverycontrolconfig_safety_rule__rule_config list;
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_safety_rule *)

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

let aws_route53recoverycontrolconfig_safety_rule ?asserted_controls
    ?gating_controls ?id ?target_controls ~control_panel_arn ~name
    ~wait_period_ms ~rule_config __resource_id =
  let __resource_type =
    "aws_route53recoverycontrolconfig_safety_rule"
  in
  let __resource =
    ({
       asserted_controls;
       control_panel_arn;
       gating_controls;
       id;
       name;
       target_controls;
       wait_period_ms;
       rule_config;
     }
      : aws_route53recoverycontrolconfig_safety_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoverycontrolconfig_safety_rule
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       asserted_controls =
         Prop.computed __resource_type __resource_id
           "asserted_controls";
       control_panel_arn =
         Prop.computed __resource_type __resource_id
           "control_panel_arn";
       gating_controls =
         Prop.computed __resource_type __resource_id
           "gating_controls";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
       target_controls =
         Prop.computed __resource_type __resource_id
           "target_controls";
       wait_period_ms =
         Prop.computed __resource_type __resource_id "wait_period_ms";
     }
      : t)
  in
  __resource_attributes
