(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_filter__bool_equals = {
  key : string prop;
  value : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__bool_equals) -> ()

let yojson_of_advanced_filter__bool_equals =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__bool_equals ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__bool_equals

[@@@deriving.end]

type advanced_filter__is_not_null = { key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__is_not_null) -> ()

let yojson_of_advanced_filter__is_not_null =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__is_not_null ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__is_not_null

[@@@deriving.end]

type advanced_filter__is_null_or_undefined = { key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__is_null_or_undefined) -> ()

let yojson_of_advanced_filter__is_null_or_undefined =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__is_null_or_undefined ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__is_null_or_undefined

[@@@deriving.end]

type advanced_filter__number_greater_than = {
  key : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__number_greater_than) -> ()

let yojson_of_advanced_filter__number_greater_than =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__number_greater_than ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__number_greater_than

[@@@deriving.end]

type advanced_filter__number_greater_than_or_equals = {
  key : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : advanced_filter__number_greater_than_or_equals) -> ()

let yojson_of_advanced_filter__number_greater_than_or_equals =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__number_greater_than_or_equals ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__number_greater_than_or_equals

[@@@deriving.end]

type advanced_filter__number_in = {
  key : string prop;
  values : float prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__number_in) -> ()

let yojson_of_advanced_filter__number_in =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_float) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__number_in -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__number_in

[@@@deriving.end]

type advanced_filter__number_in_range = {
  key : string prop;
  values : float prop list list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__number_in_range) -> ()

let yojson_of_advanced_filter__number_in_range =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_list (yojson_of_prop yojson_of_float))
             v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__number_in_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__number_in_range

[@@@deriving.end]

type advanced_filter__number_less_than = {
  key : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__number_less_than) -> ()

let yojson_of_advanced_filter__number_less_than =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__number_less_than ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__number_less_than

[@@@deriving.end]

type advanced_filter__number_less_than_or_equals = {
  key : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__number_less_than_or_equals) -> ()

let yojson_of_advanced_filter__number_less_than_or_equals =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__number_less_than_or_equals ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__number_less_than_or_equals

[@@@deriving.end]

type advanced_filter__number_not_in = {
  key : string prop;
  values : float prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__number_not_in) -> ()

let yojson_of_advanced_filter__number_not_in =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_float) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__number_not_in ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__number_not_in

[@@@deriving.end]

type advanced_filter__number_not_in_range = {
  key : string prop;
  values : float prop list list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__number_not_in_range) -> ()

let yojson_of_advanced_filter__number_not_in_range =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_list (yojson_of_prop yojson_of_float))
             v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__number_not_in_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__number_not_in_range

[@@@deriving.end]

type advanced_filter__string_begins_with = {
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__string_begins_with) -> ()

let yojson_of_advanced_filter__string_begins_with =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__string_begins_with ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__string_begins_with

[@@@deriving.end]

type advanced_filter__string_contains = {
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__string_contains) -> ()

let yojson_of_advanced_filter__string_contains =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__string_contains ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__string_contains

[@@@deriving.end]

type advanced_filter__string_ends_with = {
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__string_ends_with) -> ()

let yojson_of_advanced_filter__string_ends_with =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__string_ends_with ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__string_ends_with

[@@@deriving.end]

type advanced_filter__string_in = {
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__string_in) -> ()

let yojson_of_advanced_filter__string_in =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__string_in -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__string_in

[@@@deriving.end]

type advanced_filter__string_not_begins_with = {
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__string_not_begins_with) -> ()

let yojson_of_advanced_filter__string_not_begins_with =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__string_not_begins_with ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__string_not_begins_with

[@@@deriving.end]

type advanced_filter__string_not_contains = {
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__string_not_contains) -> ()

let yojson_of_advanced_filter__string_not_contains =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__string_not_contains ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__string_not_contains

[@@@deriving.end]

type advanced_filter__string_not_ends_with = {
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__string_not_ends_with) -> ()

let yojson_of_advanced_filter__string_not_ends_with =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__string_not_ends_with ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__string_not_ends_with

[@@@deriving.end]

type advanced_filter__string_not_in = {
  key : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter__string_not_in) -> ()

let yojson_of_advanced_filter__string_not_in =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter__string_not_in ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter__string_not_in

[@@@deriving.end]

type advanced_filter = {
  bool_equals : advanced_filter__bool_equals list;
  is_not_null : advanced_filter__is_not_null list;
  is_null_or_undefined : advanced_filter__is_null_or_undefined list;
  number_greater_than : advanced_filter__number_greater_than list;
  number_greater_than_or_equals :
    advanced_filter__number_greater_than_or_equals list;
  number_in : advanced_filter__number_in list;
  number_in_range : advanced_filter__number_in_range list;
  number_less_than : advanced_filter__number_less_than list;
  number_less_than_or_equals :
    advanced_filter__number_less_than_or_equals list;
  number_not_in : advanced_filter__number_not_in list;
  number_not_in_range : advanced_filter__number_not_in_range list;
  string_begins_with : advanced_filter__string_begins_with list;
  string_contains : advanced_filter__string_contains list;
  string_ends_with : advanced_filter__string_ends_with list;
  string_in : advanced_filter__string_in list;
  string_not_begins_with :
    advanced_filter__string_not_begins_with list;
  string_not_contains : advanced_filter__string_not_contains list;
  string_not_ends_with : advanced_filter__string_not_ends_with list;
  string_not_in : advanced_filter__string_not_in list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_filter) -> ()

let yojson_of_advanced_filter =
  (function
   | {
       bool_equals = v_bool_equals;
       is_not_null = v_is_not_null;
       is_null_or_undefined = v_is_null_or_undefined;
       number_greater_than = v_number_greater_than;
       number_greater_than_or_equals =
         v_number_greater_than_or_equals;
       number_in = v_number_in;
       number_in_range = v_number_in_range;
       number_less_than = v_number_less_than;
       number_less_than_or_equals = v_number_less_than_or_equals;
       number_not_in = v_number_not_in;
       number_not_in_range = v_number_not_in_range;
       string_begins_with = v_string_begins_with;
       string_contains = v_string_contains;
       string_ends_with = v_string_ends_with;
       string_in = v_string_in;
       string_not_begins_with = v_string_not_begins_with;
       string_not_contains = v_string_not_contains;
       string_not_ends_with = v_string_not_ends_with;
       string_not_in = v_string_not_in;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_filter__string_not_in
             v_string_not_in
         in
         ("string_not_in", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_filter__string_not_ends_with
             v_string_not_ends_with
         in
         ("string_not_ends_with", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_filter__string_not_contains
             v_string_not_contains
         in
         ("string_not_contains", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_filter__string_not_begins_with
             v_string_not_begins_with
         in
         ("string_not_begins_with", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_filter__string_in
             v_string_in
         in
         ("string_in", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_filter__string_ends_with
             v_string_ends_with
         in
         ("string_ends_with", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_filter__string_contains
             v_string_contains
         in
         ("string_contains", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_filter__string_begins_with
             v_string_begins_with
         in
         ("string_begins_with", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_filter__number_not_in_range
             v_number_not_in_range
         in
         ("number_not_in_range", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_filter__number_not_in
             v_number_not_in
         in
         ("number_not_in", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_filter__number_less_than_or_equals
             v_number_less_than_or_equals
         in
         ("number_less_than_or_equals", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_filter__number_less_than
             v_number_less_than
         in
         ("number_less_than", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_filter__number_in_range
             v_number_in_range
         in
         ("number_in_range", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_filter__number_in
             v_number_in
         in
         ("number_in", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_filter__number_greater_than_or_equals
             v_number_greater_than_or_equals
         in
         ("number_greater_than_or_equals", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_filter__number_greater_than
             v_number_greater_than
         in
         ("number_greater_than", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_filter__is_null_or_undefined
             v_is_null_or_undefined
         in
         ("is_null_or_undefined", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_filter__is_not_null
             v_is_not_null
         in
         ("is_not_null", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_filter__bool_equals
             v_bool_equals
         in
         ("bool_equals", arg) :: bnds
       in
       `Assoc bnds
    : advanced_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_filter

[@@@deriving.end]

type azure_function_endpoint = {
  function_id : string prop;
  max_events_per_batch : float prop option; [@option]
  preferred_batch_size_in_kilobytes : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_function_endpoint) -> ()

let yojson_of_azure_function_endpoint =
  (function
   | {
       function_id = v_function_id;
       max_events_per_batch = v_max_events_per_batch;
       preferred_batch_size_in_kilobytes =
         v_preferred_batch_size_in_kilobytes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_preferred_batch_size_in_kilobytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "preferred_batch_size_in_kilobytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_events_per_batch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_events_per_batch", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_id in
         ("function_id", arg) :: bnds
       in
       `Assoc bnds
    : azure_function_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_function_endpoint

[@@@deriving.end]

type dead_letter_identity = {
  type_ : string prop; [@key "type"]
  user_assigned_identity : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dead_letter_identity) -> ()

let yojson_of_dead_letter_identity =
  (function
   | {
       type_ = v_type_;
       user_assigned_identity = v_user_assigned_identity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_assigned_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : dead_letter_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dead_letter_identity

[@@@deriving.end]

type delivery_identity = {
  type_ : string prop; [@key "type"]
  user_assigned_identity : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_identity) -> ()

let yojson_of_delivery_identity =
  (function
   | {
       type_ = v_type_;
       user_assigned_identity = v_user_assigned_identity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_assigned_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : delivery_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_identity

[@@@deriving.end]

type delivery_property = {
  header_name : string prop;
  secret : bool prop option; [@option]
  source_field : string prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_property) -> ()

let yojson_of_delivery_property =
  (function
   | {
       header_name = v_header_name;
       secret = v_secret;
       source_field = v_source_field;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_source_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "secret", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : delivery_property -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_property

[@@@deriving.end]

type retry_policy = {
  event_time_to_live : float prop;
  max_delivery_attempts : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retry_policy) -> ()

let yojson_of_retry_policy =
  (function
   | {
       event_time_to_live = v_event_time_to_live;
       max_delivery_attempts = v_max_delivery_attempts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_delivery_attempts
         in
         ("max_delivery_attempts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_event_time_to_live
         in
         ("event_time_to_live", arg) :: bnds
       in
       `Assoc bnds
    : retry_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retry_policy

[@@@deriving.end]

type storage_blob_dead_letter_destination = {
  storage_account_id : string prop;
  storage_blob_container_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_blob_dead_letter_destination) -> ()

let yojson_of_storage_blob_dead_letter_destination =
  (function
   | {
       storage_account_id = v_storage_account_id;
       storage_blob_container_name = v_storage_blob_container_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_storage_blob_container_name
         in
         ("storage_blob_container_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       `Assoc bnds
    : storage_blob_dead_letter_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_blob_dead_letter_destination

[@@@deriving.end]

type storage_queue_endpoint = {
  queue_message_time_to_live_in_seconds : float prop option;
      [@option]
  queue_name : string prop;
  storage_account_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_queue_endpoint) -> ()

let yojson_of_storage_queue_endpoint =
  (function
   | {
       queue_message_time_to_live_in_seconds =
         v_queue_message_time_to_live_in_seconds;
       queue_name = v_queue_name;
       storage_account_id = v_storage_account_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_name in
         ("queue_name", arg) :: bnds
       in
       let bnds =
         match v_queue_message_time_to_live_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "queue_message_time_to_live_in_seconds", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_queue_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_queue_endpoint

[@@@deriving.end]

type subject_filter = {
  case_sensitive : bool prop option; [@option]
  subject_begins_with : string prop option; [@option]
  subject_ends_with : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subject_filter) -> ()

let yojson_of_subject_filter =
  (function
   | {
       case_sensitive = v_case_sensitive;
       subject_begins_with = v_subject_begins_with;
       subject_ends_with = v_subject_ends_with;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subject_ends_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject_ends_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject_begins_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject_begins_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_case_sensitive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "case_sensitive", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : subject_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subject_filter

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type webhook_endpoint = {
  active_directory_app_id_or_uri : string prop option; [@option]
  active_directory_tenant_id : string prop option; [@option]
  max_events_per_batch : float prop option; [@option]
  preferred_batch_size_in_kilobytes : float prop option; [@option]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhook_endpoint) -> ()

let yojson_of_webhook_endpoint =
  (function
   | {
       active_directory_app_id_or_uri =
         v_active_directory_app_id_or_uri;
       active_directory_tenant_id = v_active_directory_tenant_id;
       max_events_per_batch = v_max_events_per_batch;
       preferred_batch_size_in_kilobytes =
         v_preferred_batch_size_in_kilobytes;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_preferred_batch_size_in_kilobytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "preferred_batch_size_in_kilobytes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_events_per_batch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_events_per_batch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_active_directory_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "active_directory_tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_active_directory_app_id_or_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "active_directory_app_id_or_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : webhook_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhook_endpoint

[@@@deriving.end]

type azurerm_eventgrid_system_topic_event_subscription = {
  advanced_filtering_on_arrays_enabled : bool prop option; [@option]
  event_delivery_schema : string prop option; [@option]
  eventhub_endpoint_id : string prop option; [@option]
  expiration_time_utc : string prop option; [@option]
  hybrid_connection_endpoint_id : string prop option; [@option]
  id : string prop option; [@option]
  included_event_types : string prop list option; [@option]
  labels : string prop list option; [@option]
  name : string prop;
  resource_group_name : string prop;
  service_bus_queue_endpoint_id : string prop option; [@option]
  service_bus_topic_endpoint_id : string prop option; [@option]
  system_topic : string prop;
  advanced_filter : advanced_filter list;
  azure_function_endpoint : azure_function_endpoint list;
  dead_letter_identity : dead_letter_identity list;
  delivery_identity : delivery_identity list;
  delivery_property : delivery_property list;
  retry_policy : retry_policy list;
  storage_blob_dead_letter_destination :
    storage_blob_dead_letter_destination list;
  storage_queue_endpoint : storage_queue_endpoint list;
  subject_filter : subject_filter list;
  timeouts : timeouts option;
  webhook_endpoint : webhook_endpoint list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_eventgrid_system_topic_event_subscription) -> ()

let yojson_of_azurerm_eventgrid_system_topic_event_subscription =
  (function
   | {
       advanced_filtering_on_arrays_enabled =
         v_advanced_filtering_on_arrays_enabled;
       event_delivery_schema = v_event_delivery_schema;
       eventhub_endpoint_id = v_eventhub_endpoint_id;
       expiration_time_utc = v_expiration_time_utc;
       hybrid_connection_endpoint_id =
         v_hybrid_connection_endpoint_id;
       id = v_id;
       included_event_types = v_included_event_types;
       labels = v_labels;
       name = v_name;
       resource_group_name = v_resource_group_name;
       service_bus_queue_endpoint_id =
         v_service_bus_queue_endpoint_id;
       service_bus_topic_endpoint_id =
         v_service_bus_topic_endpoint_id;
       system_topic = v_system_topic;
       advanced_filter = v_advanced_filter;
       azure_function_endpoint = v_azure_function_endpoint;
       dead_letter_identity = v_dead_letter_identity;
       delivery_identity = v_delivery_identity;
       delivery_property = v_delivery_property;
       retry_policy = v_retry_policy;
       storage_blob_dead_letter_destination =
         v_storage_blob_dead_letter_destination;
       storage_queue_endpoint = v_storage_queue_endpoint;
       subject_filter = v_subject_filter;
       timeouts = v_timeouts;
       webhook_endpoint = v_webhook_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_webhook_endpoint
             v_webhook_endpoint
         in
         ("webhook_endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_subject_filter v_subject_filter
         in
         ("subject_filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_queue_endpoint
             v_storage_queue_endpoint
         in
         ("storage_queue_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_storage_blob_dead_letter_destination
             v_storage_blob_dead_letter_destination
         in
         ("storage_blob_dead_letter_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_retry_policy v_retry_policy
         in
         ("retry_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_delivery_property
             v_delivery_property
         in
         ("delivery_property", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_delivery_identity
             v_delivery_identity
         in
         ("delivery_identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dead_letter_identity
             v_dead_letter_identity
         in
         ("dead_letter_identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_azure_function_endpoint
             v_azure_function_endpoint
         in
         ("azure_function_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_filter v_advanced_filter
         in
         ("advanced_filter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_system_topic in
         ("system_topic", arg) :: bnds
       in
       let bnds =
         match v_service_bus_topic_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_bus_topic_endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_bus_queue_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_bus_queue_endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_included_event_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "included_event_types", arg in
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
         match v_hybrid_connection_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hybrid_connection_endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration_time_utc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_time_utc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eventhub_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eventhub_endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_delivery_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_delivery_schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_advanced_filtering_on_arrays_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "advanced_filtering_on_arrays_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_eventgrid_system_topic_event_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_eventgrid_system_topic_event_subscription

[@@@deriving.end]

let advanced_filter__bool_equals ~key ~value () :
    advanced_filter__bool_equals =
  { key; value }

let advanced_filter__is_not_null ~key () :
    advanced_filter__is_not_null =
  { key }

let advanced_filter__is_null_or_undefined ~key () :
    advanced_filter__is_null_or_undefined =
  { key }

let advanced_filter__number_greater_than ~key ~value () :
    advanced_filter__number_greater_than =
  { key; value }

let advanced_filter__number_greater_than_or_equals ~key ~value () :
    advanced_filter__number_greater_than_or_equals =
  { key; value }

let advanced_filter__number_in ~key ~values () :
    advanced_filter__number_in =
  { key; values }

let advanced_filter__number_in_range ~key ~values () :
    advanced_filter__number_in_range =
  { key; values }

let advanced_filter__number_less_than ~key ~value () :
    advanced_filter__number_less_than =
  { key; value }

let advanced_filter__number_less_than_or_equals ~key ~value () :
    advanced_filter__number_less_than_or_equals =
  { key; value }

let advanced_filter__number_not_in ~key ~values () :
    advanced_filter__number_not_in =
  { key; values }

let advanced_filter__number_not_in_range ~key ~values () :
    advanced_filter__number_not_in_range =
  { key; values }

let advanced_filter__string_begins_with ~key ~values () :
    advanced_filter__string_begins_with =
  { key; values }

let advanced_filter__string_contains ~key ~values () :
    advanced_filter__string_contains =
  { key; values }

let advanced_filter__string_ends_with ~key ~values () :
    advanced_filter__string_ends_with =
  { key; values }

let advanced_filter__string_in ~key ~values () :
    advanced_filter__string_in =
  { key; values }

let advanced_filter__string_not_begins_with ~key ~values () :
    advanced_filter__string_not_begins_with =
  { key; values }

let advanced_filter__string_not_contains ~key ~values () :
    advanced_filter__string_not_contains =
  { key; values }

let advanced_filter__string_not_ends_with ~key ~values () :
    advanced_filter__string_not_ends_with =
  { key; values }

let advanced_filter__string_not_in ~key ~values () :
    advanced_filter__string_not_in =
  { key; values }

let advanced_filter ?(bool_equals = []) ?(is_not_null = [])
    ?(is_null_or_undefined = []) ?(number_greater_than = [])
    ?(number_greater_than_or_equals = []) ?(number_in = [])
    ?(number_in_range = []) ?(number_less_than = [])
    ?(number_less_than_or_equals = []) ?(number_not_in = [])
    ?(number_not_in_range = []) ?(string_begins_with = [])
    ?(string_contains = []) ?(string_ends_with = [])
    ?(string_in = []) ?(string_not_begins_with = [])
    ?(string_not_contains = []) ?(string_not_ends_with = [])
    ?(string_not_in = []) () : advanced_filter =
  {
    bool_equals;
    is_not_null;
    is_null_or_undefined;
    number_greater_than;
    number_greater_than_or_equals;
    number_in;
    number_in_range;
    number_less_than;
    number_less_than_or_equals;
    number_not_in;
    number_not_in_range;
    string_begins_with;
    string_contains;
    string_ends_with;
    string_in;
    string_not_begins_with;
    string_not_contains;
    string_not_ends_with;
    string_not_in;
  }

let azure_function_endpoint ?max_events_per_batch
    ?preferred_batch_size_in_kilobytes ~function_id () :
    azure_function_endpoint =
  {
    function_id;
    max_events_per_batch;
    preferred_batch_size_in_kilobytes;
  }

let dead_letter_identity ?user_assigned_identity ~type_ () :
    dead_letter_identity =
  { type_; user_assigned_identity }

let delivery_identity ?user_assigned_identity ~type_ () :
    delivery_identity =
  { type_; user_assigned_identity }

let delivery_property ?secret ?source_field ?value ~header_name
    ~type_ () : delivery_property =
  { header_name; secret; source_field; type_; value }

let retry_policy ~event_time_to_live ~max_delivery_attempts () :
    retry_policy =
  { event_time_to_live; max_delivery_attempts }

let storage_blob_dead_letter_destination ~storage_account_id
    ~storage_blob_container_name () :
    storage_blob_dead_letter_destination =
  { storage_account_id; storage_blob_container_name }

let storage_queue_endpoint ?queue_message_time_to_live_in_seconds
    ~queue_name ~storage_account_id () : storage_queue_endpoint =
  {
    queue_message_time_to_live_in_seconds;
    queue_name;
    storage_account_id;
  }

let subject_filter ?case_sensitive ?subject_begins_with
    ?subject_ends_with () : subject_filter =
  { case_sensitive; subject_begins_with; subject_ends_with }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let webhook_endpoint ?active_directory_app_id_or_uri
    ?active_directory_tenant_id ?max_events_per_batch
    ?preferred_batch_size_in_kilobytes ~url () : webhook_endpoint =
  {
    active_directory_app_id_or_uri;
    active_directory_tenant_id;
    max_events_per_batch;
    preferred_batch_size_in_kilobytes;
    url;
  }

let azurerm_eventgrid_system_topic_event_subscription
    ?advanced_filtering_on_arrays_enabled ?event_delivery_schema
    ?eventhub_endpoint_id ?expiration_time_utc
    ?hybrid_connection_endpoint_id ?id ?included_event_types ?labels
    ?service_bus_queue_endpoint_id ?service_bus_topic_endpoint_id
    ?(advanced_filter = []) ?(azure_function_endpoint = [])
    ?(dead_letter_identity = []) ?(delivery_identity = [])
    ?(delivery_property = []) ?(retry_policy = [])
    ?(storage_blob_dead_letter_destination = [])
    ?(storage_queue_endpoint = []) ?(subject_filter = []) ?timeouts
    ?(webhook_endpoint = []) ~name ~resource_group_name ~system_topic
    () : azurerm_eventgrid_system_topic_event_subscription =
  {
    advanced_filtering_on_arrays_enabled;
    event_delivery_schema;
    eventhub_endpoint_id;
    expiration_time_utc;
    hybrid_connection_endpoint_id;
    id;
    included_event_types;
    labels;
    name;
    resource_group_name;
    service_bus_queue_endpoint_id;
    service_bus_topic_endpoint_id;
    system_topic;
    advanced_filter;
    azure_function_endpoint;
    dead_letter_identity;
    delivery_identity;
    delivery_property;
    retry_policy;
    storage_blob_dead_letter_destination;
    storage_queue_endpoint;
    subject_filter;
    timeouts;
    webhook_endpoint;
  }

type t = {
  tf_name : string;
  advanced_filtering_on_arrays_enabled : bool prop;
  event_delivery_schema : string prop;
  eventhub_endpoint_id : string prop;
  expiration_time_utc : string prop;
  hybrid_connection_endpoint_id : string prop;
  id : string prop;
  included_event_types : string list prop;
  labels : string list prop;
  name : string prop;
  resource_group_name : string prop;
  service_bus_queue_endpoint_id : string prop;
  service_bus_topic_endpoint_id : string prop;
  system_topic : string prop;
}

let make ?advanced_filtering_on_arrays_enabled ?event_delivery_schema
    ?eventhub_endpoint_id ?expiration_time_utc
    ?hybrid_connection_endpoint_id ?id ?included_event_types ?labels
    ?service_bus_queue_endpoint_id ?service_bus_topic_endpoint_id
    ?(advanced_filter = []) ?(azure_function_endpoint = [])
    ?(dead_letter_identity = []) ?(delivery_identity = [])
    ?(delivery_property = []) ?(retry_policy = [])
    ?(storage_blob_dead_letter_destination = [])
    ?(storage_queue_endpoint = []) ?(subject_filter = []) ?timeouts
    ?(webhook_endpoint = []) ~name ~resource_group_name ~system_topic
    __id =
  let __type = "azurerm_eventgrid_system_topic_event_subscription" in
  let __attrs =
    ({
       tf_name = __id;
       advanced_filtering_on_arrays_enabled =
         Prop.computed __type __id
           "advanced_filtering_on_arrays_enabled";
       event_delivery_schema =
         Prop.computed __type __id "event_delivery_schema";
       eventhub_endpoint_id =
         Prop.computed __type __id "eventhub_endpoint_id";
       expiration_time_utc =
         Prop.computed __type __id "expiration_time_utc";
       hybrid_connection_endpoint_id =
         Prop.computed __type __id "hybrid_connection_endpoint_id";
       id = Prop.computed __type __id "id";
       included_event_types =
         Prop.computed __type __id "included_event_types";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_bus_queue_endpoint_id =
         Prop.computed __type __id "service_bus_queue_endpoint_id";
       service_bus_topic_endpoint_id =
         Prop.computed __type __id "service_bus_topic_endpoint_id";
       system_topic = Prop.computed __type __id "system_topic";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventgrid_system_topic_event_subscription
        (azurerm_eventgrid_system_topic_event_subscription
           ?advanced_filtering_on_arrays_enabled
           ?event_delivery_schema ?eventhub_endpoint_id
           ?expiration_time_utc ?hybrid_connection_endpoint_id ?id
           ?included_event_types ?labels
           ?service_bus_queue_endpoint_id
           ?service_bus_topic_endpoint_id ~advanced_filter
           ~azure_function_endpoint ~dead_letter_identity
           ~delivery_identity ~delivery_property ~retry_policy
           ~storage_blob_dead_letter_destination
           ~storage_queue_endpoint ~subject_filter ?timeouts
           ~webhook_endpoint ~name ~resource_group_name ~system_topic
           ());
    attrs = __attrs;
  }

let register ?tf_module ?advanced_filtering_on_arrays_enabled
    ?event_delivery_schema ?eventhub_endpoint_id ?expiration_time_utc
    ?hybrid_connection_endpoint_id ?id ?included_event_types ?labels
    ?service_bus_queue_endpoint_id ?service_bus_topic_endpoint_id
    ?(advanced_filter = []) ?(azure_function_endpoint = [])
    ?(dead_letter_identity = []) ?(delivery_identity = [])
    ?(delivery_property = []) ?(retry_policy = [])
    ?(storage_blob_dead_letter_destination = [])
    ?(storage_queue_endpoint = []) ?(subject_filter = []) ?timeouts
    ?(webhook_endpoint = []) ~name ~resource_group_name ~system_topic
    __id =
  let (r : _ Tf_core.resource) =
    make ?advanced_filtering_on_arrays_enabled ?event_delivery_schema
      ?eventhub_endpoint_id ?expiration_time_utc
      ?hybrid_connection_endpoint_id ?id ?included_event_types
      ?labels ?service_bus_queue_endpoint_id
      ?service_bus_topic_endpoint_id ~advanced_filter
      ~azure_function_endpoint ~dead_letter_identity
      ~delivery_identity ~delivery_property ~retry_policy
      ~storage_blob_dead_letter_destination ~storage_queue_endpoint
      ~subject_filter ?timeouts ~webhook_endpoint ~name
      ~resource_group_name ~system_topic __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
