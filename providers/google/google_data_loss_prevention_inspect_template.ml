(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type inspect_config__custom_info_types__dictionary__cloud_storage_path = {
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__custom_info_types__dictionary__cloud_storage_path) ->
  ()

let yojson_of_inspect_config__custom_info_types__dictionary__cloud_storage_path
    =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__custom_info_types__dictionary__cloud_storage_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__custom_info_types__dictionary__cloud_storage_path

[@@@deriving.end]

type inspect_config__custom_info_types__dictionary__word_list = {
  words : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_config__custom_info_types__dictionary__word_list) ->
  ()

let yojson_of_inspect_config__custom_info_types__dictionary__word_list
    =
  (function
   | { words = v_words } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_words
         in
         ("words", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__custom_info_types__dictionary__word_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__custom_info_types__dictionary__word_list

[@@@deriving.end]

type inspect_config__custom_info_types__dictionary = {
  cloud_storage_path :
    inspect_config__custom_info_types__dictionary__cloud_storage_path
    list;
  word_list :
    inspect_config__custom_info_types__dictionary__word_list list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config__custom_info_types__dictionary) -> ()

let yojson_of_inspect_config__custom_info_types__dictionary =
  (function
   | {
       cloud_storage_path = v_cloud_storage_path;
       word_list = v_word_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__custom_info_types__dictionary__word_list
             v_word_list
         in
         ("word_list", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__custom_info_types__dictionary__cloud_storage_path
             v_cloud_storage_path
         in
         ("cloud_storage_path", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__custom_info_types__dictionary ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__custom_info_types__dictionary

[@@@deriving.end]

type inspect_config__custom_info_types__info_type__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__custom_info_types__info_type__sensitivity_score) ->
  ()

let yojson_of_inspect_config__custom_info_types__info_type__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__custom_info_types__info_type__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__custom_info_types__info_type__sensitivity_score

[@@@deriving.end]

type inspect_config__custom_info_types__info_type = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    inspect_config__custom_info_types__info_type__sensitivity_score
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config__custom_info_types__info_type) -> ()

let yojson_of_inspect_config__custom_info_types__info_type =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__custom_info_types__info_type__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__custom_info_types__info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__custom_info_types__info_type

[@@@deriving.end]

type inspect_config__custom_info_types__regex = {
  group_indexes : float prop list option; [@option]
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config__custom_info_types__regex) -> ()

let yojson_of_inspect_config__custom_info_types__regex =
  (function
   | { group_indexes = v_group_indexes; pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         match v_group_indexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "group_indexes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_config__custom_info_types__regex ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__custom_info_types__regex

[@@@deriving.end]

type inspect_config__custom_info_types__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_config__custom_info_types__sensitivity_score) -> ()

let yojson_of_inspect_config__custom_info_types__sensitivity_score =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__custom_info_types__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__custom_info_types__sensitivity_score

[@@@deriving.end]

type inspect_config__custom_info_types__stored_type = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_config__custom_info_types__stored_type) -> ()

let yojson_of_inspect_config__custom_info_types__stored_type =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__custom_info_types__stored_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__custom_info_types__stored_type

[@@@deriving.end]

type inspect_config__custom_info_types__surrogate_type = unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_config__custom_info_types__surrogate_type) -> ()

let yojson_of_inspect_config__custom_info_types__surrogate_type =
  (yojson_of_unit
    : inspect_config__custom_info_types__surrogate_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__custom_info_types__surrogate_type

[@@@deriving.end]

type inspect_config__custom_info_types = {
  exclusion_type : string prop option; [@option]
  likelihood : string prop option; [@option]
  dictionary : inspect_config__custom_info_types__dictionary list;
  info_type : inspect_config__custom_info_types__info_type list;
  regex : inspect_config__custom_info_types__regex list;
  sensitivity_score :
    inspect_config__custom_info_types__sensitivity_score list;
  stored_type : inspect_config__custom_info_types__stored_type list;
  surrogate_type :
    inspect_config__custom_info_types__surrogate_type list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config__custom_info_types) -> ()

let yojson_of_inspect_config__custom_info_types =
  (function
   | {
       exclusion_type = v_exclusion_type;
       likelihood = v_likelihood;
       dictionary = v_dictionary;
       info_type = v_info_type;
       regex = v_regex;
       sensitivity_score = v_sensitivity_score;
       stored_type = v_stored_type;
       surrogate_type = v_surrogate_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__custom_info_types__surrogate_type
             v_surrogate_type
         in
         ("surrogate_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__custom_info_types__stored_type
             v_stored_type
         in
         ("stored_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__custom_info_types__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__custom_info_types__regex
             v_regex
         in
         ("regex", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__custom_info_types__info_type
             v_info_type
         in
         ("info_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__custom_info_types__dictionary
             v_dictionary
         in
         ("dictionary", arg) :: bnds
       in
       let bnds =
         match v_likelihood with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "likelihood", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclusion_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exclusion_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_config__custom_info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__custom_info_types

[@@@deriving.end]

type inspect_config__info_types__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config__info_types__sensitivity_score) -> ()

let yojson_of_inspect_config__info_types__sensitivity_score =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__info_types__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__info_types__sensitivity_score

[@@@deriving.end]

type inspect_config__info_types = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    inspect_config__info_types__sensitivity_score list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config__info_types) -> ()

let yojson_of_inspect_config__info_types =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__info_types__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__info_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__info_types

[@@@deriving.end]

type inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score) ->
  ()

let yojson_of_inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score

[@@@deriving.end]

type inspect_config__limits__max_findings_per_info_type__info_type = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__limits__max_findings_per_info_type__info_type) ->
  ()

let yojson_of_inspect_config__limits__max_findings_per_info_type__info_type
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__limits__max_findings_per_info_type__info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__limits__max_findings_per_info_type__info_type

[@@@deriving.end]

type inspect_config__limits__max_findings_per_info_type = {
  max_findings : float prop;
  info_type :
    inspect_config__limits__max_findings_per_info_type__info_type
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_config__limits__max_findings_per_info_type) -> ()

let yojson_of_inspect_config__limits__max_findings_per_info_type =
  (function
   | { max_findings = v_max_findings; info_type = v_info_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__limits__max_findings_per_info_type__info_type
             v_info_type
         in
         ("info_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_findings in
         ("max_findings", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__limits__max_findings_per_info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__limits__max_findings_per_info_type

[@@@deriving.end]

type inspect_config__limits = {
  max_findings_per_item : float prop;
  max_findings_per_request : float prop;
  max_findings_per_info_type :
    inspect_config__limits__max_findings_per_info_type list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config__limits) -> ()

let yojson_of_inspect_config__limits =
  (function
   | {
       max_findings_per_item = v_max_findings_per_item;
       max_findings_per_request = v_max_findings_per_request;
       max_findings_per_info_type = v_max_findings_per_info_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__limits__max_findings_per_info_type
             v_max_findings_per_info_type
         in
         ("max_findings_per_info_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_findings_per_request
         in
         ("max_findings_per_request", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_findings_per_item
         in
         ("max_findings_per_item", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__limits -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__limits

[@@@deriving.end]

type inspect_config__rule_set__info_types__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_config__rule_set__info_types__sensitivity_score) ->
  ()

let yojson_of_inspect_config__rule_set__info_types__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__info_types__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__info_types__sensitivity_score

[@@@deriving.end]

type inspect_config__rule_set__info_types = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    inspect_config__rule_set__info_types__sensitivity_score list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config__rule_set__info_types) -> ()

let yojson_of_inspect_config__rule_set__info_types =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__info_types__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__rule_set__info_types

[@@@deriving.end]

type inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path = {
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path) ->
  ()

let yojson_of_inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path

[@@@deriving.end]

type inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list = {
  words : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list) ->
  ()

let yojson_of_inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    =
  (function
   | { words = v_words } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_words
         in
         ("words", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list

[@@@deriving.end]

type inspect_config__rule_set__rules__exclusion_rule__dictionary = {
  cloud_storage_path :
    inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    list;
  word_list :
    inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__rule_set__rules__exclusion_rule__dictionary) ->
  ()

let yojson_of_inspect_config__rule_set__rules__exclusion_rule__dictionary
    =
  (function
   | {
       cloud_storage_path = v_cloud_storage_path;
       word_list = v_word_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
             v_word_list
         in
         ("word_list", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
             v_cloud_storage_path
         in
         ("cloud_storage_path", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__exclusion_rule__dictionary ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__exclusion_rule__dictionary

[@@@deriving.end]

type inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex = {
  group_indexes : float prop list option; [@option]
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex) ->
  ()

let yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    =
  (function
   | { group_indexes = v_group_indexes; pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         match v_group_indexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "group_indexes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex

[@@@deriving.end]

type inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity = {
  window_after : float prop option; [@option]
  window_before : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity) ->
  ()

let yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    =
  (function
   | {
       window_after = v_window_after;
       window_before = v_window_before;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_window_before with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "window_before", arg in
             bnd :: bnds
       in
       let bnds =
         match v_window_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "window_after", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity

[@@@deriving.end]

type inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword = {
  hotword_regex :
    inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    list;
  proximity :
    inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword) ->
  ()

let yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    =
  (function
   | { hotword_regex = v_hotword_regex; proximity = v_proximity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
             v_proximity
         in
         ("proximity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
             v_hotword_regex
         in
         ("hotword_regex", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword

[@@@deriving.end]

type inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score) ->
  ()

let yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score

[@@@deriving.end]

type inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types) ->
  ()

let yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types

[@@@deriving.end]

type inspect_config__rule_set__rules__exclusion_rule__exclude_info_types = {
  info_types :
    inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__rule_set__rules__exclusion_rule__exclude_info_types) ->
  ()

let yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    =
  (function
   | { info_types = v_info_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
             v_info_types
         in
         ("info_types", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__exclusion_rule__exclude_info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_info_types

[@@@deriving.end]

type inspect_config__rule_set__rules__exclusion_rule__regex = {
  group_indexes : float prop list option; [@option]
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_config__rule_set__rules__exclusion_rule__regex) ->
  ()

let yojson_of_inspect_config__rule_set__rules__exclusion_rule__regex
    =
  (function
   | { group_indexes = v_group_indexes; pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         match v_group_indexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "group_indexes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__exclusion_rule__regex ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__exclusion_rule__regex

[@@@deriving.end]

type inspect_config__rule_set__rules__exclusion_rule = {
  matching_type : string prop;
  dictionary :
    inspect_config__rule_set__rules__exclusion_rule__dictionary list;
  exclude_by_hotword :
    inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    list;
  exclude_info_types :
    inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    list;
  regex : inspect_config__rule_set__rules__exclusion_rule__regex list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_config__rule_set__rules__exclusion_rule) -> ()

let yojson_of_inspect_config__rule_set__rules__exclusion_rule =
  (function
   | {
       matching_type = v_matching_type;
       dictionary = v_dictionary;
       exclude_by_hotword = v_exclude_by_hotword;
       exclude_info_types = v_exclude_info_types;
       regex = v_regex;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__exclusion_rule__regex
             v_regex
         in
         ("regex", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
             v_exclude_info_types
         in
         ("exclude_info_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
             v_exclude_by_hotword
         in
         ("exclude_by_hotword", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__exclusion_rule__dictionary
             v_dictionary
         in
         ("dictionary", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_matching_type in
         ("matching_type", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__exclusion_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__rule_set__rules__exclusion_rule

[@@@deriving.end]

type inspect_config__rule_set__rules__hotword_rule__hotword_regex = {
  group_indexes : float prop list option; [@option]
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__rule_set__rules__hotword_rule__hotword_regex) ->
  ()

let yojson_of_inspect_config__rule_set__rules__hotword_rule__hotword_regex
    =
  (function
   | { group_indexes = v_group_indexes; pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         match v_group_indexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "group_indexes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__hotword_rule__hotword_regex ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__hotword_rule__hotword_regex

[@@@deriving.end]

type inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment = {
  fixed_likelihood : string prop option; [@option]
  relative_likelihood : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment) ->
  ()

let yojson_of_inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    =
  (function
   | {
       fixed_likelihood = v_fixed_likelihood;
       relative_likelihood = v_relative_likelihood;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_relative_likelihood with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "relative_likelihood", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fixed_likelihood with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fixed_likelihood", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment

[@@@deriving.end]

type inspect_config__rule_set__rules__hotword_rule__proximity = {
  window_after : float prop option; [@option]
  window_before : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_config__rule_set__rules__hotword_rule__proximity) ->
  ()

let yojson_of_inspect_config__rule_set__rules__hotword_rule__proximity
    =
  (function
   | {
       window_after = v_window_after;
       window_before = v_window_before;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_window_before with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "window_before", arg in
             bnd :: bnds
       in
       let bnds =
         match v_window_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "window_after", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__hotword_rule__proximity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_config__rule_set__rules__hotword_rule__proximity

[@@@deriving.end]

type inspect_config__rule_set__rules__hotword_rule = {
  hotword_regex :
    inspect_config__rule_set__rules__hotword_rule__hotword_regex list;
  likelihood_adjustment :
    inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    list;
  proximity :
    inspect_config__rule_set__rules__hotword_rule__proximity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config__rule_set__rules__hotword_rule) -> ()

let yojson_of_inspect_config__rule_set__rules__hotword_rule =
  (function
   | {
       hotword_regex = v_hotword_regex;
       likelihood_adjustment = v_likelihood_adjustment;
       proximity = v_proximity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__hotword_rule__proximity
             v_proximity
         in
         ("proximity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
             v_likelihood_adjustment
         in
         ("likelihood_adjustment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__hotword_rule__hotword_regex
             v_hotword_regex
         in
         ("hotword_regex", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules__hotword_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__rule_set__rules__hotword_rule

[@@@deriving.end]

type inspect_config__rule_set__rules = {
  exclusion_rule :
    inspect_config__rule_set__rules__exclusion_rule list;
  hotword_rule : inspect_config__rule_set__rules__hotword_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config__rule_set__rules) -> ()

let yojson_of_inspect_config__rule_set__rules =
  (function
   | {
       exclusion_rule = v_exclusion_rule;
       hotword_rule = v_hotword_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__hotword_rule
             v_hotword_rule
         in
         ("hotword_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__rules__exclusion_rule
             v_exclusion_rule
         in
         ("exclusion_rule", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set__rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__rule_set__rules

[@@@deriving.end]

type inspect_config__rule_set = {
  info_types : inspect_config__rule_set__info_types list;
  rules : inspect_config__rule_set__rules list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config__rule_set) -> ()

let yojson_of_inspect_config__rule_set =
  (function
   | { info_types = v_info_types; rules = v_rules } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_inspect_config__rule_set__rules
             v_rules
         in
         ("rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_inspect_config__rule_set__info_types
             v_info_types
         in
         ("info_types", arg) :: bnds
       in
       `Assoc bnds
    : inspect_config__rule_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config__rule_set

[@@@deriving.end]

type inspect_config = {
  content_options : string prop list option; [@option]
  exclude_info_types : bool prop option; [@option]
  include_quote : bool prop option; [@option]
  min_likelihood : string prop option; [@option]
  custom_info_types : inspect_config__custom_info_types list;
  info_types : inspect_config__info_types list;
  limits : inspect_config__limits list;
  rule_set : inspect_config__rule_set list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_config) -> ()

let yojson_of_inspect_config =
  (function
   | {
       content_options = v_content_options;
       exclude_info_types = v_exclude_info_types;
       include_quote = v_include_quote;
       min_likelihood = v_min_likelihood;
       custom_info_types = v_custom_info_types;
       info_types = v_info_types;
       limits = v_limits;
       rule_set = v_rule_set;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_inspect_config__rule_set
             v_rule_set
         in
         ("rule_set", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_inspect_config__limits v_limits
         in
         ("limits", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_inspect_config__info_types
             v_info_types
         in
         ("info_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_inspect_config__custom_info_types
             v_custom_info_types
         in
         ("custom_info_types", arg) :: bnds
       in
       let bnds =
         match v_min_likelihood with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_likelihood", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_quote with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_quote", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_info_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_info_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "content_options", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_data_loss_prevention_inspect_template = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  parent : string prop;
  template_id : string prop option; [@option]
  inspect_config : inspect_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_loss_prevention_inspect_template) -> ()

let yojson_of_google_data_loss_prevention_inspect_template =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       parent = v_parent;
       template_id = v_template_id;
       inspect_config = v_inspect_config;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_inspect_config v_inspect_config
         in
         ("inspect_config", arg) :: bnds
       in
       let bnds =
         match v_template_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_data_loss_prevention_inspect_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_loss_prevention_inspect_template

[@@@deriving.end]

let inspect_config__custom_info_types__dictionary__cloud_storage_path
    ~path () :
    inspect_config__custom_info_types__dictionary__cloud_storage_path
    =
  { path }

let inspect_config__custom_info_types__dictionary__word_list ~words
    () : inspect_config__custom_info_types__dictionary__word_list =
  { words }

let inspect_config__custom_info_types__dictionary ~cloud_storage_path
    ~word_list () : inspect_config__custom_info_types__dictionary =
  { cloud_storage_path; word_list }

let inspect_config__custom_info_types__info_type__sensitivity_score
    ~score () :
    inspect_config__custom_info_types__info_type__sensitivity_score =
  { score }

let inspect_config__custom_info_types__info_type ?version ~name
    ~sensitivity_score () :
    inspect_config__custom_info_types__info_type =
  { name; version; sensitivity_score }

let inspect_config__custom_info_types__regex ?group_indexes ~pattern
    () : inspect_config__custom_info_types__regex =
  { group_indexes; pattern }

let inspect_config__custom_info_types__sensitivity_score ~score () :
    inspect_config__custom_info_types__sensitivity_score =
  { score }

let inspect_config__custom_info_types__stored_type ~name () :
    inspect_config__custom_info_types__stored_type =
  { name }

let inspect_config__custom_info_types__surrogate_type () = ()

let inspect_config__custom_info_types ?exclusion_type ?likelihood
    ~dictionary ~info_type ~regex ~sensitivity_score ~stored_type
    ~surrogate_type () : inspect_config__custom_info_types =
  {
    exclusion_type;
    likelihood;
    dictionary;
    info_type;
    regex;
    sensitivity_score;
    stored_type;
    surrogate_type;
  }

let inspect_config__info_types__sensitivity_score ~score () :
    inspect_config__info_types__sensitivity_score =
  { score }

let inspect_config__info_types ?version ~name ~sensitivity_score () :
    inspect_config__info_types =
  { name; version; sensitivity_score }

let inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    ~score () :
    inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    =
  { score }

let inspect_config__limits__max_findings_per_info_type__info_type
    ?version ~name ~sensitivity_score () :
    inspect_config__limits__max_findings_per_info_type__info_type =
  { name; version; sensitivity_score }

let inspect_config__limits__max_findings_per_info_type ~max_findings
    ~info_type () :
    inspect_config__limits__max_findings_per_info_type =
  { max_findings; info_type }

let inspect_config__limits ~max_findings_per_item
    ~max_findings_per_request ~max_findings_per_info_type () :
    inspect_config__limits =
  {
    max_findings_per_item;
    max_findings_per_request;
    max_findings_per_info_type;
  }

let inspect_config__rule_set__info_types__sensitivity_score ~score ()
    : inspect_config__rule_set__info_types__sensitivity_score =
  { score }

let inspect_config__rule_set__info_types ?version ~name
    ~sensitivity_score () : inspect_config__rule_set__info_types =
  { name; version; sensitivity_score }

let inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    ~path () :
    inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    =
  { path }

let inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    ~words () :
    inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    =
  { words }

let inspect_config__rule_set__rules__exclusion_rule__dictionary
    ~cloud_storage_path ~word_list () :
    inspect_config__rule_set__rules__exclusion_rule__dictionary =
  { cloud_storage_path; word_list }

let inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    ?group_indexes ~pattern () :
    inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    =
  { group_indexes; pattern }

let inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    ?window_after ?window_before () :
    inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    =
  { window_after; window_before }

let inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    ~hotword_regex ~proximity () :
    inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    =
  { hotword_regex; proximity }

let inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    ~score () :
    inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    =
  { score }

let inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    ?version ~name ~sensitivity_score () :
    inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    =
  { name; version; sensitivity_score }

let inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    ~info_types () :
    inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    =
  { info_types }

let inspect_config__rule_set__rules__exclusion_rule__regex
    ?group_indexes ~pattern () :
    inspect_config__rule_set__rules__exclusion_rule__regex =
  { group_indexes; pattern }

let inspect_config__rule_set__rules__exclusion_rule ~matching_type
    ~dictionary ~exclude_by_hotword ~exclude_info_types ~regex () :
    inspect_config__rule_set__rules__exclusion_rule =
  {
    matching_type;
    dictionary;
    exclude_by_hotword;
    exclude_info_types;
    regex;
  }

let inspect_config__rule_set__rules__hotword_rule__hotword_regex
    ?group_indexes ~pattern () :
    inspect_config__rule_set__rules__hotword_rule__hotword_regex =
  { group_indexes; pattern }

let inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    ?fixed_likelihood ?relative_likelihood () :
    inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    =
  { fixed_likelihood; relative_likelihood }

let inspect_config__rule_set__rules__hotword_rule__proximity
    ?window_after ?window_before () :
    inspect_config__rule_set__rules__hotword_rule__proximity =
  { window_after; window_before }

let inspect_config__rule_set__rules__hotword_rule ~hotword_regex
    ~likelihood_adjustment ~proximity () :
    inspect_config__rule_set__rules__hotword_rule =
  { hotword_regex; likelihood_adjustment; proximity }

let inspect_config__rule_set__rules ~exclusion_rule ~hotword_rule ()
    : inspect_config__rule_set__rules =
  { exclusion_rule; hotword_rule }

let inspect_config__rule_set ~info_types ~rules () :
    inspect_config__rule_set =
  { info_types; rules }

let inspect_config ?content_options ?exclude_info_types
    ?include_quote ?min_likelihood ~custom_info_types ~info_types
    ~limits ~rule_set () : inspect_config =
  {
    content_options;
    exclude_info_types;
    include_quote;
    min_likelihood;
    custom_info_types;
    info_types;
    limits;
    rule_set;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_loss_prevention_inspect_template ?description
    ?display_name ?id ?template_id ?timeouts ~parent ~inspect_config
    () : google_data_loss_prevention_inspect_template =
  {
    description;
    display_name;
    id;
    parent;
    template_id;
    inspect_config;
    timeouts;
  }

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  template_id : string prop;
}

let make ?description ?display_name ?id ?template_id ?timeouts
    ~parent ~inspect_config __id =
  let __type = "google_data_loss_prevention_inspect_template" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       template_id = Prop.computed __type __id "template_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_loss_prevention_inspect_template
        (google_data_loss_prevention_inspect_template ?description
           ?display_name ?id ?template_id ?timeouts ~parent
           ~inspect_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?template_id
    ?timeouts ~parent ~inspect_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?template_id ?timeouts
      ~parent ~inspect_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
