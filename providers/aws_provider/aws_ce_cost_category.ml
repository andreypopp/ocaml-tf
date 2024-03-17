(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ce_cost_category__rule__inherited_value = {
  dimension_key : string option; [@option]  (** dimension_key *)
  dimension_name : string option; [@option]  (** dimension_name *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__inherited_value *)

type aws_ce_cost_category__rule__rule__and__cost_category = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__and__cost_category *)

type aws_ce_cost_category__rule__rule__and__dimension = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__and__dimension *)

type aws_ce_cost_category__rule__rule__and__tags = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
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
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__cost_category *)

type aws_ce_cost_category__rule__rule__dimension = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__dimension *)

type aws_ce_cost_category__rule__rule__not__cost_category = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__not__cost_category *)

type aws_ce_cost_category__rule__rule__not__dimension = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__not__dimension *)

type aws_ce_cost_category__rule__rule__not__tags = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
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
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__or__cost_category *)

type aws_ce_cost_category__rule__rule__or__dimension = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule__rule__or__dimension *)

type aws_ce_cost_category__rule__rule__or__tags = {
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
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
  key : string option; [@option]  (** key *)
  match_options : string list option; [@option]  (** match_options *)
  values : string list option; [@option]  (** values *)
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
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : string option; [@option]  (** value *)
  inherited_value : aws_ce_cost_category__rule__inherited_value list;
  rule : aws_ce_cost_category__rule__rule list;
}
[@@deriving yojson_of]
(** aws_ce_cost_category__rule *)

type aws_ce_cost_category__split_charge_rule__parameter = {
  type_ : string option; [@option] [@key "type"]  (** type *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_ce_cost_category__split_charge_rule__parameter *)

type aws_ce_cost_category__split_charge_rule = {
  method_ : string; [@key "method"]  (** method *)
  source : string;  (** source *)
  targets : string list;  (** targets *)
  parameter : aws_ce_cost_category__split_charge_rule__parameter list;
}
[@@deriving yojson_of]
(** aws_ce_cost_category__split_charge_rule *)

type aws_ce_cost_category = {
  default_value : string option; [@option]  (** default_value *)
  name : string;  (** name *)
  rule_version : string;  (** rule_version *)
  tags : (string * string) list option; [@option]  (** tags *)
  rule : aws_ce_cost_category__rule list;
  split_charge_rule : aws_ce_cost_category__split_charge_rule list;
}
[@@deriving yojson_of]
(** aws_ce_cost_category *)

let aws_ce_cost_category ?default_value ?tags ~name ~rule_version
    ~rule ~split_charge_rule __resource_id =
  let __resource_type = "aws_ce_cost_category" in
  let __resource =
    {
      default_value;
      name;
      rule_version;
      tags;
      rule;
      split_charge_rule;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ce_cost_category __resource);
  ()
