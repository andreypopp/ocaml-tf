(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rule__inherited_value = {
  dimension_key : string prop option; [@option]  (** dimension_key *)
  dimension_name : string prop option; [@option]
      (** dimension_name *)
}
[@@deriving yojson_of]
(** rule__inherited_value *)

type rule__rule__and__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__and__cost_category *)

type rule__rule__and__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__and__dimension *)

type rule__rule__and__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__and__tags *)

type rule__rule__and = {
  cost_category : rule__rule__and__cost_category list;
  dimension : rule__rule__and__dimension list;
  tags : rule__rule__and__tags list;
}
[@@deriving yojson_of]
(** rule__rule__and *)

type rule__rule__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__cost_category *)

type rule__rule__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__dimension *)

type rule__rule__not__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__not__cost_category *)

type rule__rule__not__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__not__dimension *)

type rule__rule__not__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__not__tags *)

type rule__rule__not = {
  cost_category : rule__rule__not__cost_category list;
  dimension : rule__rule__not__dimension list;
  tags : rule__rule__not__tags list;
}
[@@deriving yojson_of]
(** rule__rule__not *)

type rule__rule__or__cost_category = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__or__cost_category *)

type rule__rule__or__dimension = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__or__dimension *)

type rule__rule__or__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__or__tags *)

type rule__rule__or = {
  cost_category : rule__rule__or__cost_category list;
  dimension : rule__rule__or__dimension list;
  tags : rule__rule__or__tags list;
}
[@@deriving yojson_of]
(** rule__rule__or *)

type rule__rule__tags = {
  key : string prop option; [@option]  (** key *)
  match_options : string prop list option; [@option]
      (** match_options *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** rule__rule__tags *)

type rule__rule = {
  and_ : rule__rule__and list;
  cost_category : rule__rule__cost_category list;
  dimension : rule__rule__dimension list;
  not : rule__rule__not list;
  or_ : rule__rule__or list;
  tags : rule__rule__tags list;
}
[@@deriving yojson_of]
(** rule__rule *)

type rule = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
  inherited_value : rule__inherited_value list;
  rule : rule__rule list;
}
[@@deriving yojson_of]
(** rule *)

type split_charge_rule__parameter = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** split_charge_rule__parameter *)

type split_charge_rule = {
  method_ : string prop; [@key "method"]  (** method *)
  source : string prop;  (** source *)
  targets : string prop list;  (** targets *)
  parameter : split_charge_rule__parameter list;
}
[@@deriving yojson_of]
(** split_charge_rule *)

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
  rule : rule list;
  split_charge_rule : split_charge_rule list;
}
[@@deriving yojson_of]
(** aws_ce_cost_category *)

let rule__inherited_value ?dimension_key ?dimension_name () :
    rule__inherited_value =
  { dimension_key; dimension_name }

let rule__rule__and__cost_category ?key ?match_options ?values () :
    rule__rule__and__cost_category =
  { key; match_options; values }

let rule__rule__and__dimension ?key ?match_options ?values () :
    rule__rule__and__dimension =
  { key; match_options; values }

let rule__rule__and__tags ?key ?match_options ?values () :
    rule__rule__and__tags =
  { key; match_options; values }

let rule__rule__and ~cost_category ~dimension ~tags () :
    rule__rule__and =
  { cost_category; dimension; tags }

let rule__rule__cost_category ?key ?match_options ?values () :
    rule__rule__cost_category =
  { key; match_options; values }

let rule__rule__dimension ?key ?match_options ?values () :
    rule__rule__dimension =
  { key; match_options; values }

let rule__rule__not__cost_category ?key ?match_options ?values () :
    rule__rule__not__cost_category =
  { key; match_options; values }

let rule__rule__not__dimension ?key ?match_options ?values () :
    rule__rule__not__dimension =
  { key; match_options; values }

let rule__rule__not__tags ?key ?match_options ?values () :
    rule__rule__not__tags =
  { key; match_options; values }

let rule__rule__not ~cost_category ~dimension ~tags () :
    rule__rule__not =
  { cost_category; dimension; tags }

let rule__rule__or__cost_category ?key ?match_options ?values () :
    rule__rule__or__cost_category =
  { key; match_options; values }

let rule__rule__or__dimension ?key ?match_options ?values () :
    rule__rule__or__dimension =
  { key; match_options; values }

let rule__rule__or__tags ?key ?match_options ?values () :
    rule__rule__or__tags =
  { key; match_options; values }

let rule__rule__or ~cost_category ~dimension ~tags () :
    rule__rule__or =
  { cost_category; dimension; tags }

let rule__rule__tags ?key ?match_options ?values () :
    rule__rule__tags =
  { key; match_options; values }

let rule__rule ~and_ ~cost_category ~dimension ~not ~or_ ~tags () :
    rule__rule =
  { and_; cost_category; dimension; not; or_; tags }

let rule ?type_ ?value ~inherited_value ~rule () : rule =
  { type_; value; inherited_value; rule }

let split_charge_rule__parameter ?type_ ?values () :
    split_charge_rule__parameter =
  { type_; values }

let split_charge_rule ~method_ ~source ~targets ~parameter () :
    split_charge_rule =
  { method_; source; targets; parameter }

let aws_ce_cost_category ?default_value ?effective_start ?id ?tags
    ?tags_all ~name ~rule_version ~rule ~split_charge_rule () :
    aws_ce_cost_category =
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

type t = {
  arn : string prop;
  default_value : string prop;
  effective_end : string prop;
  effective_start : string prop;
  id : string prop;
  name : string prop;
  rule_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?default_value ?effective_start ?id ?tags
    ?tags_all ~name ~rule_version ~rule ~split_charge_rule
    __resource_id =
  let __resource_type = "aws_ce_cost_category" in
  let __resource =
    aws_ce_cost_category ?default_value ?effective_start ?id ?tags
      ?tags_all ~name ~rule_version ~rule ~split_charge_rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ce_cost_category __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_value =
         Prop.computed __resource_type __resource_id "default_value";
       effective_end =
         Prop.computed __resource_type __resource_id "effective_end";
       effective_start =
         Prop.computed __resource_type __resource_id
           "effective_start";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       rule_version =
         Prop.computed __resource_type __resource_id "rule_version";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
