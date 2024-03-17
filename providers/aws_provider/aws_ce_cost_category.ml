(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ce_cost_category__rule__inherited_value = {
  dimension_key : string prop option; [@option]  (** dimension_key *)
  dimension_name : string prop option; [@option]
      (** dimension_name *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__inherited_value *)

type aws_ce_cost_category__rule__rule__and__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__and__cost_category *)

type aws_ce_cost_category__rule__rule__and__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__and__dimension *)

type aws_ce_cost_category__rule__rule__and__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__and__tags *)

type aws_ce_cost_category__rule__rule__and = {
  cost_category :
    aws_ce_cost_category__rule__rule__and__cost_category list;
  dimension : aws_ce_cost_category__rule__rule__and__dimension list;
  tags : aws_ce_cost_category__rule__rule__and__tags list;
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__and *)

type aws_ce_cost_category__rule__rule__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__cost_category *)

type aws_ce_cost_category__rule__rule__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__dimension *)

type aws_ce_cost_category__rule__rule__not__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__not__cost_category *)

type aws_ce_cost_category__rule__rule__not__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__not__dimension *)

type aws_ce_cost_category__rule__rule__not__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__not__tags *)

type aws_ce_cost_category__rule__rule__not = {
  cost_category :
    aws_ce_cost_category__rule__rule__not__cost_category list;
  dimension : aws_ce_cost_category__rule__rule__not__dimension list;
  tags : aws_ce_cost_category__rule__rule__not__tags list;
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__not *)

type aws_ce_cost_category__rule__rule__or__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__or__cost_category *)

type aws_ce_cost_category__rule__rule__or__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__or__dimension *)

type aws_ce_cost_category__rule__rule__or__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__or__tags *)

type aws_ce_cost_category__rule__rule__or = {
  cost_category :
    aws_ce_cost_category__rule__rule__or__cost_category list;
  dimension : aws_ce_cost_category__rule__rule__or__dimension list;
  tags : aws_ce_cost_category__rule__rule__or__tags list;
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__or *)

type aws_ce_cost_category__rule__rule__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__tags *)

type aws_ce_cost_category__rule__rule = {
  and_ : aws_ce_cost_category__rule__rule__and list;
  cost_category :
    aws_ce_cost_category__rule__rule__cost_category list;
  dimension : aws_ce_cost_category__rule__rule__dimension list;
  not : aws_ce_cost_category__rule__rule__not list;
  or_ : aws_ce_cost_category__rule__rule__or list;
  tags : aws_ce_cost_category__rule__rule__tags list;
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule *)

type aws_ce_cost_category__rule = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
  inherited_value : aws_ce_cost_category__rule__inherited_value list;
  rule : aws_ce_cost_category__rule__rule list;
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule *)

type aws_ce_cost_category__split_charge_rule__parameter = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__split_charge_rule__parameter *)

type aws_ce_cost_category__split_charge_rule = {
  method_ : string prop; [@key "method"]  (** method *)
  source : string prop;  (** source *)
  targets : string prop list;  (** targets *)
  parameter : aws_ce_cost_category__split_charge_rule__parameter list;
}
[@@deriving yojson_of]
(** aws_ce_cost_category__split_charge_rule *)

type aws_ce_cost_category = {
  default_value : string prop option; [@option]  (** default_value *)
  effective_start : string prop option; [@option]
      (** effective_start *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rule_version : string prop;  (** rule_version *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  rule : aws_ce_cost_category__rule list;
  split_charge_rule : aws_ce_cost_category__split_charge_rule list;
}
[@@deriving yojson_of]
(** aws_ce_cost_category *)

let aws_ce_cost_category ?default_value ?effective_start ?id ?tags
    ?tags_all ~name ~rule_version ~rule ~split_charge_rule
    __resource_id =
  let __resource_type = "aws_ce_cost_category" in
  let __resource =
    {
      default_value;
      effective_start;
      id;
      name;
      rule_version;
      tags;
      tags_all;
      rule;
      split_charge_rule;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ce_cost_category __resource);
  ()
