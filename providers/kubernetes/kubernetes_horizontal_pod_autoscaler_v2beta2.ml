(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
  generate_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       generate_name = v_generate_name;
       labels = v_labels;
       name = v_name;
       namespace = v_namespace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_generate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "generate_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type spec__behavior__scale_down__policy = {
  period_seconds : float prop;
  type_ : string prop; [@key "type"]
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__behavior__scale_down__policy) -> ()

let yojson_of_spec__behavior__scale_down__policy =
  (function
   | {
       period_seconds = v_period_seconds;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period_seconds in
         ("period_seconds", arg) :: bnds
       in
       `Assoc bnds
    : spec__behavior__scale_down__policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__behavior__scale_down__policy

[@@@deriving.end]

type spec__behavior__scale_down = {
  select_policy : string prop option; [@option]
  stabilization_window_seconds : float prop option; [@option]
  policy : spec__behavior__scale_down__policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__behavior__scale_down) -> ()

let yojson_of_spec__behavior__scale_down =
  (function
   | {
       select_policy = v_select_policy;
       stabilization_window_seconds = v_stabilization_window_seconds;
       policy = v_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__behavior__scale_down__policy)
               v_policy
           in
           let bnd = "policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_stabilization_window_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "stabilization_window_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_select_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "select_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__behavior__scale_down -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__behavior__scale_down

[@@@deriving.end]

type spec__behavior__scale_up__policy = {
  period_seconds : float prop;
  type_ : string prop; [@key "type"]
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__behavior__scale_up__policy) -> ()

let yojson_of_spec__behavior__scale_up__policy =
  (function
   | {
       period_seconds = v_period_seconds;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period_seconds in
         ("period_seconds", arg) :: bnds
       in
       `Assoc bnds
    : spec__behavior__scale_up__policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__behavior__scale_up__policy

[@@@deriving.end]

type spec__behavior__scale_up = {
  select_policy : string prop option; [@option]
  stabilization_window_seconds : float prop option; [@option]
  policy : spec__behavior__scale_up__policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__behavior__scale_up) -> ()

let yojson_of_spec__behavior__scale_up =
  (function
   | {
       select_policy = v_select_policy;
       stabilization_window_seconds = v_stabilization_window_seconds;
       policy = v_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__behavior__scale_up__policy)
               v_policy
           in
           let bnd = "policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_stabilization_window_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "stabilization_window_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_select_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "select_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__behavior__scale_up -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__behavior__scale_up

[@@@deriving.end]

type spec__behavior = {
  scale_down : spec__behavior__scale_down list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scale_up : spec__behavior__scale_up list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__behavior) -> ()

let yojson_of_spec__behavior =
  (function
   | { scale_down = v_scale_down; scale_up = v_scale_up } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_scale_up then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__behavior__scale_up)
               v_scale_up
           in
           let bnd = "scale_up", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scale_down then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__behavior__scale_down)
               v_scale_down
           in
           let bnd = "scale_down", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__behavior -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__behavior

[@@@deriving.end]

type spec__metric__container_resource__target = {
  average_utilization : float prop option; [@option]
  average_value : string prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__container_resource__target) -> ()

let yojson_of_spec__metric__container_resource__target =
  (function
   | {
       average_utilization = v_average_utilization;
       average_value = v_average_value;
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
         match v_average_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "average_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_average_utilization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "average_utilization", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__metric__container_resource__target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__container_resource__target

[@@@deriving.end]

type spec__metric__container_resource = {
  container : string prop;
  name : string prop;
  target : spec__metric__container_resource__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__container_resource) -> ()

let yojson_of_spec__metric__container_resource =
  (function
   | { container = v_container; name = v_name; target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__metric__container_resource__target)
               v_target
           in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_container in
         ("container", arg) :: bnds
       in
       `Assoc bnds
    : spec__metric__container_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__container_resource

[@@@deriving.end]

type spec__metric__external__metric__selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__metric__external__metric__selector__match_expressions) ->
  ()

let yojson_of_spec__metric__external__metric__selector__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
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
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
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
    : spec__metric__external__metric__selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__metric__external__metric__selector__match_expressions

[@@@deriving.end]

type spec__metric__external__metric__selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions :
    spec__metric__external__metric__selector__match_expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__external__metric__selector) -> ()

let yojson_of_spec__metric__external__metric__selector =
  (function
   | {
       match_labels = v_match_labels;
       match_expressions = v_match_expressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__metric__external__metric__selector__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_match_labels with
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
             let bnd = "match_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__metric__external__metric__selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__external__metric__selector

[@@@deriving.end]

type spec__metric__external__metric = {
  name : string prop;
  selector : spec__metric__external__metric__selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__external__metric) -> ()

let yojson_of_spec__metric__external__metric =
  (function
   | { name = v_name; selector = v_selector } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__metric__external__metric__selector)
               v_selector
           in
           let bnd = "selector", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__metric__external__metric ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__external__metric

[@@@deriving.end]

type spec__metric__external__target = {
  average_utilization : float prop option; [@option]
  average_value : string prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__external__target) -> ()

let yojson_of_spec__metric__external__target =
  (function
   | {
       average_utilization = v_average_utilization;
       average_value = v_average_value;
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
         match v_average_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "average_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_average_utilization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "average_utilization", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__metric__external__target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__external__target

[@@@deriving.end]

type spec__metric__external = {
  metric : spec__metric__external__metric list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target : spec__metric__external__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__external) -> ()

let yojson_of_spec__metric__external =
  (function
   | { metric = v_metric; target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric__external__target)
               v_target
           in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metric then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric__external__metric)
               v_metric
           in
           let bnd = "metric", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__metric__external -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__external

[@@@deriving.end]

type spec__metric__object__described_object = {
  api_version : string prop;
  kind : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__object__described_object) -> ()

let yojson_of_spec__metric__object__described_object =
  (function
   | { api_version = v_api_version; kind = v_kind; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_version in
         ("api_version", arg) :: bnds
       in
       `Assoc bnds
    : spec__metric__object__described_object ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__object__described_object

[@@@deriving.end]

type spec__metric__object__metric__selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__metric__object__metric__selector__match_expressions) ->
  ()

let yojson_of_spec__metric__object__metric__selector__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
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
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
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
    : spec__metric__object__metric__selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__metric__object__metric__selector__match_expressions

[@@@deriving.end]

type spec__metric__object__metric__selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions :
    spec__metric__object__metric__selector__match_expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__object__metric__selector) -> ()

let yojson_of_spec__metric__object__metric__selector =
  (function
   | {
       match_labels = v_match_labels;
       match_expressions = v_match_expressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__metric__object__metric__selector__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_match_labels with
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
             let bnd = "match_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__metric__object__metric__selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__object__metric__selector

[@@@deriving.end]

type spec__metric__object__metric = {
  name : string prop;
  selector : spec__metric__object__metric__selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__object__metric) -> ()

let yojson_of_spec__metric__object__metric =
  (function
   | { name = v_name; selector = v_selector } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__metric__object__metric__selector)
               v_selector
           in
           let bnd = "selector", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__metric__object__metric ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__object__metric

[@@@deriving.end]

type spec__metric__object__target = {
  average_utilization : float prop option; [@option]
  average_value : string prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__object__target) -> ()

let yojson_of_spec__metric__object__target =
  (function
   | {
       average_utilization = v_average_utilization;
       average_value = v_average_value;
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
         match v_average_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "average_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_average_utilization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "average_utilization", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__metric__object__target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__object__target

[@@@deriving.end]

type spec__metric__object = {
  described_object : spec__metric__object__described_object list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metric : spec__metric__object__metric list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target : spec__metric__object__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__object) -> ()

let yojson_of_spec__metric__object =
  (function
   | {
       described_object = v_described_object;
       metric = v_metric;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric__object__target)
               v_target
           in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metric then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric__object__metric)
               v_metric
           in
           let bnd = "metric", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_described_object then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__metric__object__described_object)
               v_described_object
           in
           let bnd = "described_object", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__metric__object -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__object

[@@@deriving.end]

type spec__metric__pods__metric__selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__metric__pods__metric__selector__match_expressions) ->
  ()

let yojson_of_spec__metric__pods__metric__selector__match_expressions
    =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
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
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
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
    : spec__metric__pods__metric__selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__metric__pods__metric__selector__match_expressions

[@@@deriving.end]

type spec__metric__pods__metric__selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions :
    spec__metric__pods__metric__selector__match_expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__pods__metric__selector) -> ()

let yojson_of_spec__metric__pods__metric__selector =
  (function
   | {
       match_labels = v_match_labels;
       match_expressions = v_match_expressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__metric__pods__metric__selector__match_expressions)
               v_match_expressions
           in
           let bnd = "match_expressions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_match_labels with
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
             let bnd = "match_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__metric__pods__metric__selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__pods__metric__selector

[@@@deriving.end]

type spec__metric__pods__metric = {
  name : string prop;
  selector : spec__metric__pods__metric__selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__pods__metric) -> ()

let yojson_of_spec__metric__pods__metric =
  (function
   | { name = v_name; selector = v_selector } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__metric__pods__metric__selector)
               v_selector
           in
           let bnd = "selector", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__metric__pods__metric -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__pods__metric

[@@@deriving.end]

type spec__metric__pods__target = {
  average_utilization : float prop option; [@option]
  average_value : string prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__pods__target) -> ()

let yojson_of_spec__metric__pods__target =
  (function
   | {
       average_utilization = v_average_utilization;
       average_value = v_average_value;
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
         match v_average_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "average_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_average_utilization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "average_utilization", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__metric__pods__target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__pods__target

[@@@deriving.end]

type spec__metric__pods = {
  metric : spec__metric__pods__metric list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target : spec__metric__pods__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__pods) -> ()

let yojson_of_spec__metric__pods =
  (function
   | { metric = v_metric; target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric__pods__target)
               v_target
           in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metric then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric__pods__metric)
               v_metric
           in
           let bnd = "metric", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__metric__pods -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__pods

[@@@deriving.end]

type spec__metric__resource__target = {
  average_utilization : float prop option; [@option]
  average_value : string prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__resource__target) -> ()

let yojson_of_spec__metric__resource__target =
  (function
   | {
       average_utilization = v_average_utilization;
       average_value = v_average_value;
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
         match v_average_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "average_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_average_utilization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "average_utilization", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__metric__resource__target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__resource__target

[@@@deriving.end]

type spec__metric__resource = {
  name : string prop;
  target : spec__metric__resource__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric__resource) -> ()

let yojson_of_spec__metric__resource =
  (function
   | { name = v_name; target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric__resource__target)
               v_target
           in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__metric__resource -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric__resource

[@@@deriving.end]

type spec__metric = {
  type_ : string prop; [@key "type"]
  container_resource : spec__metric__container_resource list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  external_ : spec__metric__external list;
      [@key "external"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
  object_ : spec__metric__object list;
      [@key "object"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
  pods : spec__metric__pods list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource : spec__metric__resource list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__metric) -> ()

let yojson_of_spec__metric =
  (function
   | {
       type_ = v_type_;
       container_resource = v_container_resource;
       external_ = v_external_;
       object_ = v_object_;
       pods = v_pods;
       resource = v_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_resource then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric__resource)
               v_resource
           in
           let bnd = "resource", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pods then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric__pods) v_pods
           in
           let bnd = "pods", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_object_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric__object)
               v_object_
           in
           let bnd = "object", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric__external)
               v_external_
           in
           let bnd = "external", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_container_resource then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__metric__container_resource)
               v_container_resource
           in
           let bnd = "container_resource", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : spec__metric -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__metric

[@@@deriving.end]

type spec__scale_target_ref = {
  api_version : string prop option; [@option]
  kind : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__scale_target_ref) -> ()

let yojson_of_spec__scale_target_ref =
  (function
   | { api_version = v_api_version; kind = v_kind; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         match v_api_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__scale_target_ref -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__scale_target_ref

[@@@deriving.end]

type spec = {
  max_replicas : float prop;
  min_replicas : float prop option; [@option]
  target_cpu_utilization_percentage : float prop option; [@option]
  behavior : spec__behavior list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metric : spec__metric list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scale_target_ref : spec__scale_target_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       max_replicas = v_max_replicas;
       min_replicas = v_min_replicas;
       target_cpu_utilization_percentage =
         v_target_cpu_utilization_percentage;
       behavior = v_behavior;
       metric = v_metric;
       scale_target_ref = v_scale_target_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_scale_target_ref then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__scale_target_ref)
               v_scale_target_ref
           in
           let bnd = "scale_target_ref", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metric then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__metric) v_metric
           in
           let bnd = "metric", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_behavior then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__behavior) v_behavior
           in
           let bnd = "behavior", arg in
           bnd :: bnds
       in
       let bnds =
         match v_target_cpu_utilization_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_cpu_utilization_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_replicas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_replicas", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_replicas in
         ("max_replicas", arg) :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type kubernetes_horizontal_pod_autoscaler_v2beta2 = {
  id : string prop option; [@option]
  metadata : metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spec : spec list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_horizontal_pod_autoscaler_v2beta2) -> ()

let yojson_of_kubernetes_horizontal_pod_autoscaler_v2beta2 =
  (function
   | { id = v_id; metadata = v_metadata; spec = v_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spec then bnds
         else
           let arg = (yojson_of_list yojson_of_spec) v_spec in
           let bnd = "spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata) v_metadata
           in
           let bnd = "metadata", arg in
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
    : kubernetes_horizontal_pod_autoscaler_v2beta2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_horizontal_pod_autoscaler_v2beta2

[@@@deriving.end]

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__behavior__scale_down__policy ~period_seconds ~type_ ~value
    () : spec__behavior__scale_down__policy =
  { period_seconds; type_; value }

let spec__behavior__scale_down ?select_policy
    ?stabilization_window_seconds ~policy () :
    spec__behavior__scale_down =
  { select_policy; stabilization_window_seconds; policy }

let spec__behavior__scale_up__policy ~period_seconds ~type_ ~value ()
    : spec__behavior__scale_up__policy =
  { period_seconds; type_; value }

let spec__behavior__scale_up ?select_policy
    ?stabilization_window_seconds ~policy () :
    spec__behavior__scale_up =
  { select_policy; stabilization_window_seconds; policy }

let spec__behavior ?(scale_down = []) ?(scale_up = []) () :
    spec__behavior =
  { scale_down; scale_up }

let spec__metric__container_resource__target ?average_utilization
    ?average_value ?value ~type_ () :
    spec__metric__container_resource__target =
  { average_utilization; average_value; type_; value }

let spec__metric__container_resource ?(target = []) ~container ~name
    () : spec__metric__container_resource =
  { container; name; target }

let spec__metric__external__metric__selector__match_expressions ?key
    ?operator ?values () :
    spec__metric__external__metric__selector__match_expressions =
  { key; operator; values }

let spec__metric__external__metric__selector ?match_labels
    ?(match_expressions = []) () :
    spec__metric__external__metric__selector =
  { match_labels; match_expressions }

let spec__metric__external__metric ?(selector = []) ~name () :
    spec__metric__external__metric =
  { name; selector }

let spec__metric__external__target ?average_utilization
    ?average_value ?value ~type_ () : spec__metric__external__target
    =
  { average_utilization; average_value; type_; value }

let spec__metric__external ?(target = []) ~metric () :
    spec__metric__external =
  { metric; target }

let spec__metric__object__described_object ~api_version ~kind ~name
    () : spec__metric__object__described_object =
  { api_version; kind; name }

let spec__metric__object__metric__selector__match_expressions ?key
    ?operator ?values () :
    spec__metric__object__metric__selector__match_expressions =
  { key; operator; values }

let spec__metric__object__metric__selector ?match_labels
    ?(match_expressions = []) () :
    spec__metric__object__metric__selector =
  { match_labels; match_expressions }

let spec__metric__object__metric ?(selector = []) ~name () :
    spec__metric__object__metric =
  { name; selector }

let spec__metric__object__target ?average_utilization ?average_value
    ?value ~type_ () : spec__metric__object__target =
  { average_utilization; average_value; type_; value }

let spec__metric__object ?(target = []) ~described_object ~metric ()
    : spec__metric__object =
  { described_object; metric; target }

let spec__metric__pods__metric__selector__match_expressions ?key
    ?operator ?values () :
    spec__metric__pods__metric__selector__match_expressions =
  { key; operator; values }

let spec__metric__pods__metric__selector ?match_labels
    ?(match_expressions = []) () :
    spec__metric__pods__metric__selector =
  { match_labels; match_expressions }

let spec__metric__pods__metric ?(selector = []) ~name () :
    spec__metric__pods__metric =
  { name; selector }

let spec__metric__pods__target ?average_utilization ?average_value
    ?value ~type_ () : spec__metric__pods__target =
  { average_utilization; average_value; type_; value }

let spec__metric__pods ?(target = []) ~metric () : spec__metric__pods
    =
  { metric; target }

let spec__metric__resource__target ?average_utilization
    ?average_value ?value ~type_ () : spec__metric__resource__target
    =
  { average_utilization; average_value; type_; value }

let spec__metric__resource ?(target = []) ~name () :
    spec__metric__resource =
  { name; target }

let spec__metric ?(container_resource = []) ?(external_ = [])
    ?(object_ = []) ?(pods = []) ?(resource = []) ~type_ () :
    spec__metric =
  { type_; container_resource; external_; object_; pods; resource }

let spec__scale_target_ref ?api_version ~kind ~name () :
    spec__scale_target_ref =
  { api_version; kind; name }

let spec ?min_replicas ?target_cpu_utilization_percentage
    ?(behavior = []) ?(metric = []) ~max_replicas ~scale_target_ref
    () : spec =
  {
    max_replicas;
    min_replicas;
    target_cpu_utilization_percentage;
    behavior;
    metric;
    scale_target_ref;
  }

let kubernetes_horizontal_pod_autoscaler_v2beta2 ?id ~metadata ~spec
    () : kubernetes_horizontal_pod_autoscaler_v2beta2 =
  { id; metadata; spec }

type t = { tf_name : string; id : string prop }

let make ?id ~metadata ~spec __id =
  let __type = "kubernetes_horizontal_pod_autoscaler_v2beta2" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_horizontal_pod_autoscaler_v2beta2
        (kubernetes_horizontal_pod_autoscaler_v2beta2 ?id ~metadata
           ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~spec __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata ~spec __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
