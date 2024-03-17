(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoverycontrolconfig_safety_rule__rule_config = {
  inverted : bool;  (** inverted *)
  threshold : float;  (** threshold *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_safety_rule__rule_config *)

type aws_route53recoverycontrolconfig_safety_rule = {
  asserted_controls : string list option; [@option]
      (** asserted_controls *)
  control_panel_arn : string;  (** control_panel_arn *)
  gating_controls : string list option; [@option]
      (** gating_controls *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  target_controls : string list option; [@option]
      (** target_controls *)
  wait_period_ms : float;  (** wait_period_ms *)
  rule_config :
    aws_route53recoverycontrolconfig_safety_rule__rule_config list;
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_safety_rule *)

let aws_route53recoverycontrolconfig_safety_rule ?asserted_controls
    ?gating_controls ?id ?target_controls ~control_panel_arn ~name
    ~wait_period_ms ~rule_config __resource_id =
  let __resource_type =
    "aws_route53recoverycontrolconfig_safety_rule"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoverycontrolconfig_safety_rule
       __resource);
  ()
