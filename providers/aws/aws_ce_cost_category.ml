(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__inherited_value = {
  dimension_key : string prop option; [@option]
  dimension_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__inherited_value) -> ()

let yojson_of_rule__inherited_value =
  (function
   | {
       dimension_key = v_dimension_key;
       dimension_name = v_dimension_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_dimension_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dimension_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dimension_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dimension_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__inherited_value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__inherited_value

[@@@deriving.end]

type rule__rule__and__and__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__and__cost_category) -> ()

let yojson_of_rule__rule__and__and__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__and__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__and__cost_category

[@@@deriving.end]

type rule__rule__and__and__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__and__dimension) -> ()

let yojson_of_rule__rule__and__and__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__and__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__and__dimension

[@@@deriving.end]

type rule__rule__and__and__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__and__tags) -> ()

let yojson_of_rule__rule__and__and__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__and__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__and__tags

[@@@deriving.end]

type rule__rule__and__and = {
  cost_category : rule__rule__and__and__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__and__and__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__and__and__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__and) -> ()

let yojson_of_rule__rule__and__and =
  (function
   | {
       cost_category = v_cost_category;
       dimension = v_dimension;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__and__tags)
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__and__and__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__and__and__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__and -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__and

[@@@deriving.end]

type rule__rule__and__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__cost_category) -> ()

let yojson_of_rule__rule__and__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__cost_category

[@@@deriving.end]

type rule__rule__and__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__dimension) -> ()

let yojson_of_rule__rule__and__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__dimension

[@@@deriving.end]

type rule__rule__and__not__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__not__cost_category) -> ()

let yojson_of_rule__rule__and__not__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__not__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__not__cost_category

[@@@deriving.end]

type rule__rule__and__not__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__not__dimension) -> ()

let yojson_of_rule__rule__and__not__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__not__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__not__dimension

[@@@deriving.end]

type rule__rule__and__not__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__not__tags) -> ()

let yojson_of_rule__rule__and__not__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__not__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__not__tags

[@@@deriving.end]

type rule__rule__and__not = {
  cost_category : rule__rule__and__not__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__and__not__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__and__not__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__not) -> ()

let yojson_of_rule__rule__and__not =
  (function
   | {
       cost_category = v_cost_category;
       dimension = v_dimension;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__not__tags)
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__and__not__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__and__not__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__not -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__not

[@@@deriving.end]

type rule__rule__and__or__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__or__cost_category) -> ()

let yojson_of_rule__rule__and__or__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__or__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__or__cost_category

[@@@deriving.end]

type rule__rule__and__or__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__or__dimension) -> ()

let yojson_of_rule__rule__and__or__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__or__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__or__dimension

[@@@deriving.end]

type rule__rule__and__or__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__or__tags) -> ()

let yojson_of_rule__rule__and__or__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__or__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__or__tags

[@@@deriving.end]

type rule__rule__and__or = {
  cost_category : rule__rule__and__or__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__and__or__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__and__or__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__or) -> ()

let yojson_of_rule__rule__and__or =
  (function
   | {
       cost_category = v_cost_category;
       dimension = v_dimension;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__or__tags)
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__or__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__and__or__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__or -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__or

[@@@deriving.end]

type rule__rule__and__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and__tags) -> ()

let yojson_of_rule__rule__and__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__tags

[@@@deriving.end]

type rule__rule__and = {
  and_ : rule__rule__and__and list;
      [@key "and"] [@default []] [@yojson_drop_default Stdlib.( = )]
  cost_category : rule__rule__and__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__and__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  not : rule__rule__and__not list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  or_ : rule__rule__and__or list;
      [@key "or"] [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__and__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and) -> ()

let yojson_of_rule__rule__and =
  (function
   | {
       and_ = v_and_;
       cost_category = v_cost_category;
       dimension = v_dimension;
       not = v_not;
       or_ = v_or_;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_or_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__or) v_or_
           in
           let bnd = "or", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_not then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__not) v_not
           in
           let bnd = "not", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_and_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__and) v_and_
           in
           let bnd = "and", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and

[@@@deriving.end]

type rule__rule__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__cost_category) -> ()

let yojson_of_rule__rule__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__cost_category -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__cost_category

[@@@deriving.end]

type rule__rule__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__dimension) -> ()

let yojson_of_rule__rule__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__dimension

[@@@deriving.end]

type rule__rule__not__and__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__and__cost_category) -> ()

let yojson_of_rule__rule__not__and__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__and__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__and__cost_category

[@@@deriving.end]

type rule__rule__not__and__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__and__dimension) -> ()

let yojson_of_rule__rule__not__and__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__and__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__and__dimension

[@@@deriving.end]

type rule__rule__not__and__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__and__tags) -> ()

let yojson_of_rule__rule__not__and__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__and__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__and__tags

[@@@deriving.end]

type rule__rule__not__and = {
  cost_category : rule__rule__not__and__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__not__and__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__not__and__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__and) -> ()

let yojson_of_rule__rule__not__and =
  (function
   | {
       cost_category = v_cost_category;
       dimension = v_dimension;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__and__tags)
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__not__and__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__not__and__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__and -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__and

[@@@deriving.end]

type rule__rule__not__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__cost_category) -> ()

let yojson_of_rule__rule__not__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__cost_category

[@@@deriving.end]

type rule__rule__not__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__dimension) -> ()

let yojson_of_rule__rule__not__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__dimension

[@@@deriving.end]

type rule__rule__not__not__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__not__cost_category) -> ()

let yojson_of_rule__rule__not__not__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__not__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__not__cost_category

[@@@deriving.end]

type rule__rule__not__not__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__not__dimension) -> ()

let yojson_of_rule__rule__not__not__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__not__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__not__dimension

[@@@deriving.end]

type rule__rule__not__not__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__not__tags) -> ()

let yojson_of_rule__rule__not__not__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__not__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__not__tags

[@@@deriving.end]

type rule__rule__not__not = {
  cost_category : rule__rule__not__not__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__not__not__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__not__not__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__not) -> ()

let yojson_of_rule__rule__not__not =
  (function
   | {
       cost_category = v_cost_category;
       dimension = v_dimension;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__not__tags)
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__not__not__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__not__not__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__not -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__not

[@@@deriving.end]

type rule__rule__not__or__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__or__cost_category) -> ()

let yojson_of_rule__rule__not__or__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__or__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__or__cost_category

[@@@deriving.end]

type rule__rule__not__or__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__or__dimension) -> ()

let yojson_of_rule__rule__not__or__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__or__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__or__dimension

[@@@deriving.end]

type rule__rule__not__or__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__or__tags) -> ()

let yojson_of_rule__rule__not__or__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__or__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__or__tags

[@@@deriving.end]

type rule__rule__not__or = {
  cost_category : rule__rule__not__or__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__not__or__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__not__or__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__or) -> ()

let yojson_of_rule__rule__not__or =
  (function
   | {
       cost_category = v_cost_category;
       dimension = v_dimension;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__or__tags)
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__or__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__not__or__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__or -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__or

[@@@deriving.end]

type rule__rule__not__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not__tags) -> ()

let yojson_of_rule__rule__not__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__tags

[@@@deriving.end]

type rule__rule__not = {
  and_ : rule__rule__not__and list;
      [@key "and"] [@default []] [@yojson_drop_default Stdlib.( = )]
  cost_category : rule__rule__not__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__not__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  not : rule__rule__not__not list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  or_ : rule__rule__not__or list;
      [@key "or"] [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__not__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not) -> ()

let yojson_of_rule__rule__not =
  (function
   | {
       and_ = v_and_;
       cost_category = v_cost_category;
       dimension = v_dimension;
       not = v_not;
       or_ = v_or_;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_or_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__or) v_or_
           in
           let bnd = "or", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_not then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__not) v_not
           in
           let bnd = "not", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_and_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__and) v_and_
           in
           let bnd = "and", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not

[@@@deriving.end]

type rule__rule__or__and__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__and__cost_category) -> ()

let yojson_of_rule__rule__or__and__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__and__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__and__cost_category

[@@@deriving.end]

type rule__rule__or__and__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__and__dimension) -> ()

let yojson_of_rule__rule__or__and__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__and__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__and__dimension

[@@@deriving.end]

type rule__rule__or__and__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__and__tags) -> ()

let yojson_of_rule__rule__or__and__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__and__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__and__tags

[@@@deriving.end]

type rule__rule__or__and = {
  cost_category : rule__rule__or__and__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__or__and__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__or__and__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__and) -> ()

let yojson_of_rule__rule__or__and =
  (function
   | {
       cost_category = v_cost_category;
       dimension = v_dimension;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__and__tags)
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__and__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__or__and__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__and -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__and

[@@@deriving.end]

type rule__rule__or__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__cost_category) -> ()

let yojson_of_rule__rule__or__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__cost_category

[@@@deriving.end]

type rule__rule__or__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__dimension) -> ()

let yojson_of_rule__rule__or__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__dimension

[@@@deriving.end]

type rule__rule__or__not__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__not__cost_category) -> ()

let yojson_of_rule__rule__or__not__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__not__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__not__cost_category

[@@@deriving.end]

type rule__rule__or__not__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__not__dimension) -> ()

let yojson_of_rule__rule__or__not__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__not__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__not__dimension

[@@@deriving.end]

type rule__rule__or__not__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__not__tags) -> ()

let yojson_of_rule__rule__or__not__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__not__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__not__tags

[@@@deriving.end]

type rule__rule__or__not = {
  cost_category : rule__rule__or__not__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__or__not__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__or__not__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__not) -> ()

let yojson_of_rule__rule__or__not =
  (function
   | {
       cost_category = v_cost_category;
       dimension = v_dimension;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__not__tags)
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__not__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__or__not__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__not -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__not

[@@@deriving.end]

type rule__rule__or__or__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__or__cost_category) -> ()

let yojson_of_rule__rule__or__or__cost_category =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__or__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__or__cost_category

[@@@deriving.end]

type rule__rule__or__or__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__or__dimension) -> ()

let yojson_of_rule__rule__or__or__dimension =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__or__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__or__dimension

[@@@deriving.end]

type rule__rule__or__or__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__or__tags) -> ()

let yojson_of_rule__rule__or__or__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__or__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__or__tags

[@@@deriving.end]

type rule__rule__or__or = {
  cost_category : rule__rule__or__or__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__or__or__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__or__or__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__or) -> ()

let yojson_of_rule__rule__or__or =
  (function
   | {
       cost_category = v_cost_category;
       dimension = v_dimension;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__or__tags)
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__or__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rule__or__or__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__or -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__or

[@@@deriving.end]

type rule__rule__or__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or__tags) -> ()

let yojson_of_rule__rule__or__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__tags

[@@@deriving.end]

type rule__rule__or = {
  and_ : rule__rule__or__and list;
      [@key "and"] [@default []] [@yojson_drop_default Stdlib.( = )]
  cost_category : rule__rule__or__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__or__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  not : rule__rule__or__not list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  or_ : rule__rule__or__or list;
      [@key "or"] [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__or__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or) -> ()

let yojson_of_rule__rule__or =
  (function
   | {
       and_ = v_and_;
       cost_category = v_cost_category;
       dimension = v_dimension;
       not = v_not;
       or_ = v_or_;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_or_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__or) v_or_
           in
           let bnd = "or", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_not then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__not) v_not
           in
           let bnd = "not", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_and_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__and) v_and_
           in
           let bnd = "and", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or

[@@@deriving.end]

type rule__rule__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__tags) -> ()

let yojson_of_rule__rule__tags =
  (function
   | {
       key = v_key;
       match_options = v_match_options;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__tags

[@@@deriving.end]

type rule__rule = {
  and_ : rule__rule__and list;
      [@key "and"] [@default []] [@yojson_drop_default Stdlib.( = )]
  cost_category : rule__rule__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : rule__rule__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  not : rule__rule__not list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  or_ : rule__rule__or list;
      [@key "or"] [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : rule__rule__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule) -> ()

let yojson_of_rule__rule =
  (function
   | {
       and_ = v_and_;
       cost_category = v_cost_category;
       dimension = v_dimension;
       not = v_not;
       or_ = v_or_;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_or_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or) v_or_
           in
           let bnd = "or", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_not then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not) v_not
           in
           let bnd = "not", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_and_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and) v_and_
           in
           let bnd = "and", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule

[@@@deriving.end]

type rule = {
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
  inherited_value : rule__inherited_value list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rule : rule__rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       type_ = v_type_;
       value = v_value;
       inherited_value = v_inherited_value;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule__rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_inherited_value then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__inherited_value)
               v_inherited_value
           in
           let bnd = "inherited_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type split_charge_rule__parameter = {
  type_ : string prop option; [@option] [@key "type"]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : split_charge_rule__parameter) -> ()

let yojson_of_split_charge_rule__parameter =
  (function
   | { type_ = v_type_; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : split_charge_rule__parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_split_charge_rule__parameter

[@@@deriving.end]

type split_charge_rule = {
  method_ : string prop; [@key "method"]
  source : string prop;
  targets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  parameter : split_charge_rule__parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : split_charge_rule) -> ()

let yojson_of_split_charge_rule =
  (function
   | {
       method_ = v_method_;
       source = v_source;
       targets = v_targets;
       parameter = v_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_split_charge_rule__parameter)
               v_parameter
           in
           let bnd = "parameter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_targets then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_targets
           in
           let bnd = "targets", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_method_ in
         ("method", arg) :: bnds
       in
       `Assoc bnds
    : split_charge_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_split_charge_rule

[@@@deriving.end]

type aws_ce_cost_category = {
  default_value : string prop option; [@option]
  effective_start : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  rule_version : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
  split_charge_rule : split_charge_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ce_cost_category) -> ()

let yojson_of_aws_ce_cost_category =
  (function
   | {
       default_value = v_default_value;
       effective_start = v_effective_start;
       id = v_id;
       name = v_name;
       rule_version = v_rule_version;
       tags = v_tags;
       tags_all = v_tags_all;
       rule = v_rule;
       split_charge_rule = v_split_charge_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_split_charge_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_split_charge_rule)
               v_split_charge_rule
           in
           let bnd = "split_charge_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_version in
         ("rule_version", arg) :: bnds
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
         match v_effective_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "effective_start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ce_cost_category -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ce_cost_category

[@@@deriving.end]

let rule__inherited_value ?dimension_key ?dimension_name () :
    rule__inherited_value =
  { dimension_key; dimension_name }

let rule__rule__and__and__cost_category ?key ?match_options ?values
    () : rule__rule__and__and__cost_category =
  { key; match_options; values }

let rule__rule__and__and__dimension ?key ?match_options ?values () :
    rule__rule__and__and__dimension =
  { key; match_options; values }

let rule__rule__and__and__tags ?key ?match_options ?values () :
    rule__rule__and__and__tags =
  { key; match_options; values }

let rule__rule__and__and ?(cost_category = []) ?(dimension = [])
    ?(tags = []) () : rule__rule__and__and =
  { cost_category; dimension; tags }

let rule__rule__and__cost_category ?key ?match_options ?values () :
    rule__rule__and__cost_category =
  { key; match_options; values }

let rule__rule__and__dimension ?key ?match_options ?values () :
    rule__rule__and__dimension =
  { key; match_options; values }

let rule__rule__and__not__cost_category ?key ?match_options ?values
    () : rule__rule__and__not__cost_category =
  { key; match_options; values }

let rule__rule__and__not__dimension ?key ?match_options ?values () :
    rule__rule__and__not__dimension =
  { key; match_options; values }

let rule__rule__and__not__tags ?key ?match_options ?values () :
    rule__rule__and__not__tags =
  { key; match_options; values }

let rule__rule__and__not ?(cost_category = []) ?(dimension = [])
    ?(tags = []) () : rule__rule__and__not =
  { cost_category; dimension; tags }

let rule__rule__and__or__cost_category ?key ?match_options ?values ()
    : rule__rule__and__or__cost_category =
  { key; match_options; values }

let rule__rule__and__or__dimension ?key ?match_options ?values () :
    rule__rule__and__or__dimension =
  { key; match_options; values }

let rule__rule__and__or__tags ?key ?match_options ?values () :
    rule__rule__and__or__tags =
  { key; match_options; values }

let rule__rule__and__or ?(cost_category = []) ?(dimension = [])
    ?(tags = []) () : rule__rule__and__or =
  { cost_category; dimension; tags }

let rule__rule__and__tags ?key ?match_options ?values () :
    rule__rule__and__tags =
  { key; match_options; values }

let rule__rule__and ?(cost_category = []) ?(dimension = [])
    ?(not = []) ?(tags = []) ~and_ ~or_ () : rule__rule__and =
  { and_; cost_category; dimension; not; or_; tags }

let rule__rule__cost_category ?key ?match_options ?values () :
    rule__rule__cost_category =
  { key; match_options; values }

let rule__rule__dimension ?key ?match_options ?values () :
    rule__rule__dimension =
  { key; match_options; values }

let rule__rule__not__and__cost_category ?key ?match_options ?values
    () : rule__rule__not__and__cost_category =
  { key; match_options; values }

let rule__rule__not__and__dimension ?key ?match_options ?values () :
    rule__rule__not__and__dimension =
  { key; match_options; values }

let rule__rule__not__and__tags ?key ?match_options ?values () :
    rule__rule__not__and__tags =
  { key; match_options; values }

let rule__rule__not__and ?(cost_category = []) ?(dimension = [])
    ?(tags = []) () : rule__rule__not__and =
  { cost_category; dimension; tags }

let rule__rule__not__cost_category ?key ?match_options ?values () :
    rule__rule__not__cost_category =
  { key; match_options; values }

let rule__rule__not__dimension ?key ?match_options ?values () :
    rule__rule__not__dimension =
  { key; match_options; values }

let rule__rule__not__not__cost_category ?key ?match_options ?values
    () : rule__rule__not__not__cost_category =
  { key; match_options; values }

let rule__rule__not__not__dimension ?key ?match_options ?values () :
    rule__rule__not__not__dimension =
  { key; match_options; values }

let rule__rule__not__not__tags ?key ?match_options ?values () :
    rule__rule__not__not__tags =
  { key; match_options; values }

let rule__rule__not__not ?(cost_category = []) ?(dimension = [])
    ?(tags = []) () : rule__rule__not__not =
  { cost_category; dimension; tags }

let rule__rule__not__or__cost_category ?key ?match_options ?values ()
    : rule__rule__not__or__cost_category =
  { key; match_options; values }

let rule__rule__not__or__dimension ?key ?match_options ?values () :
    rule__rule__not__or__dimension =
  { key; match_options; values }

let rule__rule__not__or__tags ?key ?match_options ?values () :
    rule__rule__not__or__tags =
  { key; match_options; values }

let rule__rule__not__or ?(cost_category = []) ?(dimension = [])
    ?(tags = []) () : rule__rule__not__or =
  { cost_category; dimension; tags }

let rule__rule__not__tags ?key ?match_options ?values () :
    rule__rule__not__tags =
  { key; match_options; values }

let rule__rule__not ?(cost_category = []) ?(dimension = [])
    ?(not = []) ?(tags = []) ~and_ ~or_ () : rule__rule__not =
  { and_; cost_category; dimension; not; or_; tags }

let rule__rule__or__and__cost_category ?key ?match_options ?values ()
    : rule__rule__or__and__cost_category =
  { key; match_options; values }

let rule__rule__or__and__dimension ?key ?match_options ?values () :
    rule__rule__or__and__dimension =
  { key; match_options; values }

let rule__rule__or__and__tags ?key ?match_options ?values () :
    rule__rule__or__and__tags =
  { key; match_options; values }

let rule__rule__or__and ?(cost_category = []) ?(dimension = [])
    ?(tags = []) () : rule__rule__or__and =
  { cost_category; dimension; tags }

let rule__rule__or__cost_category ?key ?match_options ?values () :
    rule__rule__or__cost_category =
  { key; match_options; values }

let rule__rule__or__dimension ?key ?match_options ?values () :
    rule__rule__or__dimension =
  { key; match_options; values }

let rule__rule__or__not__cost_category ?key ?match_options ?values ()
    : rule__rule__or__not__cost_category =
  { key; match_options; values }

let rule__rule__or__not__dimension ?key ?match_options ?values () :
    rule__rule__or__not__dimension =
  { key; match_options; values }

let rule__rule__or__not__tags ?key ?match_options ?values () :
    rule__rule__or__not__tags =
  { key; match_options; values }

let rule__rule__or__not ?(cost_category = []) ?(dimension = [])
    ?(tags = []) () : rule__rule__or__not =
  { cost_category; dimension; tags }

let rule__rule__or__or__cost_category ?key ?match_options ?values ()
    : rule__rule__or__or__cost_category =
  { key; match_options; values }

let rule__rule__or__or__dimension ?key ?match_options ?values () :
    rule__rule__or__or__dimension =
  { key; match_options; values }

let rule__rule__or__or__tags ?key ?match_options ?values () :
    rule__rule__or__or__tags =
  { key; match_options; values }

let rule__rule__or__or ?(cost_category = []) ?(dimension = [])
    ?(tags = []) () : rule__rule__or__or =
  { cost_category; dimension; tags }

let rule__rule__or__tags ?key ?match_options ?values () :
    rule__rule__or__tags =
  { key; match_options; values }

let rule__rule__or ?(cost_category = []) ?(dimension = [])
    ?(not = []) ?(tags = []) ~and_ ~or_ () : rule__rule__or =
  { and_; cost_category; dimension; not; or_; tags }

let rule__rule__tags ?key ?match_options ?values () :
    rule__rule__tags =
  { key; match_options; values }

let rule__rule ?(cost_category = []) ?(dimension = []) ?(not = [])
    ?(tags = []) ~and_ ~or_ () : rule__rule =
  { and_; cost_category; dimension; not; or_; tags }

let rule ?type_ ?value ?(inherited_value = []) ?(rule = []) () : rule
    =
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
  tf_name : string;
  arn : string prop;
  default_value : string prop;
  effective_end : string prop;
  effective_start : string prop;
  id : string prop;
  name : string prop;
  rule_version : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?default_value ?effective_start ?id ?tags ?tags_all ~name
    ~rule_version ~rule ~split_charge_rule __id =
  let __type = "aws_ce_cost_category" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       default_value = Prop.computed __type __id "default_value";
       effective_end = Prop.computed __type __id "effective_end";
       effective_start = Prop.computed __type __id "effective_start";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rule_version = Prop.computed __type __id "rule_version";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ce_cost_category
        (aws_ce_cost_category ?default_value ?effective_start ?id
           ?tags ?tags_all ~name ~rule_version ~rule
           ~split_charge_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?default_value ?effective_start ?id ?tags
    ?tags_all ~name ~rule_version ~rule ~split_charge_rule __id =
  let (r : _ Tf_core.resource) =
    make ?default_value ?effective_start ?id ?tags ?tags_all ~name
      ~rule_version ~rule ~split_charge_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
