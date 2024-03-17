(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_waf_rule_group__activated_rule__action = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_rule_group__activated_rule__action *)

type aws_waf_rule_group__activated_rule = {
  priority : float;  (** priority *)
  rule_id : string;  (** rule_id *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  action : aws_waf_rule_group__activated_rule__action list;
}
[@@deriving yojson_of]
(** aws_waf_rule_group__activated_rule *)

type aws_waf_rule_group = {
  id : string option; [@option]  (** id *)
  metric_name : string;  (** metric_name *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  activated_rule : aws_waf_rule_group__activated_rule list;
}
[@@deriving yojson_of]
(** aws_waf_rule_group *)

let aws_waf_rule_group ?id ?tags ?tags_all ~metric_name ~name
    ~activated_rule __resource_id =
  let __resource_type = "aws_waf_rule_group" in
  let __resource =
    { id; metric_name; name; tags; tags_all; activated_rule }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_rule_group __resource);
  ()
