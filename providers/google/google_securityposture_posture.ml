(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy_sets__policies__compliance_standards = {
  control : string prop option; [@option]
  standard : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_sets__policies__compliance_standards) -> ()

let yojson_of_policy_sets__policies__compliance_standards =
  (function
   | { control = v_control; standard = v_standard } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_standard with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "standard", arg in
             bnd :: bnds
       in
       let bnds =
         match v_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "control", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__compliance_standards ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_sets__policies__compliance_standards

[@@@deriving.end]

type policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition) ->
  ()

let yojson_of_policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition
    =
  (function
   | {
       description = v_description;
       expression = v_expression;
       location = v_location;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
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
    : policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition

[@@@deriving.end]

type policy_sets__policies__constraint__org_policy_constraint__policy_rules__values = {
  allowed_values : string prop list option; [@option]
  denied_values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__org_policy_constraint__policy_rules__values) ->
  ()

let yojson_of_policy_sets__policies__constraint__org_policy_constraint__policy_rules__values
    =
  (function
   | {
       allowed_values = v_allowed_values;
       denied_values = v_denied_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_denied_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "denied_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint__org_policy_constraint__policy_rules__values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__org_policy_constraint__policy_rules__values

[@@@deriving.end]

type policy_sets__policies__constraint__org_policy_constraint__policy_rules = {
  allow_all : bool prop option; [@option]
  deny_all : bool prop option; [@option]
  enforce : bool prop option; [@option]
  condition :
    policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition
    list;
  values :
    policy_sets__policies__constraint__org_policy_constraint__policy_rules__values
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__org_policy_constraint__policy_rules) ->
  ()

let yojson_of_policy_sets__policies__constraint__org_policy_constraint__policy_rules
    =
  (function
   | {
       allow_all = v_allow_all;
       deny_all = v_deny_all;
       enforce = v_enforce;
       condition = v_condition;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__org_policy_constraint__policy_rules__values
             v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition
             v_condition
         in
         ("condition", arg) :: bnds
       in
       let bnds =
         match v_enforce with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deny_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deny_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_all", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint__org_policy_constraint__policy_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__org_policy_constraint__policy_rules

[@@@deriving.end]

type policy_sets__policies__constraint__org_policy_constraint = {
  canned_constraint_id : string prop;
  policy_rules :
    policy_sets__policies__constraint__org_policy_constraint__policy_rules
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : policy_sets__policies__constraint__org_policy_constraint) ->
  ()

let yojson_of_policy_sets__policies__constraint__org_policy_constraint
    =
  (function
   | {
       canned_constraint_id = v_canned_constraint_id;
       policy_rules = v_policy_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__org_policy_constraint__policy_rules
             v_policy_rules
         in
         ("policy_rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_canned_constraint_id
         in
         ("canned_constraint_id", arg) :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint__org_policy_constraint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__org_policy_constraint

[@@@deriving.end]

type policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint = {
  action_type : string prop;
  condition : string prop;
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  method_types : string prop list;
  name : string prop;
  resource_types : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint) ->
  ()

let yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint
    =
  (function
   | {
       action_type = v_action_type;
       condition = v_condition;
       description = v_description;
       display_name = v_display_name;
       method_types = v_method_types;
       name = v_name;
       resource_types = v_resource_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_resource_types
         in
         ("resource_types", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_method_types
         in
         ("method_types", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_condition in
         ("condition", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_type in
         ("action_type", arg) :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint

[@@@deriving.end]

type policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition) ->
  ()

let yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition
    =
  (function
   | {
       description = v_description;
       expression = v_expression;
       location = v_location;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
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
    : policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition

[@@@deriving.end]

type policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values = {
  allowed_values : string prop list option; [@option]
  denied_values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values) ->
  ()

let yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values
    =
  (function
   | {
       allowed_values = v_allowed_values;
       denied_values = v_denied_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_denied_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "denied_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values

[@@@deriving.end]

type policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules = {
  allow_all : bool prop option; [@option]
  deny_all : bool prop option; [@option]
  enforce : bool prop option; [@option]
  condition :
    policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition
    list;
  values :
    policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules) ->
  ()

let yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules
    =
  (function
   | {
       allow_all = v_allow_all;
       deny_all = v_deny_all;
       enforce = v_enforce;
       condition = v_condition;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values
             v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition
             v_condition
         in
         ("condition", arg) :: bnds
       in
       let bnds =
         match v_enforce with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deny_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deny_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_all", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules

[@@@deriving.end]

type policy_sets__policies__constraint__org_policy_constraint_custom = {
  custom_constraint :
    policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint
    list;
  policy_rules :
    policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__org_policy_constraint_custom) ->
  ()

let yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom
    =
  (function
   | {
       custom_constraint = v_custom_constraint;
       policy_rules = v_policy_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules
             v_policy_rules
         in
         ("policy_rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint
             v_custom_constraint
         in
         ("custom_constraint", arg) :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint__org_policy_constraint_custom ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom

[@@@deriving.end]

type policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression) ->
  ()

let yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression
    =
  (function
   | {
       description = v_description;
       expression = v_expression;
       location = v_location;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
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
    : policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression

[@@@deriving.end]

type policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties = {
  name : string prop;
  value_expression :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties) ->
  ()

let yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties
    =
  (function
   | { name = v_name; value_expression = v_value_expression } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression
             v_value_expression
         in
         ("value_expression", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties

[@@@deriving.end]

type policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output = {
  properties :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output) ->
  ()

let yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output
    =
  (function
   | { properties = v_properties } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties
             v_properties
         in
         ("properties", arg) :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output

[@@@deriving.end]

type policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate = {
  description : string prop option; [@option]
  expression : string prop;
  location : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate) ->
  ()

let yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate
    =
  (function
   | {
       description = v_description;
       expression = v_expression;
       location = v_location;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
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
    : policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate

[@@@deriving.end]

type policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector = {
  resource_types : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector) ->
  ()

let yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector
    =
  (function
   | { resource_types = v_resource_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_resource_types
         in
         ("resource_types", arg) :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector

[@@@deriving.end]

type policy_sets__policies__constraint__security_health_analytics_custom_module__config = {
  description : string prop option; [@option]
  recommendation : string prop option; [@option]
  severity : string prop;
  custom_output :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output
    list;
  predicate :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate
    list;
  resource_selector :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__security_health_analytics_custom_module__config) ->
  ()

let yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config
    =
  (function
   | {
       description = v_description;
       recommendation = v_recommendation;
       severity = v_severity;
       custom_output = v_custom_output;
       predicate = v_predicate;
       resource_selector = v_resource_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector
             v_resource_selector
         in
         ("resource_selector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate
             v_predicate
         in
         ("predicate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output
             v_custom_output
         in
         ("custom_output", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_severity in
         ("severity", arg) :: bnds
       in
       let bnds =
         match v_recommendation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recommendation", arg in
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
    : policy_sets__policies__constraint__security_health_analytics_custom_module__config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config

[@@@deriving.end]

type policy_sets__policies__constraint__security_health_analytics_custom_module = {
  display_name : string prop option; [@option]
  module_enablement_state : string prop option; [@option]
  config :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__security_health_analytics_custom_module) ->
  ()

let yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module
    =
  (function
   | {
       display_name = v_display_name;
       module_enablement_state = v_module_enablement_state;
       config = v_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module__config
             v_config
         in
         ("config", arg) :: bnds
       in
       let bnds =
         match v_module_enablement_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "module_enablement_state", arg in
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
       `Assoc bnds
    : policy_sets__policies__constraint__security_health_analytics_custom_module ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module

[@@@deriving.end]

type policy_sets__policies__constraint__security_health_analytics_module = {
  module_enablement_state : string prop option; [@option]
  module_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policy_sets__policies__constraint__security_health_analytics_module) ->
  ()

let yojson_of_policy_sets__policies__constraint__security_health_analytics_module
    =
  (function
   | {
       module_enablement_state = v_module_enablement_state;
       module_name = v_module_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_module_name in
         ("module_name", arg) :: bnds
       in
       let bnds =
         match v_module_enablement_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "module_enablement_state", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint__security_health_analytics_module ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policy_sets__policies__constraint__security_health_analytics_module

[@@@deriving.end]

type policy_sets__policies__constraint = {
  org_policy_constraint :
    policy_sets__policies__constraint__org_policy_constraint list;
  org_policy_constraint_custom :
    policy_sets__policies__constraint__org_policy_constraint_custom
    list;
  security_health_analytics_custom_module :
    policy_sets__policies__constraint__security_health_analytics_custom_module
    list;
  security_health_analytics_module :
    policy_sets__policies__constraint__security_health_analytics_module
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_sets__policies__constraint) -> ()

let yojson_of_policy_sets__policies__constraint =
  (function
   | {
       org_policy_constraint = v_org_policy_constraint;
       org_policy_constraint_custom = v_org_policy_constraint_custom;
       security_health_analytics_custom_module =
         v_security_health_analytics_custom_module;
       security_health_analytics_module =
         v_security_health_analytics_module;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__security_health_analytics_module
             v_security_health_analytics_module
         in
         ("security_health_analytics_module", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__security_health_analytics_custom_module
             v_security_health_analytics_custom_module
         in
         ("security_health_analytics_custom_module", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__org_policy_constraint_custom
             v_org_policy_constraint_custom
         in
         ("org_policy_constraint_custom", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__constraint__org_policy_constraint
             v_org_policy_constraint
         in
         ("org_policy_constraint", arg) :: bnds
       in
       `Assoc bnds
    : policy_sets__policies__constraint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_sets__policies__constraint

[@@@deriving.end]

type policy_sets__policies = {
  description : string prop option; [@option]
  policy_id : string prop;
  compliance_standards :
    policy_sets__policies__compliance_standards list;
  constraint_ : policy_sets__policies__constraint list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_sets__policies) -> ()

let yojson_of_policy_sets__policies =
  (function
   | {
       description = v_description;
       policy_id = v_policy_id;
       compliance_standards = v_compliance_standards;
       constraint_ = v_constraint_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_policy_sets__policies__constraint
             v_constraint_
         in
         ("constraint_", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_sets__policies__compliance_standards
             v_compliance_standards
         in
         ("compliance_standards", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_id in
         ("policy_id", arg) :: bnds
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
    : policy_sets__policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_sets__policies

[@@@deriving.end]

type policy_sets = {
  description : string prop option; [@option]
  policy_set_id : string prop;
  policies : policy_sets__policies list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_sets) -> ()

let yojson_of_policy_sets =
  (function
   | {
       description = v_description;
       policy_set_id = v_policy_set_id;
       policies = v_policies;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_policy_sets__policies v_policies
         in
         ("policies", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_set_id in
         ("policy_set_id", arg) :: bnds
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
    : policy_sets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_sets

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

type google_securityposture_posture = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  parent : string prop;
  posture_id : string prop;
  state : string prop;
  policy_sets : policy_sets list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_securityposture_posture) -> ()

let yojson_of_google_securityposture_posture =
  (function
   | {
       description = v_description;
       id = v_id;
       location = v_location;
       parent = v_parent;
       posture_id = v_posture_id;
       state = v_state;
       policy_sets = v_policy_sets;
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
           yojson_of_list yojson_of_policy_sets v_policy_sets
         in
         ("policy_sets", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_posture_id in
         ("posture_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_securityposture_posture ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_securityposture_posture

[@@@deriving.end]

let policy_sets__policies__compliance_standards ?control ?standard ()
    : policy_sets__policies__compliance_standards =
  { control; standard }

let policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition
    ?description ?location ?title ~expression () :
    policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition
    =
  { description; expression; location; title }

let policy_sets__policies__constraint__org_policy_constraint__policy_rules__values
    ?allowed_values ?denied_values () :
    policy_sets__policies__constraint__org_policy_constraint__policy_rules__values
    =
  { allowed_values; denied_values }

let policy_sets__policies__constraint__org_policy_constraint__policy_rules
    ?allow_all ?deny_all ?enforce ~condition ~values () :
    policy_sets__policies__constraint__org_policy_constraint__policy_rules
    =
  { allow_all; deny_all; enforce; condition; values }

let policy_sets__policies__constraint__org_policy_constraint
    ~canned_constraint_id ~policy_rules () :
    policy_sets__policies__constraint__org_policy_constraint =
  { canned_constraint_id; policy_rules }

let policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint
    ?description ?display_name ~action_type ~condition ~method_types
    ~name ~resource_types () :
    policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint
    =
  {
    action_type;
    condition;
    description;
    display_name;
    method_types;
    name;
    resource_types;
  }

let policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition
    ?description ?location ?title ~expression () :
    policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition
    =
  { description; expression; location; title }

let policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values
    ?allowed_values ?denied_values () :
    policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values
    =
  { allowed_values; denied_values }

let policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules
    ?allow_all ?deny_all ?enforce ~condition ~values () :
    policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules
    =
  { allow_all; deny_all; enforce; condition; values }

let policy_sets__policies__constraint__org_policy_constraint_custom
    ~custom_constraint ~policy_rules () :
    policy_sets__policies__constraint__org_policy_constraint_custom =
  { custom_constraint; policy_rules }

let policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression
    ?description ?location ?title ~expression () :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression
    =
  { description; expression; location; title }

let policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties
    ~name ~value_expression () :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties
    =
  { name; value_expression }

let policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output
    ~properties () :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output
    =
  { properties }

let policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate
    ?description ?location ?title ~expression () :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate
    =
  { description; expression; location; title }

let policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector
    ~resource_types () :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector
    =
  { resource_types }

let policy_sets__policies__constraint__security_health_analytics_custom_module__config
    ?description ?recommendation ~severity ~custom_output ~predicate
    ~resource_selector () :
    policy_sets__policies__constraint__security_health_analytics_custom_module__config
    =
  {
    description;
    recommendation;
    severity;
    custom_output;
    predicate;
    resource_selector;
  }

let policy_sets__policies__constraint__security_health_analytics_custom_module
    ?display_name ?module_enablement_state ~config () :
    policy_sets__policies__constraint__security_health_analytics_custom_module
    =
  { display_name; module_enablement_state; config }

let policy_sets__policies__constraint__security_health_analytics_module
    ?module_enablement_state ~module_name () :
    policy_sets__policies__constraint__security_health_analytics_module
    =
  { module_enablement_state; module_name }

let policy_sets__policies__constraint ~org_policy_constraint
    ~org_policy_constraint_custom
    ~security_health_analytics_custom_module
    ~security_health_analytics_module () :
    policy_sets__policies__constraint =
  {
    org_policy_constraint;
    org_policy_constraint_custom;
    security_health_analytics_custom_module;
    security_health_analytics_module;
  }

let policy_sets__policies ?description ~policy_id
    ~compliance_standards ~constraint_ () : policy_sets__policies =
  { description; policy_id; compliance_standards; constraint_ }

let policy_sets ?description ~policy_set_id ~policies () :
    policy_sets =
  { description; policy_set_id; policies }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_securityposture_posture ?description ?id ?timeouts
    ~location ~parent ~posture_id ~state ~policy_sets () :
    google_securityposture_posture =
  {
    description;
    id;
    location;
    parent;
    posture_id;
    state;
    policy_sets;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  posture_id : string prop;
  reconciling : bool prop;
  revision_id : string prop;
  state : string prop;
  update_time : string prop;
}

let make ?description ?id ?timeouts ~location ~parent ~posture_id
    ~state ~policy_sets __id =
  let __type = "google_securityposture_posture" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       posture_id = Prop.computed __type __id "posture_id";
       reconciling = Prop.computed __type __id "reconciling";
       revision_id = Prop.computed __type __id "revision_id";
       state = Prop.computed __type __id "state";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_securityposture_posture
        (google_securityposture_posture ?description ?id ?timeouts
           ~location ~parent ~posture_id ~state ~policy_sets ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~location ~parent
    ~posture_id ~state ~policy_sets __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~location ~parent ~posture_id
      ~state ~policy_sets __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
