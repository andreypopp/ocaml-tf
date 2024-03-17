(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafregional_rule_group__activated_rule__action = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_rule_group__activated_rule__action *)

type aws_wafregional_rule_group__activated_rule = {
  priority : float prop;  (** priority *)
  rule_id : string prop;  (** rule_id *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  action : aws_wafregional_rule_group__activated_rule__action list;
}
[@@deriving yojson_of]
(** aws_wafregional_rule_group__activated_rule *)

type aws_wafregional_rule_group = {
  id : string prop option; [@option]  (** id *)
  metric_name : string prop;  (** metric_name *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  activated_rule : aws_wafregional_rule_group__activated_rule list;
}
[@@deriving yojson_of]
(** aws_wafregional_rule_group *)

type t = {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_wafregional_rule_group ?id ?tags ?tags_all ~metric_name ~name
    ~activated_rule __resource_id =
  let __resource_type = "aws_wafregional_rule_group" in
  let __resource =
    ({ id; metric_name; name; tags; tags_all; activated_rule }
      : aws_wafregional_rule_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_rule_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       metric_name =
         Prop.computed __resource_type __resource_id "metric_name";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
