(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__rule__tags = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__tags

[@@@deriving.end]

type rule__rule__or__tags = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__or__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__tags

[@@@deriving.end]

type rule__rule__or__dimension = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__or__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__dimension

[@@@deriving.end]

type rule__rule__or__cost_category = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__or__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or__cost_category

[@@@deriving.end]

type rule__rule__or = {
  cost_category : rule__rule__or__cost_category list;
      [@default []] [@yojson_drop_default ( = )]
  dimension : rule__rule__or__dimension list;
      [@default []] [@yojson_drop_default ( = )]
  tags : rule__rule__or__tags list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__or) -> ()

let yojson_of_rule__rule__or =
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
         if [] = v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__or -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__or

[@@@deriving.end]

type rule__rule__not__tags = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__not__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__tags

[@@@deriving.end]

type rule__rule__not__dimension = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__not__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__dimension

[@@@deriving.end]

type rule__rule__not__cost_category = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__not__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not__cost_category

[@@@deriving.end]

type rule__rule__not = {
  cost_category : rule__rule__not__cost_category list;
      [@default []] [@yojson_drop_default ( = )]
  dimension : rule__rule__not__dimension list;
      [@default []] [@yojson_drop_default ( = )]
  tags : rule__rule__not__tags list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__not) -> ()

let yojson_of_rule__rule__not =
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
         if [] = v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__not -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__not

[@@@deriving.end]

type rule__rule__dimension = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__dimension

[@@@deriving.end]

type rule__rule__cost_category = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__cost_category -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__cost_category

[@@@deriving.end]

type rule__rule__and__tags = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__and__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__tags

[@@@deriving.end]

type rule__rule__and__dimension = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__and__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__dimension

[@@@deriving.end]

type rule__rule__and__cost_category = {
  key : string prop;
  match_options : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_options
           in
           let bnd = "match_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__rule__and__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and__cost_category

[@@@deriving.end]

type rule__rule__and = {
  cost_category : rule__rule__and__cost_category list;
      [@default []] [@yojson_drop_default ( = )]
  dimension : rule__rule__and__dimension list;
      [@default []] [@yojson_drop_default ( = )]
  tags : rule__rule__and__tags list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rule__and) -> ()

let yojson_of_rule__rule__and =
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
         if [] = v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__and__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__rule__and -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rule__and

[@@@deriving.end]

type rule__rule = {
  and_ : rule__rule__and list;
      [@default []] [@yojson_drop_default ( = )] [@key "and"]
  cost_category : rule__rule__cost_category list;
      [@default []] [@yojson_drop_default ( = )]
  dimension : rule__rule__dimension list;
      [@default []] [@yojson_drop_default ( = )]
  not : rule__rule__not list;
      [@default []] [@yojson_drop_default ( = )]
  or_ : rule__rule__or list;
      [@default []] [@yojson_drop_default ( = )] [@key "or"]
  tags : rule__rule__tags list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__tags) v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_or_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__or) v_or_
           in
           let bnd = "or", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_not then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__not) v_not
           in
           let bnd = "not", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cost_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rule__cost_category)
               v_cost_category
           in
           let bnd = "cost_category", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_and_ then bnds
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

type rule__inherited_value = {
  dimension_key : string prop;
  dimension_name : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_dimension_name
         in
         ("dimension_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dimension_key in
         ("dimension_key", arg) :: bnds
       in
       `Assoc bnds
    : rule__inherited_value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__inherited_value

[@@@deriving.end]

type rule = {
  inherited_value : rule__inherited_value list;
      [@default []] [@yojson_drop_default ( = )]
  rule : rule__rule list; [@default []] [@yojson_drop_default ( = )]
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       inherited_value = v_inherited_value;
       rule = v_rule;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         if [] = v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule__rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_inherited_value then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__inherited_value)
               v_inherited_value
           in
           let bnd = "inherited_value", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type split_charge_rule__parameter = {
  type_ : string prop; [@key "type"]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : split_charge_rule__parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_split_charge_rule__parameter

[@@@deriving.end]

type split_charge_rule = {
  method_ : string prop; [@key "method"]
  parameter : split_charge_rule__parameter list;
      [@default []] [@yojson_drop_default ( = )]
  source : string prop;
  targets : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : split_charge_rule) -> ()

let yojson_of_split_charge_rule =
  (function
   | {
       method_ = v_method_;
       parameter = v_parameter;
       source = v_source;
       targets = v_targets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_targets then bnds
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
         if [] = v_parameter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_split_charge_rule__parameter)
               v_parameter
           in
           let bnd = "parameter", arg in
           bnd :: bnds
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
  cost_category_arn : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ce_cost_category) -> ()

let yojson_of_aws_ce_cost_category =
  (function
   | {
       cost_category_arn = v_cost_category_arn;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cost_category_arn
         in
         ("cost_category_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_ce_cost_category -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ce_cost_category

[@@@deriving.end]

let aws_ce_cost_category ?id ?tags ~cost_category_arn () :
    aws_ce_cost_category =
  { cost_category_arn; id; tags }

type t = {
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

let make ?id ?tags ~cost_category_arn __id =
  let __type = "aws_ce_cost_category" in
  let __attrs =
    ({
       tf_name = __id;
       cost_category_arn =
         Prop.computed __type __id "cost_category_arn";
       default_value = Prop.computed __type __id "default_value";
       effective_end = Prop.computed __type __id "effective_end";
       effective_start = Prop.computed __type __id "effective_start";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rule = Prop.computed __type __id "rule";
       rule_version = Prop.computed __type __id "rule_version";
       split_charge_rule =
         Prop.computed __type __id "split_charge_rule";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ce_cost_category
        (aws_ce_cost_category ?id ?tags ~cost_category_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~cost_category_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~cost_category_arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
