(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_configuration = {
  key_id : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_configuration) -> ()

let yojson_of_encryption_configuration =
  (function
   | { key_id = v_key_id; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration

[@@@deriving.end]

type rule_group__reference_sets__ip_set_references__ip_set_reference = {
  reference_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__reference_sets__ip_set_references__ip_set_reference) ->
  ()

let yojson_of_rule_group__reference_sets__ip_set_references__ip_set_reference
    =
  (function
   | { reference_arn = v_reference_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reference_arn in
         ("reference_arn", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__reference_sets__ip_set_references__ip_set_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__reference_sets__ip_set_references__ip_set_reference

[@@@deriving.end]

type rule_group__reference_sets__ip_set_references = {
  key : string prop;
  ip_set_reference :
    rule_group__reference_sets__ip_set_references__ip_set_reference
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_group__reference_sets__ip_set_references) -> ()

let yojson_of_rule_group__reference_sets__ip_set_references =
  (function
   | { key = v_key; ip_set_reference = v_ip_set_reference } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_set_reference then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__reference_sets__ip_set_references__ip_set_reference)
               v_ip_set_reference
           in
           let bnd = "ip_set_reference", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__reference_sets__ip_set_references ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__reference_sets__ip_set_references

[@@@deriving.end]

type rule_group__reference_sets = {
  ip_set_references :
    rule_group__reference_sets__ip_set_references list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_group__reference_sets) -> ()

let yojson_of_rule_group__reference_sets =
  (function
   | { ip_set_references = v_ip_set_references } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_set_references then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__reference_sets__ip_set_references)
               v_ip_set_references
           in
           let bnd = "ip_set_references", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_group__reference_sets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__reference_sets

[@@@deriving.end]

type rule_group__rule_variables__ip_sets__ip_set = {
  definition : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_group__rule_variables__ip_sets__ip_set) -> ()

let yojson_of_rule_group__rule_variables__ip_sets__ip_set =
  (function
   | { definition = v_definition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_definition then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_definition
           in
           let bnd = "definition", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_group__rule_variables__ip_sets__ip_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__rule_variables__ip_sets__ip_set

[@@@deriving.end]

type rule_group__rule_variables__ip_sets = {
  key : string prop;
  ip_set : rule_group__rule_variables__ip_sets__ip_set list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_group__rule_variables__ip_sets) -> ()

let yojson_of_rule_group__rule_variables__ip_sets =
  (function
   | { key = v_key; ip_set = v_ip_set } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_set then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rule_variables__ip_sets__ip_set)
               v_ip_set
           in
           let bnd = "ip_set", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rule_variables__ip_sets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__rule_variables__ip_sets

[@@@deriving.end]

type rule_group__rule_variables__port_sets__port_set = {
  definition : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rule_group__rule_variables__port_sets__port_set) -> ()

let yojson_of_rule_group__rule_variables__port_sets__port_set =
  (function
   | { definition = v_definition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_definition then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_definition
           in
           let bnd = "definition", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_group__rule_variables__port_sets__port_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__rule_variables__port_sets__port_set

[@@@deriving.end]

type rule_group__rule_variables__port_sets = {
  key : string prop;
  port_set : rule_group__rule_variables__port_sets__port_set list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_group__rule_variables__port_sets) -> ()

let yojson_of_rule_group__rule_variables__port_sets =
  (function
   | { key = v_key; port_set = v_port_set } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_port_set then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rule_variables__port_sets__port_set)
               v_port_set
           in
           let bnd = "port_set", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rule_variables__port_sets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__rule_variables__port_sets

[@@@deriving.end]

type rule_group__rule_variables = {
  ip_sets : rule_group__rule_variables__ip_sets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  port_sets : rule_group__rule_variables__port_sets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_group__rule_variables) -> ()

let yojson_of_rule_group__rule_variables =
  (function
   | { ip_sets = v_ip_sets; port_sets = v_port_sets } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_port_sets then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rule_variables__port_sets)
               v_port_sets
           in
           let bnd = "port_sets", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_sets then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rule_variables__ip_sets)
               v_ip_sets
           in
           let bnd = "ip_sets", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_group__rule_variables -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__rule_variables

[@@@deriving.end]

type rule_group__rules_source__rules_source_list = {
  generated_rules_type : string prop;
  target_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  targets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_group__rules_source__rules_source_list) -> ()

let yojson_of_rule_group__rules_source__rules_source_list =
  (function
   | {
       generated_rules_type = v_generated_rules_type;
       target_types = v_target_types;
       targets = v_targets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         if Stdlib.( = ) [] v_target_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_target_types
           in
           let bnd = "target_types", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_generated_rules_type
         in
         ("generated_rules_type", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__rules_source_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__rules_source__rules_source_list

[@@@deriving.end]

type rule_group__rules_source__stateful_rule__header = {
  destination : string prop;
  destination_port : string prop;
  direction : string prop;
  protocol : string prop;
  source : string prop;
  source_port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rule_group__rules_source__stateful_rule__header) -> ()

let yojson_of_rule_group__rules_source__stateful_rule__header =
  (function
   | {
       destination = v_destination;
       destination_port = v_destination_port;
       direction = v_direction;
       protocol = v_protocol;
       source = v_source;
       source_port = v_source_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_port in
         ("source_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_port
         in
         ("destination_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateful_rule__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__rules_source__stateful_rule__header

[@@@deriving.end]

type rule_group__rules_source__stateful_rule__rule_option = {
  keyword : string prop;
  settings : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rule_group__rules_source__stateful_rule__rule_option) -> ()

let yojson_of_rule_group__rules_source__stateful_rule__rule_option =
  (function
   | { keyword = v_keyword; settings = v_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_keyword in
         ("keyword", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateful_rule__rule_option ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateful_rule__rule_option

[@@@deriving.end]

type rule_group__rules_source__stateful_rule = {
  action : string prop;
  header : rule_group__rules_source__stateful_rule__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rule_option :
    rule_group__rules_source__stateful_rule__rule_option list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_group__rules_source__stateful_rule) -> ()

let yojson_of_rule_group__rules_source__stateful_rule =
  (function
   | {
       action = v_action;
       header = v_header;
       rule_option = v_rule_option;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule_option then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateful_rule__rule_option)
               v_rule_option
           in
           let bnd = "rule_option", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateful_rule__header)
               v_header
           in
           let bnd = "header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateful_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__rules_source__stateful_rule

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension = {
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension
    =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action = {
  dimension :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action
    =
  (function
   | { dimension = v_dimension } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition = {
  publish_metric_action :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition
    =
  (function
   | { publish_metric_action = v_publish_metric_action } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_publish_metric_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action)
               v_publish_metric_action
           in
           let bnd = "publish_metric_action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__custom_action = {
  action_name : string prop;
  action_definition :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__custom_action) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action
    =
  (function
   | {
       action_name = v_action_name;
       action_definition = v_action_definition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_action_definition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition)
               v_action_definition
           in
           let bnd = "action_definition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_name in
         ("action_name", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__custom_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination = {
  address_definition : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination
    =
  (function
   | { address_definition = v_address_definition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_definition
         in
         ("address_definition", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port = {
  from_port : float prop;
  to_port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port
    =
  (function
   | { from_port = v_from_port; to_port = v_to_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_to_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "to_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source = {
  address_definition : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source
    =
  (function
   | { address_definition = v_address_definition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_definition
         in
         ("address_definition", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port = {
  from_port : float prop;
  to_port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port
    =
  (function
   | { from_port = v_from_port; to_port = v_to_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_to_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "to_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag = {
  flags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  masks : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag
    =
  (function
   | { flags = v_flags; masks = v_masks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_masks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "masks", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_flags then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_flags
           in
           let bnd = "flags", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes = {
  protocols : float prop list option; [@option]
  destination :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_port :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_port :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tcp_flag :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes
    =
  (function
   | {
       protocols = v_protocols;
       destination = v_destination;
       destination_port = v_destination_port;
       source = v_source;
       source_port = v_source_port;
       tcp_flag = v_tcp_flag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tcp_flag then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag)
               v_tcp_flag
           in
           let bnd = "tcp_flag", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_port then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port)
               v_source_port
           in
           let bnd = "source_port", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source)
               v_source
           in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_port then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port)
               v_destination_port
           in
           let bnd = "destination_port", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         match v_protocols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "protocols", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition = {
  actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_attributes :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition
    =
  (function
   | { actions = v_actions; match_attributes = v_match_attributes }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_attributes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes)
               v_match_attributes
           in
           let bnd = "match_attributes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_actions
           in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule = {
  priority : float prop;
  rule_definition :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule
    =
  (function
   | { priority = v_priority; rule_definition = v_rule_definition }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule_definition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition)
               v_rule_definition
           in
           let bnd = "rule_definition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule

[@@@deriving.end]

type rule_group__rules_source__stateless_rules_and_custom_actions = {
  custom_action :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateless_rule :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rule_group__rules_source__stateless_rules_and_custom_actions) ->
  ()

let yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions
    =
  (function
   | {
       custom_action = v_custom_action;
       stateless_rule = v_stateless_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_stateless_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule)
               v_stateless_rule
           in
           let bnd = "stateless_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions__custom_action)
               v_custom_action
           in
           let bnd = "custom_action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source__stateless_rules_and_custom_actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions

[@@@deriving.end]

type rule_group__rules_source = {
  rules_string : string prop option; [@option]
  rules_source_list :
    rule_group__rules_source__rules_source_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateful_rule : rule_group__rules_source__stateful_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateless_rules_and_custom_actions :
    rule_group__rules_source__stateless_rules_and_custom_actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_group__rules_source) -> ()

let yojson_of_rule_group__rules_source =
  (function
   | {
       rules_string = v_rules_string;
       rules_source_list = v_rules_source_list;
       stateful_rule = v_stateful_rule;
       stateless_rules_and_custom_actions =
         v_stateless_rules_and_custom_actions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_stateless_rules_and_custom_actions then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateless_rules_and_custom_actions)
               v_stateless_rules_and_custom_actions
           in
           let bnd = "stateless_rules_and_custom_actions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stateful_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__stateful_rule)
               v_stateful_rule
           in
           let bnd = "stateful_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rules_source_list then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__rules_source__rules_source_list)
               v_rules_source_list
           in
           let bnd = "rules_source_list", arg in
           bnd :: bnds
       in
       let bnds =
         match v_rules_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rules_string", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule_group__rules_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__rules_source

[@@@deriving.end]

type rule_group__stateful_rule_options = { rule_order : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_group__stateful_rule_options) -> ()

let yojson_of_rule_group__stateful_rule_options =
  (function
   | { rule_order = v_rule_order } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_order in
         ("rule_order", arg) :: bnds
       in
       `Assoc bnds
    : rule_group__stateful_rule_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group__stateful_rule_options

[@@@deriving.end]

type rule_group = {
  reference_sets : rule_group__reference_sets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rule_variables : rule_group__rule_variables list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rules_source : rule_group__rules_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateful_rule_options : rule_group__stateful_rule_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_group) -> ()

let yojson_of_rule_group =
  (function
   | {
       reference_sets = v_reference_sets;
       rule_variables = v_rule_variables;
       rules_source = v_rules_source;
       stateful_rule_options = v_stateful_rule_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_stateful_rule_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_group__stateful_rule_options)
               v_stateful_rule_options
           in
           let bnd = "stateful_rule_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rules_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_group__rules_source)
               v_rules_source
           in
           let bnd = "rules_source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rule_variables then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_group__rule_variables)
               v_rule_variables
           in
           let bnd = "rule_variables", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_reference_sets then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_group__reference_sets)
               v_reference_sets
           in
           let bnd = "reference_sets", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_group

[@@@deriving.end]

type aws_networkfirewall_rule_group = {
  capacity : float prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  rules : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  type_ : string prop; [@key "type"]
  encryption_configuration : encryption_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rule_group : rule_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkfirewall_rule_group) -> ()

let yojson_of_aws_networkfirewall_rule_group =
  (function
   | {
       capacity = v_capacity;
       description = v_description;
       id = v_id;
       name = v_name;
       rules = v_rules;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       encryption_configuration = v_encryption_configuration;
       rule_group = v_rule_group;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_group) v_rule_group
           in
           let bnd = "rule_group", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_configuration)
               v_encryption_configuration
           in
           let bnd = "encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rules", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkfirewall_rule_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkfirewall_rule_group

[@@@deriving.end]

let encryption_configuration ?key_id ~type_ () :
    encryption_configuration =
  { key_id; type_ }

let rule_group__reference_sets__ip_set_references__ip_set_reference
    ~reference_arn () :
    rule_group__reference_sets__ip_set_references__ip_set_reference =
  { reference_arn }

let rule_group__reference_sets__ip_set_references ~key
    ~ip_set_reference () :
    rule_group__reference_sets__ip_set_references =
  { key; ip_set_reference }

let rule_group__reference_sets ~ip_set_references () :
    rule_group__reference_sets =
  { ip_set_references }

let rule_group__rule_variables__ip_sets__ip_set ~definition () :
    rule_group__rule_variables__ip_sets__ip_set =
  { definition }

let rule_group__rule_variables__ip_sets ~key ~ip_set () :
    rule_group__rule_variables__ip_sets =
  { key; ip_set }

let rule_group__rule_variables__port_sets__port_set ~definition () :
    rule_group__rule_variables__port_sets__port_set =
  { definition }

let rule_group__rule_variables__port_sets ~key ~port_set () :
    rule_group__rule_variables__port_sets =
  { key; port_set }

let rule_group__rule_variables ~ip_sets ~port_sets () :
    rule_group__rule_variables =
  { ip_sets; port_sets }

let rule_group__rules_source__rules_source_list ~generated_rules_type
    ~target_types ~targets () :
    rule_group__rules_source__rules_source_list =
  { generated_rules_type; target_types; targets }

let rule_group__rules_source__stateful_rule__header ~destination
    ~destination_port ~direction ~protocol ~source ~source_port () :
    rule_group__rules_source__stateful_rule__header =
  {
    destination;
    destination_port;
    direction;
    protocol;
    source;
    source_port;
  }

let rule_group__rules_source__stateful_rule__rule_option ?settings
    ~keyword () :
    rule_group__rules_source__stateful_rule__rule_option =
  { keyword; settings }

let rule_group__rules_source__stateful_rule ~action ~header
    ~rule_option () : rule_group__rules_source__stateful_rule =
  { action; header; rule_option }

let rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension
    ~value () :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action__dimension
    =
  { value }

let rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action
    ~dimension () :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition__publish_metric_action
    =
  { dimension }

let rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition
    ~publish_metric_action () :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action__action_definition
    =
  { publish_metric_action }

let rule_group__rules_source__stateless_rules_and_custom_actions__custom_action
    ~action_name ~action_definition () :
    rule_group__rules_source__stateless_rules_and_custom_actions__custom_action
    =
  { action_name; action_definition }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination
    ~address_definition () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination
    =
  { address_definition }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port
    ?to_port ~from_port () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__destination_port
    =
  { from_port; to_port }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source
    ~address_definition () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source
    =
  { address_definition }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port
    ?to_port ~from_port () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__source_port
    =
  { from_port; to_port }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag
    ?masks ~flags () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes__tcp_flag
    =
  { flags; masks }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes
    ?protocols ~destination ~destination_port ~source ~source_port
    ~tcp_flag () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition__match_attributes
    =
  {
    protocols;
    destination;
    destination_port;
    source;
    source_port;
    tcp_flag;
  }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition
    ~actions ~match_attributes () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule__rule_definition
    =
  { actions; match_attributes }

let rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule
    ~priority ~rule_definition () :
    rule_group__rules_source__stateless_rules_and_custom_actions__stateless_rule
    =
  { priority; rule_definition }

let rule_group__rules_source__stateless_rules_and_custom_actions
    ~custom_action ~stateless_rule () :
    rule_group__rules_source__stateless_rules_and_custom_actions =
  { custom_action; stateless_rule }

let rule_group__rules_source ?rules_string ?(rules_source_list = [])
    ?(stateful_rule = []) ?(stateless_rules_and_custom_actions = [])
    () : rule_group__rules_source =
  {
    rules_string;
    rules_source_list;
    stateful_rule;
    stateless_rules_and_custom_actions;
  }

let rule_group__stateful_rule_options ~rule_order () :
    rule_group__stateful_rule_options =
  { rule_order }

let rule_group ?(reference_sets = []) ?(rule_variables = [])
    ?(stateful_rule_options = []) ~rules_source () : rule_group =
  {
    reference_sets;
    rule_variables;
    rules_source;
    stateful_rule_options;
  }

let aws_networkfirewall_rule_group ?description ?id ?rules ?tags
    ?tags_all ?(encryption_configuration = []) ?(rule_group = [])
    ~capacity ~name ~type_ () : aws_networkfirewall_rule_group =
  {
    capacity;
    description;
    id;
    name;
    rules;
    tags;
    tags_all;
    type_;
    encryption_configuration;
    rule_group;
  }

type t = {
  tf_name : string;
  arn : string prop;
  capacity : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  rules : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
  update_token : string prop;
}

let make ?description ?id ?rules ?tags ?tags_all
    ?(encryption_configuration = []) ?(rule_group = []) ~capacity
    ~name ~type_ __id =
  let __type = "aws_networkfirewall_rule_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       capacity = Prop.computed __type __id "capacity";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rules = Prop.computed __type __id "rules";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       update_token = Prop.computed __type __id "update_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkfirewall_rule_group
        (aws_networkfirewall_rule_group ?description ?id ?rules ?tags
           ?tags_all ~encryption_configuration ~rule_group ~capacity
           ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?rules ?tags ?tags_all
    ?(encryption_configuration = []) ?(rule_group = []) ~capacity
    ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?rules ?tags ?tags_all
      ~encryption_configuration ~rule_group ~capacity ~name ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
