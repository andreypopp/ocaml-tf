(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter__and__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__and__cost_category) -> ()

let yojson_of_filter__and__cost_category =
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
    : filter__and__cost_category -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__and__cost_category

[@@@deriving.end]

type filter__and__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__and__dimension) -> ()

let yojson_of_filter__and__dimension =
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
    : filter__and__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__and__dimension

[@@@deriving.end]

type filter__and__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__and__tags) -> ()

let yojson_of_filter__and__tags =
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
    : filter__and__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__and__tags

[@@@deriving.end]

type filter__and = {
  cost_category : filter__and__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : filter__and__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : filter__and__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__and) -> ()

let yojson_of_filter__and =
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
             (yojson_of_list yojson_of_filter__and__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__and__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__and__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : filter__and -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__and

[@@@deriving.end]

type filter__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__cost_category) -> ()

let yojson_of_filter__cost_category =
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
    : filter__cost_category -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__cost_category

[@@@deriving.end]

type filter__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__dimension) -> ()

let yojson_of_filter__dimension =
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
    : filter__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__dimension

[@@@deriving.end]

type filter__not__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__not__cost_category) -> ()

let yojson_of_filter__not__cost_category =
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
    : filter__not__cost_category -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__not__cost_category

[@@@deriving.end]

type filter__not__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__not__dimension) -> ()

let yojson_of_filter__not__dimension =
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
    : filter__not__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__not__dimension

[@@@deriving.end]

type filter__not__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__not__tags) -> ()

let yojson_of_filter__not__tags =
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
    : filter__not__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__not__tags

[@@@deriving.end]

type filter__not = {
  cost_category : filter__not__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : filter__not__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : filter__not__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__not) -> ()

let yojson_of_filter__not =
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
             (yojson_of_list yojson_of_filter__not__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__not__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__not__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : filter__not -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__not

[@@@deriving.end]

type filter__or__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__or__cost_category) -> ()

let yojson_of_filter__or__cost_category =
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
    : filter__or__cost_category -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__or__cost_category

[@@@deriving.end]

type filter__or__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__or__dimension) -> ()

let yojson_of_filter__or__dimension =
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
    : filter__or__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__or__dimension

[@@@deriving.end]

type filter__or__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__or__tags) -> ()

let yojson_of_filter__or__tags =
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
    : filter__or__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__or__tags

[@@@deriving.end]

type filter__or = {
  cost_category : filter__or__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : filter__or__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : filter__or__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__or) -> ()

let yojson_of_filter__or =
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
             (yojson_of_list yojson_of_filter__or__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__or__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__or__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : filter__or -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__or

[@@@deriving.end]

type filter__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter__tags) -> ()

let yojson_of_filter__tags =
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
    : filter__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter__tags

[@@@deriving.end]

type filter = {
  and_ : filter__and list;
      [@key "and"] [@default []] [@yojson_drop_default Stdlib.( = )]
  cost_category : filter__cost_category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dimension : filter__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  not : filter__not list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  or_ : filter__or list;
      [@key "or"] [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : filter__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
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
             (yojson_of_list yojson_of_filter__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_or_ then bnds
         else
           let arg = (yojson_of_list yojson_of_filter__or) v_or_ in
           let bnd = "or", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_not then bnds
         else
           let arg = (yojson_of_list yojson_of_filter__not) v_not in
           let bnd = "not", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__dimension) v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_and_ then bnds
         else
           let arg = (yojson_of_list yojson_of_filter__and) v_and_ in
           let bnd = "and", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type sort_by = {
  key : string prop option; [@option]
  sort_order : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sort_by) -> ()

let yojson_of_sort_by =
  (function
   | { key = v_key; sort_order = v_sort_order } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sort_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sort_order", arg in
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
    : sort_by -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sort_by

[@@@deriving.end]

type time_period = {
  end_ : string prop; [@key "end"]
  start : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : time_period) -> ()

let yojson_of_time_period =
  (function
   | { end_ = v_end_; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_ in
         ("end", arg) :: bnds
       in
       `Assoc bnds
    : time_period -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_time_period

[@@@deriving.end]

type aws_ce_tags = {
  id : string prop option; [@option]
  search_string : string prop option; [@option]
  tag_key : string prop option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sort_by : sort_by list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  time_period : time_period list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ce_tags) -> ()

let yojson_of_aws_ce_tags =
  (function
   | {
       id = v_id;
       search_string = v_search_string;
       tag_key = v_tag_key;
       filter = v_filter;
       sort_by = v_sort_by;
       time_period = v_time_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_time_period then bnds
         else
           let arg =
             (yojson_of_list yojson_of_time_period) v_time_period
           in
           let bnd = "time_period", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sort_by then bnds
         else
           let arg = (yojson_of_list yojson_of_sort_by) v_sort_by in
           let bnd = "sort_by", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tag_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_search_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "search_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ce_tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ce_tags

[@@@deriving.end]

let filter__and__cost_category ?key ?match_options ?values () :
    filter__and__cost_category =
  { key; match_options; values }

let filter__and__dimension ?key ?match_options ?values () :
    filter__and__dimension =
  { key; match_options; values }

let filter__and__tags ?key ?match_options ?values () :
    filter__and__tags =
  { key; match_options; values }

let filter__and ?(cost_category = []) ?(dimension = []) ?(tags = [])
    () : filter__and =
  { cost_category; dimension; tags }

let filter__cost_category ?key ?match_options ?values () :
    filter__cost_category =
  { key; match_options; values }

let filter__dimension ?key ?match_options ?values () :
    filter__dimension =
  { key; match_options; values }

let filter__not__cost_category ?key ?match_options ?values () :
    filter__not__cost_category =
  { key; match_options; values }

let filter__not__dimension ?key ?match_options ?values () :
    filter__not__dimension =
  { key; match_options; values }

let filter__not__tags ?key ?match_options ?values () :
    filter__not__tags =
  { key; match_options; values }

let filter__not ?(cost_category = []) ?(dimension = []) ?(tags = [])
    () : filter__not =
  { cost_category; dimension; tags }

let filter__or__cost_category ?key ?match_options ?values () :
    filter__or__cost_category =
  { key; match_options; values }

let filter__or__dimension ?key ?match_options ?values () :
    filter__or__dimension =
  { key; match_options; values }

let filter__or__tags ?key ?match_options ?values () :
    filter__or__tags =
  { key; match_options; values }

let filter__or ?(cost_category = []) ?(dimension = []) ?(tags = [])
    () : filter__or =
  { cost_category; dimension; tags }

let filter__tags ?key ?match_options ?values () : filter__tags =
  { key; match_options; values }

let filter ?(cost_category = []) ?(dimension = []) ?(not = [])
    ?(tags = []) ~and_ ~or_ () : filter =
  { and_; cost_category; dimension; not; or_; tags }

let sort_by ?key ?sort_order () : sort_by = { key; sort_order }
let time_period ~end_ ~start () : time_period = { end_; start }

let aws_ce_tags ?id ?search_string ?tag_key ?(filter = [])
    ?(sort_by = []) ~time_period () : aws_ce_tags =
  { id; search_string; tag_key; filter; sort_by; time_period }

type t = {
  tf_name : string;
  id : string prop;
  search_string : string prop;
  tag_key : string prop;
  tags : string list prop;
}

let make ?id ?search_string ?tag_key ?(filter = []) ?(sort_by = [])
    ~time_period __id =
  let __type = "aws_ce_tags" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       search_string = Prop.computed __type __id "search_string";
       tag_key = Prop.computed __type __id "tag_key";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ce_tags
        (aws_ce_tags ?id ?search_string ?tag_key ~filter ~sort_by
           ~time_period ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?search_string ?tag_key ?(filter = [])
    ?(sort_by = []) ~time_period __id =
  let (r : _ Tf_core.resource) =
    make ?id ?search_string ?tag_key ~filter ~sort_by ~time_period
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
