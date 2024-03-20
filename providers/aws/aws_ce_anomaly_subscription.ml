(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type subscriber = {
  address : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subscriber) -> ()

let yojson_of_subscriber =
  (function
   | { address = v_address; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : subscriber -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subscriber

[@@@deriving.end]

type threshold_expression__and__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__and__cost_category) -> ()

let yojson_of_threshold_expression__and__cost_category =
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
    : threshold_expression__and__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__and__cost_category

[@@@deriving.end]

type threshold_expression__and__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__and__dimension) -> ()

let yojson_of_threshold_expression__and__dimension =
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
    : threshold_expression__and__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__and__dimension

[@@@deriving.end]

type threshold_expression__and__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__and__tags) -> ()

let yojson_of_threshold_expression__and__tags =
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
    : threshold_expression__and__tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__and__tags

[@@@deriving.end]

type threshold_expression__and = {
  cost_category : threshold_expression__and__cost_category list;
  dimension : threshold_expression__and__dimension list;
  tags : threshold_expression__and__tags list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__and) -> ()

let yojson_of_threshold_expression__and =
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
         let arg =
           yojson_of_list yojson_of_threshold_expression__and__tags
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_threshold_expression__and__dimension
             v_dimension
         in
         ("dimension", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_threshold_expression__and__cost_category
             v_cost_category
         in
         ("cost_category", arg) :: bnds
       in
       `Assoc bnds
    : threshold_expression__and -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__and

[@@@deriving.end]

type threshold_expression__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__cost_category) -> ()

let yojson_of_threshold_expression__cost_category =
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
    : threshold_expression__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__cost_category

[@@@deriving.end]

type threshold_expression__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__dimension) -> ()

let yojson_of_threshold_expression__dimension =
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
    : threshold_expression__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__dimension

[@@@deriving.end]

type threshold_expression__not__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__not__cost_category) -> ()

let yojson_of_threshold_expression__not__cost_category =
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
    : threshold_expression__not__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__not__cost_category

[@@@deriving.end]

type threshold_expression__not__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__not__dimension) -> ()

let yojson_of_threshold_expression__not__dimension =
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
    : threshold_expression__not__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__not__dimension

[@@@deriving.end]

type threshold_expression__not__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__not__tags) -> ()

let yojson_of_threshold_expression__not__tags =
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
    : threshold_expression__not__tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__not__tags

[@@@deriving.end]

type threshold_expression__not = {
  cost_category : threshold_expression__not__cost_category list;
  dimension : threshold_expression__not__dimension list;
  tags : threshold_expression__not__tags list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__not) -> ()

let yojson_of_threshold_expression__not =
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
         let arg =
           yojson_of_list yojson_of_threshold_expression__not__tags
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_threshold_expression__not__dimension
             v_dimension
         in
         ("dimension", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_threshold_expression__not__cost_category
             v_cost_category
         in
         ("cost_category", arg) :: bnds
       in
       `Assoc bnds
    : threshold_expression__not -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__not

[@@@deriving.end]

type threshold_expression__or__cost_category = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__or__cost_category) -> ()

let yojson_of_threshold_expression__or__cost_category =
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
    : threshold_expression__or__cost_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__or__cost_category

[@@@deriving.end]

type threshold_expression__or__dimension = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__or__dimension) -> ()

let yojson_of_threshold_expression__or__dimension =
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
    : threshold_expression__or__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__or__dimension

[@@@deriving.end]

type threshold_expression__or__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__or__tags) -> ()

let yojson_of_threshold_expression__or__tags =
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
    : threshold_expression__or__tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__or__tags

[@@@deriving.end]

type threshold_expression__or = {
  cost_category : threshold_expression__or__cost_category list;
  dimension : threshold_expression__or__dimension list;
  tags : threshold_expression__or__tags list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__or) -> ()

let yojson_of_threshold_expression__or =
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
         let arg =
           yojson_of_list yojson_of_threshold_expression__or__tags
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_threshold_expression__or__dimension
             v_dimension
         in
         ("dimension", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_threshold_expression__or__cost_category
             v_cost_category
         in
         ("cost_category", arg) :: bnds
       in
       `Assoc bnds
    : threshold_expression__or -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__or

[@@@deriving.end]

type threshold_expression__tags = {
  key : string prop option; [@option]
  match_options : string prop list option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression__tags) -> ()

let yojson_of_threshold_expression__tags =
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
    : threshold_expression__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression__tags

[@@@deriving.end]

type threshold_expression = {
  and_ : threshold_expression__and list;
  cost_category : threshold_expression__cost_category list;
  dimension : threshold_expression__dimension list;
  not : threshold_expression__not list;
  or_ : threshold_expression__or list;
  tags : threshold_expression__tags list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_expression) -> ()

let yojson_of_threshold_expression =
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
         let arg =
           yojson_of_list yojson_of_threshold_expression__tags v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_threshold_expression__or v_or_
         in
         ("or_", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_threshold_expression__not v_not
         in
         ("not", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_threshold_expression__dimension
             v_dimension
         in
         ("dimension", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_threshold_expression__cost_category
             v_cost_category
         in
         ("cost_category", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_threshold_expression__and v_and_
         in
         ("and_", arg) :: bnds
       in
       `Assoc bnds
    : threshold_expression -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_expression

[@@@deriving.end]

type aws_ce_anomaly_subscription = {
  account_id : string prop option; [@option]
  frequency : string prop;
  id : string prop option; [@option]
  monitor_arn_list : string prop list;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  subscriber : subscriber list;
  threshold_expression : threshold_expression list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ce_anomaly_subscription) -> ()

let yojson_of_aws_ce_anomaly_subscription =
  (function
   | {
       account_id = v_account_id;
       frequency = v_frequency;
       id = v_id;
       monitor_arn_list = v_monitor_arn_list;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       subscriber = v_subscriber;
       threshold_expression = v_threshold_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_threshold_expression
             v_threshold_expression
         in
         ("threshold_expression", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_subscriber v_subscriber
         in
         ("subscriber", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_monitor_arn_list
         in
         ("monitor_arn_list", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ce_anomaly_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ce_anomaly_subscription

[@@@deriving.end]

let subscriber ~address ~type_ () : subscriber = { address; type_ }

let threshold_expression__and__cost_category ?key ?match_options
    ?values () : threshold_expression__and__cost_category =
  { key; match_options; values }

let threshold_expression__and__dimension ?key ?match_options ?values
    () : threshold_expression__and__dimension =
  { key; match_options; values }

let threshold_expression__and__tags ?key ?match_options ?values () :
    threshold_expression__and__tags =
  { key; match_options; values }

let threshold_expression__and ~cost_category ~dimension ~tags () :
    threshold_expression__and =
  { cost_category; dimension; tags }

let threshold_expression__cost_category ?key ?match_options ?values
    () : threshold_expression__cost_category =
  { key; match_options; values }

let threshold_expression__dimension ?key ?match_options ?values () :
    threshold_expression__dimension =
  { key; match_options; values }

let threshold_expression__not__cost_category ?key ?match_options
    ?values () : threshold_expression__not__cost_category =
  { key; match_options; values }

let threshold_expression__not__dimension ?key ?match_options ?values
    () : threshold_expression__not__dimension =
  { key; match_options; values }

let threshold_expression__not__tags ?key ?match_options ?values () :
    threshold_expression__not__tags =
  { key; match_options; values }

let threshold_expression__not ~cost_category ~dimension ~tags () :
    threshold_expression__not =
  { cost_category; dimension; tags }

let threshold_expression__or__cost_category ?key ?match_options
    ?values () : threshold_expression__or__cost_category =
  { key; match_options; values }

let threshold_expression__or__dimension ?key ?match_options ?values
    () : threshold_expression__or__dimension =
  { key; match_options; values }

let threshold_expression__or__tags ?key ?match_options ?values () :
    threshold_expression__or__tags =
  { key; match_options; values }

let threshold_expression__or ~cost_category ~dimension ~tags () :
    threshold_expression__or =
  { cost_category; dimension; tags }

let threshold_expression__tags ?key ?match_options ?values () :
    threshold_expression__tags =
  { key; match_options; values }

let threshold_expression ~and_ ~cost_category ~dimension ~not ~or_
    ~tags () : threshold_expression =
  { and_; cost_category; dimension; not; or_; tags }

let aws_ce_anomaly_subscription ?account_id ?id ?tags ?tags_all
    ~frequency ~monitor_arn_list ~name ~subscriber
    ~threshold_expression () : aws_ce_anomaly_subscription =
  {
    account_id;
    frequency;
    id;
    monitor_arn_list;
    name;
    tags;
    tags_all;
    subscriber;
    threshold_expression;
  }

type t = {
  account_id : string prop;
  arn : string prop;
  frequency : string prop;
  id : string prop;
  monitor_arn_list : string list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?account_id ?id ?tags ?tags_all ~frequency ~monitor_arn_list
    ~name ~subscriber ~threshold_expression __id =
  let __type = "aws_ce_anomaly_subscription" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       arn = Prop.computed __type __id "arn";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       monitor_arn_list =
         Prop.computed __type __id "monitor_arn_list";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ce_anomaly_subscription
        (aws_ce_anomaly_subscription ?account_id ?id ?tags ?tags_all
           ~frequency ~monitor_arn_list ~name ~subscriber
           ~threshold_expression ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?tags ?tags_all ~frequency
    ~monitor_arn_list ~name ~subscriber ~threshold_expression __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?tags ?tags_all ~frequency ~monitor_arn_list
      ~name ~subscriber ~threshold_expression __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
