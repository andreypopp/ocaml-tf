(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule__rule__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__or__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__or__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__or__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__or = {
  cost_category : rule__rule__or__or__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__or__or__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  tags : rule__rule__or__or__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule__or__not__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__not__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__not__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__not = {
  cost_category : rule__rule__or__not__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__or__not__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  tags : rule__rule__or__not__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule__or__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__and__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__and__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__and__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__or__and = {
  cost_category : rule__rule__or__and__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__or__and__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  tags : rule__rule__or__and__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule__or = {
  and_ : rule__rule__or__and list;
      [@default []] [@yojson_drop_default Stdlib.( = )] [@key "and"]
      (** and *)
  cost_category : rule__rule__or__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__or__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  not : rule__rule__or__not list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** not *)
  or_ : rule__rule__or__or list;
      [@default []] [@yojson_drop_default Stdlib.( = )] [@key "or"]
      (** or *)
  tags : rule__rule__or__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule__not__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__or__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__or__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__or__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__or = {
  cost_category : rule__rule__not__or__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__not__or__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  tags : rule__rule__not__or__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule__not__not__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__not__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__not__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__not = {
  cost_category : rule__rule__not__not__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__not__not__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  tags : rule__rule__not__not__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule__not__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__and__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__and__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__and__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__not__and = {
  cost_category : rule__rule__not__and__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__not__and__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  tags : rule__rule__not__and__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule__not = {
  and_ : rule__rule__not__and list;
      [@default []] [@yojson_drop_default Stdlib.( = )] [@key "and"]
      (** and *)
  cost_category : rule__rule__not__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__not__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  not : rule__rule__not__not list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** not *)
  or_ : rule__rule__not__or list;
      [@default []] [@yojson_drop_default Stdlib.( = )] [@key "or"]
      (** or *)
  tags : rule__rule__not__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__or__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__or__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__or__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__or = {
  cost_category : rule__rule__and__or__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__and__or__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  tags : rule__rule__and__or__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule__and__not__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__not__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__not__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__not = {
  cost_category : rule__rule__and__not__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__and__not__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  tags : rule__rule__and__not__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule__and__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__and__tags = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__and__dimension = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__and__cost_category = {
  key : string prop;  (** key *)
  match_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** match_options *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type rule__rule__and__and = {
  cost_category : rule__rule__and__and__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__and__and__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  tags : rule__rule__and__and__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule__and = {
  and_ : rule__rule__and__and list;
      [@default []] [@yojson_drop_default Stdlib.( = )] [@key "and"]
      (** and *)
  cost_category : rule__rule__and__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__and__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  not : rule__rule__and__not list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** not *)
  or_ : rule__rule__and__or list;
      [@default []] [@yojson_drop_default Stdlib.( = )] [@key "or"]
      (** or *)
  tags : rule__rule__and__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__rule = {
  and_ : rule__rule__and list;
      [@default []] [@yojson_drop_default Stdlib.( = )] [@key "and"]
      (** and *)
  cost_category : rule__rule__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cost_category *)
  dimension : rule__rule__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  not : rule__rule__not list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** not *)
  or_ : rule__rule__or list;
      [@default []] [@yojson_drop_default Stdlib.( = )] [@key "or"]
      (** or *)
  tags : rule__rule__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tags *)
}

type rule__inherited_value = {
  dimension_key : string prop;  (** dimension_key *)
  dimension_name : string prop;  (** dimension_name *)
}

type rule = {
  inherited_value : rule__inherited_value list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** inherited_value *)
  rule : rule__rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** rule *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type split_charge_rule__parameter = {
  type_ : string prop; [@key "type"]  (** type *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type split_charge_rule = {
  method_ : string prop; [@key "method"]  (** method *)
  parameter : split_charge_rule__parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** parameter *)
  source : string prop;  (** source *)
  targets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** targets *)
}

type aws_ce_cost_category

val aws_ce_cost_category :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cost_category_arn:string prop ->
  unit ->
  aws_ce_cost_category

val yojson_of_aws_ce_cost_category : aws_ce_cost_category -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cost_category_arn : string prop;
  default_value : string prop;
  effective_end : string prop;
  effective_start : string prop;
  id : string prop;
  name : string prop;
  rule : rule list prop;
  rule_version : string prop;
  split_charge_rule : split_charge_rule list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cost_category_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cost_category_arn:string prop ->
  string ->
  t Tf_core.resource
