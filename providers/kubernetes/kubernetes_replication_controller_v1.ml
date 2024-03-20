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

type spec__template__metadata = {
  annotations : (string * string prop) list option; [@option]
  generate_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__metadata) -> ()

let yojson_of_spec__template__metadata =
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
    : spec__template__metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__metadata

[@@@deriving.end]

type spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions) ->
  ()

let yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions
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
    : spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions

[@@@deriving.end]

type spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields = {
  key : string prop;
  operator : string prop;
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields) ->
  ()

let yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields

[@@@deriving.end]

type spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference = {
  match_expressions :
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions
    list;
  match_fields :
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference) ->
  ()

let yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference
    =
  (function
   | {
       match_expressions = v_match_expressions;
       match_fields = v_match_fields;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields
             v_match_fields
         in
         ("match_fields", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions
             v_match_expressions
         in
         ("match_expressions", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference

[@@@deriving.end]

type spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution = {
  weight : float prop;
  preference :
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution
    =
  (function
   | { weight = v_weight; preference = v_preference } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference
             v_preference
         in
         ("preference", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions) ->
  ()

let yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions
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
    : spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions

[@@@deriving.end]

type spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields = {
  key : string prop;
  operator : string prop;
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields) ->
  ()

let yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields
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
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields

[@@@deriving.end]

type spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term = {
  match_expressions :
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions
    list;
  match_fields :
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term) ->
  ()

let yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term
    =
  (function
   | {
       match_expressions = v_match_expressions;
       match_fields = v_match_fields;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields
             v_match_fields
         in
         ("match_fields", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions
             v_match_expressions
         in
         ("match_expressions", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term

[@@@deriving.end]

type spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution = {
  node_selector_term :
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution
    =
  (function
   | { node_selector_term = v_node_selector_term } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term
             v_node_selector_term
         in
         ("node_selector_term", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__template__spec__affinity__node_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution
    list;
  required_during_scheduling_ignored_during_execution :
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__affinity__node_affinity) -> ()

let yojson_of_spec__template__spec__affinity__node_affinity =
  (function
   | {
       preferred_during_scheduling_ignored_during_execution =
         v_preferred_during_scheduling_ignored_during_execution;
       required_during_scheduling_ignored_during_execution =
         v_required_during_scheduling_ignored_during_execution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution
             v_required_during_scheduling_ignored_during_execution
         in
         ("required_during_scheduling_ignored_during_execution", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution
             v_preferred_during_scheduling_ignored_during_execution
         in
         ("preferred_during_scheduling_ignored_during_execution", arg)
         :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__node_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__affinity__node_affinity

[@@@deriving.end]

type spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
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
    : spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions

[@@@deriving.end]

type spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions :
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    =
  (function
   | {
       match_labels = v_match_labels;
       match_expressions = v_match_expressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
             v_match_expressions
         in
         ("match_expressions", arg) :: bnds
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
    : spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector

[@@@deriving.end]

type spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term = {
  namespaces : string prop list option; [@option]
  topology_key : string prop;
  label_selector :
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    =
  (function
   | {
       namespaces = v_namespaces;
       topology_key = v_topology_key;
       label_selector = v_label_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
             v_label_selector
         in
         ("label_selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topology_key in
         ("topology_key", arg) :: bnds
       in
       let bnds =
         match v_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "namespaces", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term

[@@@deriving.end]

type spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution = {
  weight : float prop;
  pod_affinity_term :
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution
    =
  (function
   | { weight = v_weight; pod_affinity_term = v_pod_affinity_term }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
             v_pod_affinity_term
         in
         ("pod_affinity_term", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
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
    : spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions

[@@@deriving.end]

type spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions :
    spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector
    =
  (function
   | {
       match_labels = v_match_labels;
       match_expressions = v_match_expressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
             v_match_expressions
         in
         ("match_expressions", arg) :: bnds
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
    : spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector

[@@@deriving.end]

type spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution = {
  namespaces : string prop list option; [@option]
  topology_key : string prop;
  label_selector :
    spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution
    =
  (function
   | {
       namespaces = v_namespaces;
       topology_key = v_topology_key;
       label_selector = v_label_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector
             v_label_selector
         in
         ("label_selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topology_key in
         ("topology_key", arg) :: bnds
       in
       let bnds =
         match v_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "namespaces", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__template__spec__affinity__pod_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution
    list;
  required_during_scheduling_ignored_during_execution :
    spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__affinity__pod_affinity) -> ()

let yojson_of_spec__template__spec__affinity__pod_affinity =
  (function
   | {
       preferred_during_scheduling_ignored_during_execution =
         v_preferred_during_scheduling_ignored_during_execution;
       required_during_scheduling_ignored_during_execution =
         v_required_during_scheduling_ignored_during_execution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution
             v_required_during_scheduling_ignored_during_execution
         in
         ("required_during_scheduling_ignored_during_execution", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution
             v_preferred_during_scheduling_ignored_during_execution
         in
         ("preferred_during_scheduling_ignored_during_execution", arg)
         :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__pod_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__affinity__pod_affinity

[@@@deriving.end]

type spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
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
    : spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions

[@@@deriving.end]

type spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions :
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    =
  (function
   | {
       match_labels = v_match_labels;
       match_expressions = v_match_expressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
             v_match_expressions
         in
         ("match_expressions", arg) :: bnds
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
    : spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector

[@@@deriving.end]

type spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term = {
  namespaces : string prop list option; [@option]
  topology_key : string prop;
  label_selector :
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    =
  (function
   | {
       namespaces = v_namespaces;
       topology_key = v_topology_key;
       label_selector = v_label_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
             v_label_selector
         in
         ("label_selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topology_key in
         ("topology_key", arg) :: bnds
       in
       let bnds =
         match v_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "namespaces", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term

[@@@deriving.end]

type spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution = {
  weight : float prop;
  pod_affinity_term :
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution
    =
  (function
   | { weight = v_weight; pod_affinity_term = v_pod_affinity_term }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
             v_pod_affinity_term
         in
         ("pod_affinity_term", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
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
    : spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions

[@@@deriving.end]

type spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions :
    spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector
    =
  (function
   | {
       match_labels = v_match_labels;
       match_expressions = v_match_expressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
             v_match_expressions
         in
         ("match_expressions", arg) :: bnds
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
    : spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector

[@@@deriving.end]

type spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution = {
  namespaces : string prop list option; [@option]
  topology_key : string prop;
  label_selector :
    spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution) ->
  ()

let yojson_of_spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution
    =
  (function
   | {
       namespaces = v_namespaces;
       topology_key = v_topology_key;
       label_selector = v_label_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector
             v_label_selector
         in
         ("label_selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topology_key in
         ("topology_key", arg) :: bnds
       in
       let bnds =
         match v_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "namespaces", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution

[@@@deriving.end]

type spec__template__spec__affinity__pod_anti_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution
    list;
  required_during_scheduling_ignored_during_execution :
    spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__affinity__pod_anti_affinity) -> ()

let yojson_of_spec__template__spec__affinity__pod_anti_affinity =
  (function
   | {
       preferred_during_scheduling_ignored_during_execution =
         v_preferred_during_scheduling_ignored_during_execution;
       required_during_scheduling_ignored_during_execution =
         v_required_during_scheduling_ignored_during_execution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution
             v_required_during_scheduling_ignored_during_execution
         in
         ("required_during_scheduling_ignored_during_execution", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution
             v_preferred_during_scheduling_ignored_during_execution
         in
         ("preferred_during_scheduling_ignored_during_execution", arg)
         :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity__pod_anti_affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__affinity__pod_anti_affinity

[@@@deriving.end]

type spec__template__spec__affinity = {
  node_affinity : spec__template__spec__affinity__node_affinity list;
  pod_affinity : spec__template__spec__affinity__pod_affinity list;
  pod_anti_affinity :
    spec__template__spec__affinity__pod_anti_affinity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__affinity) -> ()

let yojson_of_spec__template__spec__affinity =
  (function
   | {
       node_affinity = v_node_affinity;
       pod_affinity = v_pod_affinity;
       pod_anti_affinity = v_pod_anti_affinity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_anti_affinity
             v_pod_anti_affinity
         in
         ("pod_anti_affinity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__pod_affinity
             v_pod_affinity
         in
         ("pod_affinity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__affinity__node_affinity
             v_node_affinity
         in
         ("node_affinity", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__affinity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__affinity

[@@@deriving.end]

type spec__template__spec__container__env__value_from__config_map_key_ref = {
  key : string prop option; [@option]
  name : string prop option; [@option]
  optional : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__env__value_from__config_map_key_ref) ->
  ()

let yojson_of_spec__template__spec__container__env__value_from__config_map_key_ref
    =
  (function
   | { key = v_key; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
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
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__env__value_from__config_map_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__env__value_from__config_map_key_ref

[@@@deriving.end]

type spec__template__spec__container__env__value_from__field_ref = {
  api_version : string prop option; [@option]
  field_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__env__value_from__field_ref) ->
  ()

let yojson_of_spec__template__spec__container__env__value_from__field_ref
    =
  (function
   | { api_version = v_api_version; field_path = v_field_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_field_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_path", arg in
             bnd :: bnds
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
    : spec__template__spec__container__env__value_from__field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__env__value_from__field_ref

[@@@deriving.end]

type spec__template__spec__container__env__value_from__resource_field_ref = {
  container_name : string prop option; [@option]
  divisor : string prop option; [@option]
  resource : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__env__value_from__resource_field_ref) ->
  ()

let yojson_of_spec__template__spec__container__env__value_from__resource_field_ref
    =
  (function
   | {
       container_name = v_container_name;
       divisor = v_divisor;
       resource = v_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         match v_divisor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "divisor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__env__value_from__resource_field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__env__value_from__resource_field_ref

[@@@deriving.end]

type spec__template__spec__container__env__value_from__secret_key_ref = {
  key : string prop option; [@option]
  name : string prop option; [@option]
  optional : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__env__value_from__secret_key_ref) ->
  ()

let yojson_of_spec__template__spec__container__env__value_from__secret_key_ref
    =
  (function
   | { key = v_key; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
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
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__env__value_from__secret_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__env__value_from__secret_key_ref

[@@@deriving.end]

type spec__template__spec__container__env__value_from = {
  config_map_key_ref :
    spec__template__spec__container__env__value_from__config_map_key_ref
    list;
  field_ref :
    spec__template__spec__container__env__value_from__field_ref list;
  resource_field_ref :
    spec__template__spec__container__env__value_from__resource_field_ref
    list;
  secret_key_ref :
    spec__template__spec__container__env__value_from__secret_key_ref
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__env__value_from) -> ()

let yojson_of_spec__template__spec__container__env__value_from =
  (function
   | {
       config_map_key_ref = v_config_map_key_ref;
       field_ref = v_field_ref;
       resource_field_ref = v_resource_field_ref;
       secret_key_ref = v_secret_key_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__env__value_from__secret_key_ref
             v_secret_key_ref
         in
         ("secret_key_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__env__value_from__resource_field_ref
             v_resource_field_ref
         in
         ("resource_field_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__env__value_from__field_ref
             v_field_ref
         in
         ("field_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__env__value_from__config_map_key_ref
             v_config_map_key_ref
         in
         ("config_map_key_ref", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__env__value_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container__env__value_from

[@@@deriving.end]

type spec__template__spec__container__env = {
  name : string prop;
  value : string prop option; [@option]
  value_from : spec__template__spec__container__env__value_from list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__container__env) -> ()

let yojson_of_spec__template__spec__container__env =
  (function
   | { name = v_name; value = v_value; value_from = v_value_from } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__env__value_from
             v_value_from
         in
         ("value_from", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__env ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container__env

[@@@deriving.end]

type spec__template__spec__container__env_from__config_map_ref = {
  name : string prop;
  optional : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__env_from__config_map_ref) ->
  ()

let yojson_of_spec__template__spec__container__env_from__config_map_ref
    =
  (function
   | { name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__env_from__config_map_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__env_from__config_map_ref

[@@@deriving.end]

type spec__template__spec__container__env_from__secret_ref = {
  name : string prop;
  optional : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__env_from__secret_ref) ->
  ()

let yojson_of_spec__template__spec__container__env_from__secret_ref =
  (function
   | { name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__env_from__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__env_from__secret_ref

[@@@deriving.end]

type spec__template__spec__container__env_from = {
  prefix : string prop option; [@option]
  config_map_ref :
    spec__template__spec__container__env_from__config_map_ref list;
  secret_ref :
    spec__template__spec__container__env_from__secret_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__container__env_from) -> ()

let yojson_of_spec__template__spec__container__env_from =
  (function
   | {
       prefix = v_prefix;
       config_map_ref = v_config_map_ref;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__env_from__secret_ref
             v_secret_ref
         in
         ("secret_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__env_from__config_map_ref
             v_config_map_ref
         in
         ("config_map_ref", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__env_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container__env_from

[@@@deriving.end]

type spec__template__spec__container__lifecycle__post_start__exec = {
  command : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__lifecycle__post_start__exec) ->
  ()

let yojson_of_spec__template__spec__container__lifecycle__post_start__exec
    =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__lifecycle__post_start__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__lifecycle__post_start__exec

[@@@deriving.end]

type spec__template__spec__container__lifecycle__post_start__http_get__http_header = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__lifecycle__post_start__http_get__http_header) ->
  ()

let yojson_of_spec__template__spec__container__lifecycle__post_start__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__lifecycle__post_start__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__lifecycle__post_start__http_get__http_header

[@@@deriving.end]

type spec__template__spec__container__lifecycle__post_start__http_get = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  scheme : string prop option; [@option]
  http_header :
    spec__template__spec__container__lifecycle__post_start__http_get__http_header
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__lifecycle__post_start__http_get) ->
  ()

let yojson_of_spec__template__spec__container__lifecycle__post_start__http_get
    =
  (function
   | {
       host = v_host;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__lifecycle__post_start__http_get__http_header
             v_http_header
         in
         ("http_header", arg) :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__lifecycle__post_start__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__lifecycle__post_start__http_get

[@@@deriving.end]

type spec__template__spec__container__lifecycle__post_start__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__lifecycle__post_start__tcp_socket) ->
  ()

let yojson_of_spec__template__spec__container__lifecycle__post_start__tcp_socket
    =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__lifecycle__post_start__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__lifecycle__post_start__tcp_socket

[@@@deriving.end]

type spec__template__spec__container__lifecycle__post_start = {
  exec :
    spec__template__spec__container__lifecycle__post_start__exec list;
  http_get :
    spec__template__spec__container__lifecycle__post_start__http_get
    list;
  tcp_socket :
    spec__template__spec__container__lifecycle__post_start__tcp_socket
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__lifecycle__post_start) ->
  ()

let yojson_of_spec__template__spec__container__lifecycle__post_start
    =
  (function
   | {
       exec = v_exec;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__lifecycle__post_start__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__lifecycle__post_start__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__lifecycle__post_start__exec
             v_exec
         in
         ("exec", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__lifecycle__post_start ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__lifecycle__post_start

[@@@deriving.end]

type spec__template__spec__container__lifecycle__pre_stop__exec = {
  command : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__lifecycle__pre_stop__exec) ->
  ()

let yojson_of_spec__template__spec__container__lifecycle__pre_stop__exec
    =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__lifecycle__pre_stop__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__lifecycle__pre_stop__exec

[@@@deriving.end]

type spec__template__spec__container__lifecycle__pre_stop__http_get__http_header = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__lifecycle__pre_stop__http_get__http_header) ->
  ()

let yojson_of_spec__template__spec__container__lifecycle__pre_stop__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__lifecycle__pre_stop__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__lifecycle__pre_stop__http_get__http_header

[@@@deriving.end]

type spec__template__spec__container__lifecycle__pre_stop__http_get = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  scheme : string prop option; [@option]
  http_header :
    spec__template__spec__container__lifecycle__pre_stop__http_get__http_header
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__lifecycle__pre_stop__http_get) ->
  ()

let yojson_of_spec__template__spec__container__lifecycle__pre_stop__http_get
    =
  (function
   | {
       host = v_host;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__lifecycle__pre_stop__http_get__http_header
             v_http_header
         in
         ("http_header", arg) :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__lifecycle__pre_stop__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__lifecycle__pre_stop__http_get

[@@@deriving.end]

type spec__template__spec__container__lifecycle__pre_stop__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__lifecycle__pre_stop__tcp_socket) ->
  ()

let yojson_of_spec__template__spec__container__lifecycle__pre_stop__tcp_socket
    =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__lifecycle__pre_stop__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__lifecycle__pre_stop__tcp_socket

[@@@deriving.end]

type spec__template__spec__container__lifecycle__pre_stop = {
  exec :
    spec__template__spec__container__lifecycle__pre_stop__exec list;
  http_get :
    spec__template__spec__container__lifecycle__pre_stop__http_get
    list;
  tcp_socket :
    spec__template__spec__container__lifecycle__pre_stop__tcp_socket
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__lifecycle__pre_stop) -> ()

let yojson_of_spec__template__spec__container__lifecycle__pre_stop =
  (function
   | {
       exec = v_exec;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__lifecycle__pre_stop__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__lifecycle__pre_stop__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__lifecycle__pre_stop__exec
             v_exec
         in
         ("exec", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__lifecycle__pre_stop ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__lifecycle__pre_stop

[@@@deriving.end]

type spec__template__spec__container__lifecycle = {
  post_start :
    spec__template__spec__container__lifecycle__post_start list;
  pre_stop :
    spec__template__spec__container__lifecycle__pre_stop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__container__lifecycle) -> ()

let yojson_of_spec__template__spec__container__lifecycle =
  (function
   | { post_start = v_post_start; pre_stop = v_pre_stop } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__lifecycle__pre_stop
             v_pre_stop
         in
         ("pre_stop", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__lifecycle__post_start
             v_post_start
         in
         ("post_start", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__lifecycle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container__lifecycle

[@@@deriving.end]

type spec__template__spec__container__liveness_probe__exec = {
  command : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__liveness_probe__exec) ->
  ()

let yojson_of_spec__template__spec__container__liveness_probe__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__liveness_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__liveness_probe__exec

[@@@deriving.end]

type spec__template__spec__container__liveness_probe__grpc = {
  port : float prop;
  service : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__liveness_probe__grpc) ->
  ()

let yojson_of_spec__template__spec__container__liveness_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__liveness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__liveness_probe__grpc

[@@@deriving.end]

type spec__template__spec__container__liveness_probe__http_get__http_header = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__liveness_probe__http_get__http_header) ->
  ()

let yojson_of_spec__template__spec__container__liveness_probe__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__liveness_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__liveness_probe__http_get__http_header

[@@@deriving.end]

type spec__template__spec__container__liveness_probe__http_get = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  scheme : string prop option; [@option]
  http_header :
    spec__template__spec__container__liveness_probe__http_get__http_header
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__liveness_probe__http_get) ->
  ()

let yojson_of_spec__template__spec__container__liveness_probe__http_get
    =
  (function
   | {
       host = v_host;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__liveness_probe__http_get__http_header
             v_http_header
         in
         ("http_header", arg) :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__liveness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__liveness_probe__http_get

[@@@deriving.end]

type spec__template__spec__container__liveness_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__liveness_probe__tcp_socket) ->
  ()

let yojson_of_spec__template__spec__container__liveness_probe__tcp_socket
    =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__liveness_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__liveness_probe__tcp_socket

[@@@deriving.end]

type spec__template__spec__container__liveness_probe = {
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  success_threshold : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  exec : spec__template__spec__container__liveness_probe__exec list;
  grpc : spec__template__spec__container__liveness_probe__grpc list;
  http_get :
    spec__template__spec__container__liveness_probe__http_get list;
  tcp_socket :
    spec__template__spec__container__liveness_probe__tcp_socket list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__liveness_probe) -> ()

let yojson_of_spec__template__spec__container__liveness_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       timeout_seconds = v_timeout_seconds;
       exec = v_exec;
       grpc = v_grpc;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__liveness_probe__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__liveness_probe__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__liveness_probe__grpc
             v_grpc
         in
         ("grpc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__liveness_probe__exec
             v_exec
         in
         ("exec", arg) :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__liveness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container__liveness_probe

[@@@deriving.end]

type spec__template__spec__container__port = {
  container_port : float prop;
  host_ip : string prop option; [@option]
  host_port : float prop option; [@option]
  name : string prop option; [@option]
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__container__port) -> ()

let yojson_of_spec__template__spec__container__port =
  (function
   | {
       container_port = v_container_port;
       host_ip = v_host_ip;
       host_port = v_host_port;
       name = v_name;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
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
         match v_host_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "host_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_ip", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_container_port in
         ("container_port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__port ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container__port

[@@@deriving.end]

type spec__template__spec__container__readiness_probe__exec = {
  command : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__readiness_probe__exec) ->
  ()

let yojson_of_spec__template__spec__container__readiness_probe__exec
    =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__readiness_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__readiness_probe__exec

[@@@deriving.end]

type spec__template__spec__container__readiness_probe__grpc = {
  port : float prop;
  service : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__readiness_probe__grpc) ->
  ()

let yojson_of_spec__template__spec__container__readiness_probe__grpc
    =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__readiness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__readiness_probe__grpc

[@@@deriving.end]

type spec__template__spec__container__readiness_probe__http_get__http_header = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__readiness_probe__http_get__http_header) ->
  ()

let yojson_of_spec__template__spec__container__readiness_probe__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__readiness_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__readiness_probe__http_get__http_header

[@@@deriving.end]

type spec__template__spec__container__readiness_probe__http_get = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  scheme : string prop option; [@option]
  http_header :
    spec__template__spec__container__readiness_probe__http_get__http_header
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__readiness_probe__http_get) ->
  ()

let yojson_of_spec__template__spec__container__readiness_probe__http_get
    =
  (function
   | {
       host = v_host;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__readiness_probe__http_get__http_header
             v_http_header
         in
         ("http_header", arg) :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__readiness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__readiness_probe__http_get

[@@@deriving.end]

type spec__template__spec__container__readiness_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__readiness_probe__tcp_socket) ->
  ()

let yojson_of_spec__template__spec__container__readiness_probe__tcp_socket
    =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__readiness_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__readiness_probe__tcp_socket

[@@@deriving.end]

type spec__template__spec__container__readiness_probe = {
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  success_threshold : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  exec : spec__template__spec__container__readiness_probe__exec list;
  grpc : spec__template__spec__container__readiness_probe__grpc list;
  http_get :
    spec__template__spec__container__readiness_probe__http_get list;
  tcp_socket :
    spec__template__spec__container__readiness_probe__tcp_socket list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__readiness_probe) -> ()

let yojson_of_spec__template__spec__container__readiness_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       timeout_seconds = v_timeout_seconds;
       exec = v_exec;
       grpc = v_grpc;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__readiness_probe__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__readiness_probe__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__readiness_probe__grpc
             v_grpc
         in
         ("grpc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__readiness_probe__exec
             v_exec
         in
         ("exec", arg) :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__readiness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container__readiness_probe

[@@@deriving.end]

type spec__template__spec__container__resources = {
  limits : (string * string prop) list option; [@option]
  requests : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__container__resources) -> ()

let yojson_of_spec__template__spec__container__resources =
  (function
   | { limits = v_limits; requests = v_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_requests with
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
             let bnd = "requests", arg in
             bnd :: bnds
       in
       let bnds =
         match v_limits with
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
             let bnd = "limits", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container__resources

[@@@deriving.end]

type spec__template__spec__container__security_context__capabilities = {
  add : string prop list option; [@option]
  drop : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__security_context__capabilities) ->
  ()

let yojson_of_spec__template__spec__container__security_context__capabilities
    =
  (function
   | { add = v_add; drop = v_drop } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_drop with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "drop", arg in
             bnd :: bnds
       in
       let bnds =
         match v_add with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "add", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__security_context__capabilities ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__security_context__capabilities

[@@@deriving.end]

type spec__template__spec__container__security_context__se_linux_options = {
  level : string prop option; [@option]
  role : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  user : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__security_context__se_linux_options) ->
  ()

let yojson_of_spec__template__spec__container__security_context__se_linux_options
    =
  (function
   | {
       level = v_level;
       role = v_role;
       type_ = v_type_;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
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
       let bnds =
         match v_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__security_context__se_linux_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__security_context__se_linux_options

[@@@deriving.end]

type spec__template__spec__container__security_context__seccomp_profile = {
  localhost_profile : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__security_context__seccomp_profile) ->
  ()

let yojson_of_spec__template__spec__container__security_context__seccomp_profile
    =
  (function
   | { localhost_profile = v_localhost_profile; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_localhost_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "localhost_profile", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__security_context__seccomp_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__security_context__seccomp_profile

[@@@deriving.end]

type spec__template__spec__container__security_context = {
  allow_privilege_escalation : bool prop option; [@option]
  privileged : bool prop option; [@option]
  read_only_root_filesystem : bool prop option; [@option]
  run_as_group : string prop option; [@option]
  run_as_non_root : bool prop option; [@option]
  run_as_user : string prop option; [@option]
  capabilities :
    spec__template__spec__container__security_context__capabilities
    list;
  se_linux_options :
    spec__template__spec__container__security_context__se_linux_options
    list;
  seccomp_profile :
    spec__template__spec__container__security_context__seccomp_profile
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__security_context) -> ()

let yojson_of_spec__template__spec__container__security_context =
  (function
   | {
       allow_privilege_escalation = v_allow_privilege_escalation;
       privileged = v_privileged;
       read_only_root_filesystem = v_read_only_root_filesystem;
       run_as_group = v_run_as_group;
       run_as_non_root = v_run_as_non_root;
       run_as_user = v_run_as_user;
       capabilities = v_capabilities;
       se_linux_options = v_se_linux_options;
       seccomp_profile = v_seccomp_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__security_context__seccomp_profile
             v_seccomp_profile
         in
         ("seccomp_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__security_context__se_linux_options
             v_se_linux_options
         in
         ("se_linux_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__security_context__capabilities
             v_capabilities
         in
         ("capabilities", arg) :: bnds
       in
       let bnds =
         match v_run_as_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_as_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_as_non_root with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "run_as_non_root", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_as_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_as_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only_root_filesystem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only_root_filesystem", arg in
             bnd :: bnds
       in
       let bnds =
         match v_privileged with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "privileged", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_privilege_escalation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_privilege_escalation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__security_context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container__security_context

[@@@deriving.end]

type spec__template__spec__container__startup_probe__exec = {
  command : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__startup_probe__exec) -> ()

let yojson_of_spec__template__spec__container__startup_probe__exec =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__startup_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__startup_probe__exec

[@@@deriving.end]

type spec__template__spec__container__startup_probe__grpc = {
  port : float prop;
  service : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__startup_probe__grpc) -> ()

let yojson_of_spec__template__spec__container__startup_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__startup_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__startup_probe__grpc

[@@@deriving.end]

type spec__template__spec__container__startup_probe__http_get__http_header = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__container__startup_probe__http_get__http_header) ->
  ()

let yojson_of_spec__template__spec__container__startup_probe__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__startup_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__startup_probe__http_get__http_header

[@@@deriving.end]

type spec__template__spec__container__startup_probe__http_get = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  scheme : string prop option; [@option]
  http_header :
    spec__template__spec__container__startup_probe__http_get__http_header
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__startup_probe__http_get) ->
  ()

let yojson_of_spec__template__spec__container__startup_probe__http_get
    =
  (function
   | {
       host = v_host;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__startup_probe__http_get__http_header
             v_http_header
         in
         ("http_header", arg) :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__startup_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__startup_probe__http_get

[@@@deriving.end]

type spec__template__spec__container__startup_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__startup_probe__tcp_socket) ->
  ()

let yojson_of_spec__template__spec__container__startup_probe__tcp_socket
    =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__startup_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__container__startup_probe__tcp_socket

[@@@deriving.end]

type spec__template__spec__container__startup_probe = {
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  success_threshold : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  exec : spec__template__spec__container__startup_probe__exec list;
  grpc : spec__template__spec__container__startup_probe__grpc list;
  http_get :
    spec__template__spec__container__startup_probe__http_get list;
  tcp_socket :
    spec__template__spec__container__startup_probe__tcp_socket list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__container__startup_probe) -> ()

let yojson_of_spec__template__spec__container__startup_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       timeout_seconds = v_timeout_seconds;
       exec = v_exec;
       grpc = v_grpc;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__startup_probe__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__startup_probe__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__startup_probe__grpc
             v_grpc
         in
         ("grpc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__startup_probe__exec
             v_exec
         in
         ("exec", arg) :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__startup_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container__startup_probe

[@@@deriving.end]

type spec__template__spec__container__volume_mount = {
  mount_path : string prop;
  mount_propagation : string prop option; [@option]
  name : string prop;
  read_only : bool prop option; [@option]
  sub_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__container__volume_mount) -> ()

let yojson_of_spec__template__spec__container__volume_mount =
  (function
   | {
       mount_path = v_mount_path;
       mount_propagation = v_mount_propagation;
       name = v_name;
       read_only = v_read_only;
       sub_path = v_sub_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sub_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sub_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mount_propagation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_propagation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container__volume_mount ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container__volume_mount

[@@@deriving.end]

type spec__template__spec__container = {
  args : string prop list option; [@option]
  command : string prop list option; [@option]
  image : string prop option; [@option]
  image_pull_policy : string prop option; [@option]
  name : string prop;
  stdin : bool prop option; [@option]
  stdin_once : bool prop option; [@option]
  termination_message_path : string prop option; [@option]
  termination_message_policy : string prop option; [@option]
  tty : bool prop option; [@option]
  working_dir : string prop option; [@option]
  env : spec__template__spec__container__env list;
  env_from : spec__template__spec__container__env_from list;
  lifecycle : spec__template__spec__container__lifecycle list;
  liveness_probe :
    spec__template__spec__container__liveness_probe list;
  port : spec__template__spec__container__port list;
  readiness_probe :
    spec__template__spec__container__readiness_probe list;
  resources : spec__template__spec__container__resources list;
  security_context :
    spec__template__spec__container__security_context list;
  startup_probe :
    spec__template__spec__container__startup_probe list;
  volume_mount : spec__template__spec__container__volume_mount list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__container) -> ()

let yojson_of_spec__template__spec__container =
  (function
   | {
       args = v_args;
       command = v_command;
       image = v_image;
       image_pull_policy = v_image_pull_policy;
       name = v_name;
       stdin = v_stdin;
       stdin_once = v_stdin_once;
       termination_message_path = v_termination_message_path;
       termination_message_policy = v_termination_message_policy;
       tty = v_tty;
       working_dir = v_working_dir;
       env = v_env;
       env_from = v_env_from;
       lifecycle = v_lifecycle;
       liveness_probe = v_liveness_probe;
       port = v_port;
       readiness_probe = v_readiness_probe;
       resources = v_resources;
       security_context = v_security_context;
       startup_probe = v_startup_probe;
       volume_mount = v_volume_mount;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__volume_mount
             v_volume_mount
         in
         ("volume_mount", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__startup_probe
             v_startup_probe
         in
         ("startup_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__security_context
             v_security_context
         in
         ("security_context", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__resources
             v_resources
         in
         ("resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__readiness_probe
             v_readiness_probe
         in
         ("readiness_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__port v_port
         in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__liveness_probe
             v_liveness_probe
         in
         ("liveness_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__lifecycle
             v_lifecycle
         in
         ("lifecycle", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__env_from
             v_env_from
         in
         ("env_from", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__container__env v_env
         in
         ("env", arg) :: bnds
       in
       let bnds =
         match v_working_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "working_dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tty with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tty", arg in
             bnd :: bnds
       in
       let bnds =
         match v_termination_message_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "termination_message_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_termination_message_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "termination_message_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stdin_once with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "stdin_once", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stdin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "stdin", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_image_pull_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_pull_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
             bnd :: bnds
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__container ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__container

[@@@deriving.end]

type spec__template__spec__dns_config__option = {
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__dns_config__option) -> ()

let yojson_of_spec__template__spec__dns_config__option =
  (function
   | { name = v_name; value = v_value } ->
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__dns_config__option ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__dns_config__option

[@@@deriving.end]

type spec__template__spec__dns_config = {
  nameservers : string prop list option; [@option]
  searches : string prop list option; [@option]
  option_ : spec__template__spec__dns_config__option list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__dns_config) -> ()

let yojson_of_spec__template__spec__dns_config =
  (function
   | {
       nameservers = v_nameservers;
       searches = v_searches;
       option_ = v_option_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__dns_config__option
             v_option_
         in
         ("option_", arg) :: bnds
       in
       let bnds =
         match v_searches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "searches", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nameservers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "nameservers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__dns_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__dns_config

[@@@deriving.end]

type spec__template__spec__host_aliases = {
  hostnames : string prop list;
  ip : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__host_aliases) -> ()

let yojson_of_spec__template__spec__host_aliases =
  (function
   | { hostnames = v_hostnames; ip = v_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_hostnames
         in
         ("hostnames", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__host_aliases ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__host_aliases

[@@@deriving.end]

type spec__template__spec__image_pull_secrets = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__image_pull_secrets) -> ()

let yojson_of_spec__template__spec__image_pull_secrets =
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
    : spec__template__spec__image_pull_secrets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__image_pull_secrets

[@@@deriving.end]

type spec__template__spec__init_container__env__value_from__config_map_key_ref = {
  key : string prop option; [@option]
  name : string prop option; [@option]
  optional : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__env__value_from__config_map_key_ref) ->
  ()

let yojson_of_spec__template__spec__init_container__env__value_from__config_map_key_ref
    =
  (function
   | { key = v_key; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
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
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__env__value_from__config_map_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__env__value_from__config_map_key_ref

[@@@deriving.end]

type spec__template__spec__init_container__env__value_from__field_ref = {
  api_version : string prop option; [@option]
  field_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__env__value_from__field_ref) ->
  ()

let yojson_of_spec__template__spec__init_container__env__value_from__field_ref
    =
  (function
   | { api_version = v_api_version; field_path = v_field_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_field_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_path", arg in
             bnd :: bnds
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
    : spec__template__spec__init_container__env__value_from__field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__env__value_from__field_ref

[@@@deriving.end]

type spec__template__spec__init_container__env__value_from__resource_field_ref = {
  container_name : string prop option; [@option]
  divisor : string prop option; [@option]
  resource : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__env__value_from__resource_field_ref) ->
  ()

let yojson_of_spec__template__spec__init_container__env__value_from__resource_field_ref
    =
  (function
   | {
       container_name = v_container_name;
       divisor = v_divisor;
       resource = v_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         match v_divisor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "divisor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__env__value_from__resource_field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__env__value_from__resource_field_ref

[@@@deriving.end]

type spec__template__spec__init_container__env__value_from__secret_key_ref = {
  key : string prop option; [@option]
  name : string prop option; [@option]
  optional : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__env__value_from__secret_key_ref) ->
  ()

let yojson_of_spec__template__spec__init_container__env__value_from__secret_key_ref
    =
  (function
   | { key = v_key; name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
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
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__env__value_from__secret_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__env__value_from__secret_key_ref

[@@@deriving.end]

type spec__template__spec__init_container__env__value_from = {
  config_map_key_ref :
    spec__template__spec__init_container__env__value_from__config_map_key_ref
    list;
  field_ref :
    spec__template__spec__init_container__env__value_from__field_ref
    list;
  resource_field_ref :
    spec__template__spec__init_container__env__value_from__resource_field_ref
    list;
  secret_key_ref :
    spec__template__spec__init_container__env__value_from__secret_key_ref
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__env__value_from) ->
  ()

let yojson_of_spec__template__spec__init_container__env__value_from =
  (function
   | {
       config_map_key_ref = v_config_map_key_ref;
       field_ref = v_field_ref;
       resource_field_ref = v_resource_field_ref;
       secret_key_ref = v_secret_key_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__env__value_from__secret_key_ref
             v_secret_key_ref
         in
         ("secret_key_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__env__value_from__resource_field_ref
             v_resource_field_ref
         in
         ("resource_field_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__env__value_from__field_ref
             v_field_ref
         in
         ("field_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__env__value_from__config_map_key_ref
             v_config_map_key_ref
         in
         ("config_map_key_ref", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__env__value_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__env__value_from

[@@@deriving.end]

type spec__template__spec__init_container__env = {
  name : string prop;
  value : string prop option; [@option]
  value_from :
    spec__template__spec__init_container__env__value_from list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__init_container__env) -> ()

let yojson_of_spec__template__spec__init_container__env =
  (function
   | { name = v_name; value = v_value; value_from = v_value_from } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__env__value_from
             v_value_from
         in
         ("value_from", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__env ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__init_container__env

[@@@deriving.end]

type spec__template__spec__init_container__env_from__config_map_ref = {
  name : string prop;
  optional : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__env_from__config_map_ref) ->
  ()

let yojson_of_spec__template__spec__init_container__env_from__config_map_ref
    =
  (function
   | { name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__env_from__config_map_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__env_from__config_map_ref

[@@@deriving.end]

type spec__template__spec__init_container__env_from__secret_ref = {
  name : string prop;
  optional : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__env_from__secret_ref) ->
  ()

let yojson_of_spec__template__spec__init_container__env_from__secret_ref
    =
  (function
   | { name = v_name; optional = v_optional } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__env_from__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__env_from__secret_ref

[@@@deriving.end]

type spec__template__spec__init_container__env_from = {
  prefix : string prop option; [@option]
  config_map_ref :
    spec__template__spec__init_container__env_from__config_map_ref
    list;
  secret_ref :
    spec__template__spec__init_container__env_from__secret_ref list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__env_from) -> ()

let yojson_of_spec__template__spec__init_container__env_from =
  (function
   | {
       prefix = v_prefix;
       config_map_ref = v_config_map_ref;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__env_from__secret_ref
             v_secret_ref
         in
         ("secret_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__env_from__config_map_ref
             v_config_map_ref
         in
         ("config_map_ref", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__env_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__init_container__env_from

[@@@deriving.end]

type spec__template__spec__init_container__lifecycle__post_start__exec = {
  command : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__lifecycle__post_start__exec) ->
  ()

let yojson_of_spec__template__spec__init_container__lifecycle__post_start__exec
    =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__lifecycle__post_start__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__lifecycle__post_start__exec

[@@@deriving.end]

type spec__template__spec__init_container__lifecycle__post_start__http_get__http_header = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__lifecycle__post_start__http_get__http_header) ->
  ()

let yojson_of_spec__template__spec__init_container__lifecycle__post_start__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__lifecycle__post_start__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__lifecycle__post_start__http_get__http_header

[@@@deriving.end]

type spec__template__spec__init_container__lifecycle__post_start__http_get = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  scheme : string prop option; [@option]
  http_header :
    spec__template__spec__init_container__lifecycle__post_start__http_get__http_header
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__lifecycle__post_start__http_get) ->
  ()

let yojson_of_spec__template__spec__init_container__lifecycle__post_start__http_get
    =
  (function
   | {
       host = v_host;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__lifecycle__post_start__http_get__http_header
             v_http_header
         in
         ("http_header", arg) :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__lifecycle__post_start__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__lifecycle__post_start__http_get

[@@@deriving.end]

type spec__template__spec__init_container__lifecycle__post_start__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__lifecycle__post_start__tcp_socket) ->
  ()

let yojson_of_spec__template__spec__init_container__lifecycle__post_start__tcp_socket
    =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__lifecycle__post_start__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__lifecycle__post_start__tcp_socket

[@@@deriving.end]

type spec__template__spec__init_container__lifecycle__post_start = {
  exec :
    spec__template__spec__init_container__lifecycle__post_start__exec
    list;
  http_get :
    spec__template__spec__init_container__lifecycle__post_start__http_get
    list;
  tcp_socket :
    spec__template__spec__init_container__lifecycle__post_start__tcp_socket
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__lifecycle__post_start) ->
  ()

let yojson_of_spec__template__spec__init_container__lifecycle__post_start
    =
  (function
   | {
       exec = v_exec;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__lifecycle__post_start__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__lifecycle__post_start__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__lifecycle__post_start__exec
             v_exec
         in
         ("exec", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__lifecycle__post_start ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__lifecycle__post_start

[@@@deriving.end]

type spec__template__spec__init_container__lifecycle__pre_stop__exec = {
  command : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__lifecycle__pre_stop__exec) ->
  ()

let yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__exec
    =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__lifecycle__pre_stop__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__exec

[@@@deriving.end]

type spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header) ->
  ()

let yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header

[@@@deriving.end]

type spec__template__spec__init_container__lifecycle__pre_stop__http_get = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  scheme : string prop option; [@option]
  http_header :
    spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__lifecycle__pre_stop__http_get) ->
  ()

let yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__http_get
    =
  (function
   | {
       host = v_host;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header
             v_http_header
         in
         ("http_header", arg) :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__lifecycle__pre_stop__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__http_get

[@@@deriving.end]

type spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket) ->
  ()

let yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket
    =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket

[@@@deriving.end]

type spec__template__spec__init_container__lifecycle__pre_stop = {
  exec :
    spec__template__spec__init_container__lifecycle__pre_stop__exec
    list;
  http_get :
    spec__template__spec__init_container__lifecycle__pre_stop__http_get
    list;
  tcp_socket :
    spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__lifecycle__pre_stop) ->
  ()

let yojson_of_spec__template__spec__init_container__lifecycle__pre_stop
    =
  (function
   | {
       exec = v_exec;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__lifecycle__pre_stop__exec
             v_exec
         in
         ("exec", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__lifecycle__pre_stop ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__lifecycle__pre_stop

[@@@deriving.end]

type spec__template__spec__init_container__lifecycle = {
  post_start :
    spec__template__spec__init_container__lifecycle__post_start list;
  pre_stop :
    spec__template__spec__init_container__lifecycle__pre_stop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__lifecycle) -> ()

let yojson_of_spec__template__spec__init_container__lifecycle =
  (function
   | { post_start = v_post_start; pre_stop = v_pre_stop } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__lifecycle__pre_stop
             v_pre_stop
         in
         ("pre_stop", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__lifecycle__post_start
             v_post_start
         in
         ("post_start", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__lifecycle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__init_container__lifecycle

[@@@deriving.end]

type spec__template__spec__init_container__liveness_probe__exec = {
  command : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__liveness_probe__exec) ->
  ()

let yojson_of_spec__template__spec__init_container__liveness_probe__exec
    =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__liveness_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__liveness_probe__exec

[@@@deriving.end]

type spec__template__spec__init_container__liveness_probe__grpc = {
  port : float prop;
  service : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__liveness_probe__grpc) ->
  ()

let yojson_of_spec__template__spec__init_container__liveness_probe__grpc
    =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__liveness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__liveness_probe__grpc

[@@@deriving.end]

type spec__template__spec__init_container__liveness_probe__http_get__http_header = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__liveness_probe__http_get__http_header) ->
  ()

let yojson_of_spec__template__spec__init_container__liveness_probe__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__liveness_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__liveness_probe__http_get__http_header

[@@@deriving.end]

type spec__template__spec__init_container__liveness_probe__http_get = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  scheme : string prop option; [@option]
  http_header :
    spec__template__spec__init_container__liveness_probe__http_get__http_header
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__liveness_probe__http_get) ->
  ()

let yojson_of_spec__template__spec__init_container__liveness_probe__http_get
    =
  (function
   | {
       host = v_host;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__liveness_probe__http_get__http_header
             v_http_header
         in
         ("http_header", arg) :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__liveness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__liveness_probe__http_get

[@@@deriving.end]

type spec__template__spec__init_container__liveness_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__liveness_probe__tcp_socket) ->
  ()

let yojson_of_spec__template__spec__init_container__liveness_probe__tcp_socket
    =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__liveness_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__liveness_probe__tcp_socket

[@@@deriving.end]

type spec__template__spec__init_container__liveness_probe = {
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  success_threshold : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  exec :
    spec__template__spec__init_container__liveness_probe__exec list;
  grpc :
    spec__template__spec__init_container__liveness_probe__grpc list;
  http_get :
    spec__template__spec__init_container__liveness_probe__http_get
    list;
  tcp_socket :
    spec__template__spec__init_container__liveness_probe__tcp_socket
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__liveness_probe) -> ()

let yojson_of_spec__template__spec__init_container__liveness_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       timeout_seconds = v_timeout_seconds;
       exec = v_exec;
       grpc = v_grpc;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__liveness_probe__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__liveness_probe__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__liveness_probe__grpc
             v_grpc
         in
         ("grpc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__liveness_probe__exec
             v_exec
         in
         ("exec", arg) :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__liveness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__liveness_probe

[@@@deriving.end]

type spec__template__spec__init_container__port = {
  container_port : float prop;
  host_ip : string prop option; [@option]
  host_port : float prop option; [@option]
  name : string prop option; [@option]
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__init_container__port) -> ()

let yojson_of_spec__template__spec__init_container__port =
  (function
   | {
       container_port = v_container_port;
       host_ip = v_host_ip;
       host_port = v_host_port;
       name = v_name;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
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
         match v_host_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "host_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_ip", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_container_port in
         ("container_port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__port ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__init_container__port

[@@@deriving.end]

type spec__template__spec__init_container__readiness_probe__exec = {
  command : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__readiness_probe__exec) ->
  ()

let yojson_of_spec__template__spec__init_container__readiness_probe__exec
    =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__readiness_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__readiness_probe__exec

[@@@deriving.end]

type spec__template__spec__init_container__readiness_probe__grpc = {
  port : float prop;
  service : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__readiness_probe__grpc) ->
  ()

let yojson_of_spec__template__spec__init_container__readiness_probe__grpc
    =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__readiness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__readiness_probe__grpc

[@@@deriving.end]

type spec__template__spec__init_container__readiness_probe__http_get__http_header = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__readiness_probe__http_get__http_header) ->
  ()

let yojson_of_spec__template__spec__init_container__readiness_probe__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__readiness_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__readiness_probe__http_get__http_header

[@@@deriving.end]

type spec__template__spec__init_container__readiness_probe__http_get = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  scheme : string prop option; [@option]
  http_header :
    spec__template__spec__init_container__readiness_probe__http_get__http_header
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__readiness_probe__http_get) ->
  ()

let yojson_of_spec__template__spec__init_container__readiness_probe__http_get
    =
  (function
   | {
       host = v_host;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__readiness_probe__http_get__http_header
             v_http_header
         in
         ("http_header", arg) :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__readiness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__readiness_probe__http_get

[@@@deriving.end]

type spec__template__spec__init_container__readiness_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__readiness_probe__tcp_socket) ->
  ()

let yojson_of_spec__template__spec__init_container__readiness_probe__tcp_socket
    =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__readiness_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__readiness_probe__tcp_socket

[@@@deriving.end]

type spec__template__spec__init_container__readiness_probe = {
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  success_threshold : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  exec :
    spec__template__spec__init_container__readiness_probe__exec list;
  grpc :
    spec__template__spec__init_container__readiness_probe__grpc list;
  http_get :
    spec__template__spec__init_container__readiness_probe__http_get
    list;
  tcp_socket :
    spec__template__spec__init_container__readiness_probe__tcp_socket
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__readiness_probe) ->
  ()

let yojson_of_spec__template__spec__init_container__readiness_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       timeout_seconds = v_timeout_seconds;
       exec = v_exec;
       grpc = v_grpc;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__readiness_probe__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__readiness_probe__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__readiness_probe__grpc
             v_grpc
         in
         ("grpc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__readiness_probe__exec
             v_exec
         in
         ("exec", arg) :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__readiness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__readiness_probe

[@@@deriving.end]

type spec__template__spec__init_container__resources = {
  limits : (string * string prop) list option; [@option]
  requests : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__resources) -> ()

let yojson_of_spec__template__spec__init_container__resources =
  (function
   | { limits = v_limits; requests = v_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_requests with
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
             let bnd = "requests", arg in
             bnd :: bnds
       in
       let bnds =
         match v_limits with
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
             let bnd = "limits", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__init_container__resources

[@@@deriving.end]

type spec__template__spec__init_container__security_context__capabilities = {
  add : string prop list option; [@option]
  drop : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__security_context__capabilities) ->
  ()

let yojson_of_spec__template__spec__init_container__security_context__capabilities
    =
  (function
   | { add = v_add; drop = v_drop } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_drop with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "drop", arg in
             bnd :: bnds
       in
       let bnds =
         match v_add with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "add", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__security_context__capabilities ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__security_context__capabilities

[@@@deriving.end]

type spec__template__spec__init_container__security_context__se_linux_options = {
  level : string prop option; [@option]
  role : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  user : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__security_context__se_linux_options) ->
  ()

let yojson_of_spec__template__spec__init_container__security_context__se_linux_options
    =
  (function
   | {
       level = v_level;
       role = v_role;
       type_ = v_type_;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
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
       let bnds =
         match v_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__security_context__se_linux_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__security_context__se_linux_options

[@@@deriving.end]

type spec__template__spec__init_container__security_context__seccomp_profile = {
  localhost_profile : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__security_context__seccomp_profile) ->
  ()

let yojson_of_spec__template__spec__init_container__security_context__seccomp_profile
    =
  (function
   | { localhost_profile = v_localhost_profile; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_localhost_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "localhost_profile", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__security_context__seccomp_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__security_context__seccomp_profile

[@@@deriving.end]

type spec__template__spec__init_container__security_context = {
  allow_privilege_escalation : bool prop option; [@option]
  privileged : bool prop option; [@option]
  read_only_root_filesystem : bool prop option; [@option]
  run_as_group : string prop option; [@option]
  run_as_non_root : bool prop option; [@option]
  run_as_user : string prop option; [@option]
  capabilities :
    spec__template__spec__init_container__security_context__capabilities
    list;
  se_linux_options :
    spec__template__spec__init_container__security_context__se_linux_options
    list;
  seccomp_profile :
    spec__template__spec__init_container__security_context__seccomp_profile
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__security_context) ->
  ()

let yojson_of_spec__template__spec__init_container__security_context
    =
  (function
   | {
       allow_privilege_escalation = v_allow_privilege_escalation;
       privileged = v_privileged;
       read_only_root_filesystem = v_read_only_root_filesystem;
       run_as_group = v_run_as_group;
       run_as_non_root = v_run_as_non_root;
       run_as_user = v_run_as_user;
       capabilities = v_capabilities;
       se_linux_options = v_se_linux_options;
       seccomp_profile = v_seccomp_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__security_context__seccomp_profile
             v_seccomp_profile
         in
         ("seccomp_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__security_context__se_linux_options
             v_se_linux_options
         in
         ("se_linux_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__security_context__capabilities
             v_capabilities
         in
         ("capabilities", arg) :: bnds
       in
       let bnds =
         match v_run_as_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_as_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_as_non_root with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "run_as_non_root", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_as_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_as_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only_root_filesystem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only_root_filesystem", arg in
             bnd :: bnds
       in
       let bnds =
         match v_privileged with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "privileged", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_privilege_escalation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_privilege_escalation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__security_context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__security_context

[@@@deriving.end]

type spec__template__spec__init_container__startup_probe__exec = {
  command : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__startup_probe__exec) ->
  ()

let yojson_of_spec__template__spec__init_container__startup_probe__exec
    =
  (function
   | { command = v_command } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__startup_probe__exec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__startup_probe__exec

[@@@deriving.end]

type spec__template__spec__init_container__startup_probe__grpc = {
  port : float prop;
  service : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__startup_probe__grpc) ->
  ()

let yojson_of_spec__template__spec__init_container__startup_probe__grpc
    =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__startup_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__startup_probe__grpc

[@@@deriving.end]

type spec__template__spec__init_container__startup_probe__http_get__http_header = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__startup_probe__http_get__http_header) ->
  ()

let yojson_of_spec__template__spec__init_container__startup_probe__http_get__http_header
    =
  (function
   | { name = v_name; value = v_value } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__startup_probe__http_get__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__startup_probe__http_get__http_header

[@@@deriving.end]

type spec__template__spec__init_container__startup_probe__http_get = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  scheme : string prop option; [@option]
  http_header :
    spec__template__spec__init_container__startup_probe__http_get__http_header
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__startup_probe__http_get) ->
  ()

let yojson_of_spec__template__spec__init_container__startup_probe__http_get
    =
  (function
   | {
       host = v_host;
       path = v_path;
       port = v_port;
       scheme = v_scheme;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__startup_probe__http_get__http_header
             v_http_header
         in
         ("http_header", arg) :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__startup_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__startup_probe__http_get

[@@@deriving.end]

type spec__template__spec__init_container__startup_probe__tcp_socket = {
  port : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__init_container__startup_probe__tcp_socket) ->
  ()

let yojson_of_spec__template__spec__init_container__startup_probe__tcp_socket
    =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__startup_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__init_container__startup_probe__tcp_socket

[@@@deriving.end]

type spec__template__spec__init_container__startup_probe = {
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  success_threshold : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  exec :
    spec__template__spec__init_container__startup_probe__exec list;
  grpc :
    spec__template__spec__init_container__startup_probe__grpc list;
  http_get :
    spec__template__spec__init_container__startup_probe__http_get
    list;
  tcp_socket :
    spec__template__spec__init_container__startup_probe__tcp_socket
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__startup_probe) -> ()

let yojson_of_spec__template__spec__init_container__startup_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       success_threshold = v_success_threshold;
       timeout_seconds = v_timeout_seconds;
       exec = v_exec;
       grpc = v_grpc;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__startup_probe__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__startup_probe__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__startup_probe__grpc
             v_grpc
         in
         ("grpc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__startup_probe__exec
             v_exec
         in
         ("exec", arg) :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__startup_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__init_container__startup_probe

[@@@deriving.end]

type spec__template__spec__init_container__volume_mount = {
  mount_path : string prop;
  mount_propagation : string prop option; [@option]
  name : string prop;
  read_only : bool prop option; [@option]
  sub_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__init_container__volume_mount) -> ()

let yojson_of_spec__template__spec__init_container__volume_mount =
  (function
   | {
       mount_path = v_mount_path;
       mount_propagation = v_mount_propagation;
       name = v_name;
       read_only = v_read_only;
       sub_path = v_sub_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sub_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sub_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mount_propagation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_propagation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container__volume_mount ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__init_container__volume_mount

[@@@deriving.end]

type spec__template__spec__init_container = {
  args : string prop list option; [@option]
  command : string prop list option; [@option]
  image : string prop option; [@option]
  image_pull_policy : string prop option; [@option]
  name : string prop;
  stdin : bool prop option; [@option]
  stdin_once : bool prop option; [@option]
  termination_message_path : string prop option; [@option]
  termination_message_policy : string prop option; [@option]
  tty : bool prop option; [@option]
  working_dir : string prop option; [@option]
  env : spec__template__spec__init_container__env list;
  env_from : spec__template__spec__init_container__env_from list;
  lifecycle : spec__template__spec__init_container__lifecycle list;
  liveness_probe :
    spec__template__spec__init_container__liveness_probe list;
  port : spec__template__spec__init_container__port list;
  readiness_probe :
    spec__template__spec__init_container__readiness_probe list;
  resources : spec__template__spec__init_container__resources list;
  security_context :
    spec__template__spec__init_container__security_context list;
  startup_probe :
    spec__template__spec__init_container__startup_probe list;
  volume_mount :
    spec__template__spec__init_container__volume_mount list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__init_container) -> ()

let yojson_of_spec__template__spec__init_container =
  (function
   | {
       args = v_args;
       command = v_command;
       image = v_image;
       image_pull_policy = v_image_pull_policy;
       name = v_name;
       stdin = v_stdin;
       stdin_once = v_stdin_once;
       termination_message_path = v_termination_message_path;
       termination_message_policy = v_termination_message_policy;
       tty = v_tty;
       working_dir = v_working_dir;
       env = v_env;
       env_from = v_env_from;
       lifecycle = v_lifecycle;
       liveness_probe = v_liveness_probe;
       port = v_port;
       readiness_probe = v_readiness_probe;
       resources = v_resources;
       security_context = v_security_context;
       startup_probe = v_startup_probe;
       volume_mount = v_volume_mount;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__volume_mount
             v_volume_mount
         in
         ("volume_mount", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__startup_probe
             v_startup_probe
         in
         ("startup_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__security_context
             v_security_context
         in
         ("security_context", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__resources
             v_resources
         in
         ("resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__readiness_probe
             v_readiness_probe
         in
         ("readiness_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__port
             v_port
         in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__liveness_probe
             v_liveness_probe
         in
         ("liveness_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__lifecycle
             v_lifecycle
         in
         ("lifecycle", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__env_from
             v_env_from
         in
         ("env_from", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container__env
             v_env
         in
         ("env", arg) :: bnds
       in
       let bnds =
         match v_working_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "working_dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tty with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tty", arg in
             bnd :: bnds
       in
       let bnds =
         match v_termination_message_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "termination_message_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_termination_message_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "termination_message_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stdin_once with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "stdin_once", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stdin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "stdin", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_image_pull_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_pull_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
             bnd :: bnds
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__init_container ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__init_container

[@@@deriving.end]

type spec__template__spec__os = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__os) -> ()

let yojson_of_spec__template__spec__os =
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
    : spec__template__spec__os -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__os

[@@@deriving.end]

type spec__template__spec__readiness_gate = {
  condition_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__readiness_gate) -> ()

let yojson_of_spec__template__spec__readiness_gate =
  (function
   | { condition_type = v_condition_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_condition_type
         in
         ("condition_type", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__readiness_gate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__readiness_gate

[@@@deriving.end]

type spec__template__spec__security_context__se_linux_options = {
  level : string prop option; [@option]
  role : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  user : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__security_context__se_linux_options) ->
  ()

let yojson_of_spec__template__spec__security_context__se_linux_options
    =
  (function
   | {
       level = v_level;
       role = v_role;
       type_ = v_type_;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
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
       let bnds =
         match v_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__security_context__se_linux_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__security_context__se_linux_options

[@@@deriving.end]

type spec__template__spec__security_context__seccomp_profile = {
  localhost_profile : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__security_context__seccomp_profile) ->
  ()

let yojson_of_spec__template__spec__security_context__seccomp_profile
    =
  (function
   | { localhost_profile = v_localhost_profile; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_localhost_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "localhost_profile", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__security_context__seccomp_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__security_context__seccomp_profile

[@@@deriving.end]

type spec__template__spec__security_context__sysctl = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__security_context__sysctl) -> ()

let yojson_of_spec__template__spec__security_context__sysctl =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__security_context__sysctl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__security_context__sysctl

[@@@deriving.end]

type spec__template__spec__security_context__windows_options = {
  gmsa_credential_spec : string prop option; [@option]
  gmsa_credential_spec_name : string prop option; [@option]
  host_process : bool prop option; [@option]
  run_as_username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__security_context__windows_options) ->
  ()

let yojson_of_spec__template__spec__security_context__windows_options
    =
  (function
   | {
       gmsa_credential_spec = v_gmsa_credential_spec;
       gmsa_credential_spec_name = v_gmsa_credential_spec_name;
       host_process = v_host_process;
       run_as_username = v_run_as_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_run_as_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_as_username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_process with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "host_process", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gmsa_credential_spec_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gmsa_credential_spec_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gmsa_credential_spec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gmsa_credential_spec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__security_context__windows_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__security_context__windows_options

[@@@deriving.end]

type spec__template__spec__security_context = {
  fs_group : string prop option; [@option]
  fs_group_change_policy : string prop option; [@option]
  run_as_group : string prop option; [@option]
  run_as_non_root : bool prop option; [@option]
  run_as_user : string prop option; [@option]
  supplemental_groups : float prop list option; [@option]
  se_linux_options :
    spec__template__spec__security_context__se_linux_options list;
  seccomp_profile :
    spec__template__spec__security_context__seccomp_profile list;
  sysctl : spec__template__spec__security_context__sysctl list;
  windows_options :
    spec__template__spec__security_context__windows_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__security_context) -> ()

let yojson_of_spec__template__spec__security_context =
  (function
   | {
       fs_group = v_fs_group;
       fs_group_change_policy = v_fs_group_change_policy;
       run_as_group = v_run_as_group;
       run_as_non_root = v_run_as_non_root;
       run_as_user = v_run_as_user;
       supplemental_groups = v_supplemental_groups;
       se_linux_options = v_se_linux_options;
       seccomp_profile = v_seccomp_profile;
       sysctl = v_sysctl;
       windows_options = v_windows_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__security_context__windows_options
             v_windows_options
         in
         ("windows_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__security_context__sysctl
             v_sysctl
         in
         ("sysctl", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__security_context__seccomp_profile
             v_seccomp_profile
         in
         ("seccomp_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__security_context__se_linux_options
             v_se_linux_options
         in
         ("se_linux_options", arg) :: bnds
       in
       let bnds =
         match v_supplemental_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "supplemental_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_as_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_as_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_as_non_root with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "run_as_non_root", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_as_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_as_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_group_change_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_group_change_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__security_context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__security_context

[@@@deriving.end]

type spec__template__spec__toleration = {
  effect : string prop option; [@option]
  key : string prop option; [@option]
  operator : string prop option; [@option]
  toleration_seconds : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__toleration) -> ()

let yojson_of_spec__template__spec__toleration =
  (function
   | {
       effect = v_effect;
       key = v_key;
       operator = v_operator;
       toleration_seconds = v_toleration_seconds;
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
         match v_toleration_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "toleration_seconds", arg in
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
       let bnds =
         match v_effect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "effect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__toleration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__toleration

[@@@deriving.end]

type spec__template__spec__topology_spread_constraint__label_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__topology_spread_constraint__label_selector__match_expressions) ->
  ()

let yojson_of_spec__template__spec__topology_spread_constraint__label_selector__match_expressions
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
    : spec__template__spec__topology_spread_constraint__label_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__topology_spread_constraint__label_selector__match_expressions

[@@@deriving.end]

type spec__template__spec__topology_spread_constraint__label_selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions :
    spec__template__spec__topology_spread_constraint__label_selector__match_expressions
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__topology_spread_constraint__label_selector) ->
  ()

let yojson_of_spec__template__spec__topology_spread_constraint__label_selector
    =
  (function
   | {
       match_labels = v_match_labels;
       match_expressions = v_match_expressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__topology_spread_constraint__label_selector__match_expressions
             v_match_expressions
         in
         ("match_expressions", arg) :: bnds
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
    : spec__template__spec__topology_spread_constraint__label_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__topology_spread_constraint__label_selector

[@@@deriving.end]

type spec__template__spec__topology_spread_constraint = {
  match_label_keys : string prop list option; [@option]
  max_skew : float prop option; [@option]
  min_domains : float prop option; [@option]
  node_affinity_policy : string prop option; [@option]
  node_taints_policy : string prop option; [@option]
  topology_key : string prop option; [@option]
  when_unsatisfiable : string prop option; [@option]
  label_selector :
    spec__template__spec__topology_spread_constraint__label_selector
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__topology_spread_constraint) -> ()

let yojson_of_spec__template__spec__topology_spread_constraint =
  (function
   | {
       match_label_keys = v_match_label_keys;
       max_skew = v_max_skew;
       min_domains = v_min_domains;
       node_affinity_policy = v_node_affinity_policy;
       node_taints_policy = v_node_taints_policy;
       topology_key = v_topology_key;
       when_unsatisfiable = v_when_unsatisfiable;
       label_selector = v_label_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__topology_spread_constraint__label_selector
             v_label_selector
         in
         ("label_selector", arg) :: bnds
       in
       let bnds =
         match v_when_unsatisfiable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "when_unsatisfiable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_topology_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topology_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_taints_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_taints_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_affinity_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_affinity_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_domains", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_skew with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_skew", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_label_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_label_keys", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__topology_spread_constraint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__topology_spread_constraint

[@@@deriving.end]

type spec__template__spec__volume__aws_elastic_block_store = {
  fs_type : string prop option; [@option]
  partition : float prop option; [@option]
  read_only : bool prop option; [@option]
  volume_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__volume__aws_elastic_block_store) ->
  ()

let yojson_of_spec__template__spec__volume__aws_elastic_block_store =
  (function
   | {
       fs_type = v_fs_type;
       partition = v_partition;
       read_only = v_read_only;
       volume_id = v_volume_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_id in
         ("volume_id", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "partition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__aws_elastic_block_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__aws_elastic_block_store

[@@@deriving.end]

type spec__template__spec__volume__azure_disk = {
  caching_mode : string prop;
  data_disk_uri : string prop;
  disk_name : string prop;
  fs_type : string prop option; [@option]
  kind : string prop option; [@option]
  read_only : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__azure_disk) -> ()

let yojson_of_spec__template__spec__volume__azure_disk =
  (function
   | {
       caching_mode = v_caching_mode;
       data_disk_uri = v_data_disk_uri;
       disk_name = v_disk_name;
       fs_type = v_fs_type;
       kind = v_kind;
       read_only = v_read_only;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_name in
         ("disk_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_disk_uri in
         ("data_disk_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_caching_mode in
         ("caching_mode", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__azure_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__azure_disk

[@@@deriving.end]

type spec__template__spec__volume__azure_file = {
  read_only : bool prop option; [@option]
  secret_name : string prop;
  secret_namespace : string prop option; [@option]
  share_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__azure_file) -> ()

let yojson_of_spec__template__spec__volume__azure_file =
  (function
   | {
       read_only = v_read_only;
       secret_name = v_secret_name;
       secret_namespace = v_secret_namespace;
       share_name = v_share_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_share_name in
         ("share_name", arg) :: bnds
       in
       let bnds =
         match v_secret_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__azure_file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__azure_file

[@@@deriving.end]

type spec__template__spec__volume__ceph_fs__secret_ref = {
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__volume__ceph_fs__secret_ref) -> ()

let yojson_of_spec__template__spec__volume__ceph_fs__secret_ref =
  (function
   | { name = v_name; namespace = v_namespace } ->
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
       `Assoc bnds
    : spec__template__spec__volume__ceph_fs__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__ceph_fs__secret_ref

[@@@deriving.end]

type spec__template__spec__volume__ceph_fs = {
  monitors : string prop list;
  path : string prop option; [@option]
  read_only : bool prop option; [@option]
  secret_file : string prop option; [@option]
  user : string prop option; [@option]
  secret_ref : spec__template__spec__volume__ceph_fs__secret_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__ceph_fs) -> ()

let yojson_of_spec__template__spec__volume__ceph_fs =
  (function
   | {
       monitors = v_monitors;
       path = v_path;
       read_only = v_read_only;
       secret_file = v_secret_file;
       user = v_user;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__ceph_fs__secret_ref
             v_secret_ref
         in
         ("secret_ref", arg) :: bnds
       in
       let bnds =
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_file", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_monitors
         in
         ("monitors", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__ceph_fs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__ceph_fs

[@@@deriving.end]

type spec__template__spec__volume__cinder = {
  fs_type : string prop option; [@option]
  read_only : bool prop option; [@option]
  volume_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__cinder) -> ()

let yojson_of_spec__template__spec__volume__cinder =
  (function
   | {
       fs_type = v_fs_type;
       read_only = v_read_only;
       volume_id = v_volume_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_id in
         ("volume_id", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__cinder ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__cinder

[@@@deriving.end]

type spec__template__spec__volume__config_map__items = {
  key : string prop option; [@option]
  mode : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__volume__config_map__items) -> ()

let yojson_of_spec__template__spec__volume__config_map__items =
  (function
   | { key = v_key; mode = v_mode; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
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
    : spec__template__spec__volume__config_map__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__config_map__items

[@@@deriving.end]

type spec__template__spec__volume__config_map = {
  default_mode : string prop option; [@option]
  name : string prop option; [@option]
  optional : bool prop option; [@option]
  items : spec__template__spec__volume__config_map__items list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__config_map) -> ()

let yojson_of_spec__template__spec__volume__config_map =
  (function
   | {
       default_mode = v_default_mode;
       name = v_name;
       optional = v_optional;
       items = v_items;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__config_map__items
             v_items
         in
         ("items", arg) :: bnds
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
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
         match v_default_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__config_map ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__config_map

[@@@deriving.end]

type spec__template__spec__volume__csi__node_publish_secret_ref = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__volume__csi__node_publish_secret_ref) ->
  ()

let yojson_of_spec__template__spec__volume__csi__node_publish_secret_ref
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__csi__node_publish_secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__csi__node_publish_secret_ref

[@@@deriving.end]

type spec__template__spec__volume__csi = {
  driver : string prop;
  fs_type : string prop option; [@option]
  read_only : bool prop option; [@option]
  volume_attributes : (string * string prop) list option; [@option]
  node_publish_secret_ref :
    spec__template__spec__volume__csi__node_publish_secret_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__csi) -> ()

let yojson_of_spec__template__spec__volume__csi =
  (function
   | {
       driver = v_driver;
       fs_type = v_fs_type;
       read_only = v_read_only;
       volume_attributes = v_volume_attributes;
       node_publish_secret_ref = v_node_publish_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__csi__node_publish_secret_ref
             v_node_publish_secret_ref
         in
         ("node_publish_secret_ref", arg) :: bnds
       in
       let bnds =
         match v_volume_attributes with
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
             let bnd = "volume_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_driver in
         ("driver", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__csi ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__csi

[@@@deriving.end]

type spec__template__spec__volume__downward_api__items__field_ref = {
  api_version : string prop option; [@option]
  field_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__downward_api__items__field_ref) ->
  ()

let yojson_of_spec__template__spec__volume__downward_api__items__field_ref
    =
  (function
   | { api_version = v_api_version; field_path = v_field_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_field_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_path", arg in
             bnd :: bnds
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
    : spec__template__spec__volume__downward_api__items__field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__downward_api__items__field_ref

[@@@deriving.end]

type spec__template__spec__volume__downward_api__items__resource_field_ref = {
  container_name : string prop;
  divisor : string prop option; [@option]
  resource : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__downward_api__items__resource_field_ref) ->
  ()

let yojson_of_spec__template__spec__volume__downward_api__items__resource_field_ref
    =
  (function
   | {
       container_name = v_container_name;
       divisor = v_divisor;
       resource = v_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         match v_divisor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "divisor", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__downward_api__items__resource_field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__downward_api__items__resource_field_ref

[@@@deriving.end]

type spec__template__spec__volume__downward_api__items = {
  mode : string prop option; [@option]
  path : string prop;
  field_ref :
    spec__template__spec__volume__downward_api__items__field_ref list;
  resource_field_ref :
    spec__template__spec__volume__downward_api__items__resource_field_ref
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__volume__downward_api__items) -> ()

let yojson_of_spec__template__spec__volume__downward_api__items =
  (function
   | {
       mode = v_mode;
       path = v_path;
       field_ref = v_field_ref;
       resource_field_ref = v_resource_field_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__downward_api__items__resource_field_ref
             v_resource_field_ref
         in
         ("resource_field_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__downward_api__items__field_ref
             v_field_ref
         in
         ("field_ref", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__downward_api__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__downward_api__items

[@@@deriving.end]

type spec__template__spec__volume__downward_api = {
  default_mode : string prop option; [@option]
  items : spec__template__spec__volume__downward_api__items list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__downward_api) -> ()

let yojson_of_spec__template__spec__volume__downward_api =
  (function
   | { default_mode = v_default_mode; items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__downward_api__items
             v_items
         in
         ("items", arg) :: bnds
       in
       let bnds =
         match v_default_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__downward_api ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__downward_api

[@@@deriving.end]

type spec__template__spec__volume__empty_dir = {
  medium : string prop option; [@option]
  size_limit : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__empty_dir) -> ()

let yojson_of_spec__template__spec__volume__empty_dir =
  (function
   | { medium = v_medium; size_limit = v_size_limit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_size_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "size_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_medium with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "medium", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__empty_dir ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__empty_dir

[@@@deriving.end]

type spec__template__spec__volume__ephemeral__volume_claim_template__metadata = {
  annotations : (string * string prop) list option; [@option]
  labels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__ephemeral__volume_claim_template__metadata) ->
  ()

let yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__metadata
    =
  (function
   | { annotations = v_annotations; labels = v_labels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : spec__template__spec__volume__ephemeral__volume_claim_template__metadata ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__metadata

[@@@deriving.end]

type spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources = {
  limits : (string * string prop) list option; [@option]
  requests : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources) ->
  ()

let yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources
    =
  (function
   | { limits = v_limits; requests = v_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_requests with
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
             let bnd = "requests", arg in
             bnd :: bnds
       in
       let bnds =
         match v_limits with
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
             let bnd = "limits", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources

[@@@deriving.end]

type spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions) ->
  ()

let yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions
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
    : spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions

[@@@deriving.end]

type spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector = {
  match_labels : (string * string prop) list option; [@option]
  match_expressions :
    spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector) ->
  ()

let yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector
    =
  (function
   | {
       match_labels = v_match_labels;
       match_expressions = v_match_expressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions
             v_match_expressions
         in
         ("match_expressions", arg) :: bnds
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
    : spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector

[@@@deriving.end]

type spec__template__spec__volume__ephemeral__volume_claim_template__spec = {
  access_modes : string prop list;
  storage_class_name : string prop option; [@option]
  volume_mode : string prop option; [@option]
  volume_name : string prop option; [@option]
  resources :
    spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources
    list;
  selector :
    spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__ephemeral__volume_claim_template__spec) ->
  ()

let yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec
    =
  (function
   | {
       access_modes = v_access_modes;
       storage_class_name = v_storage_class_name;
       volume_mode = v_volume_mode;
       volume_name = v_volume_name;
       resources = v_resources;
       selector = v_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector
             v_selector
         in
         ("selector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources
             v_resources
         in
         ("resources", arg) :: bnds
       in
       let bnds =
         match v_volume_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_volume_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_class_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_class_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_access_modes
         in
         ("access_modes", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__ephemeral__volume_claim_template__spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec

[@@@deriving.end]

type spec__template__spec__volume__ephemeral__volume_claim_template = {
  metadata :
    spec__template__spec__volume__ephemeral__volume_claim_template__metadata
    list;
  spec :
    spec__template__spec__volume__ephemeral__volume_claim_template__spec
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__ephemeral__volume_claim_template) ->
  ()

let yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template
    =
  (function
   | { metadata = v_metadata; spec = v_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__spec
             v_spec
         in
         ("spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template__metadata
             v_metadata
         in
         ("metadata", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__ephemeral__volume_claim_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template

[@@@deriving.end]

type spec__template__spec__volume__ephemeral = {
  volume_claim_template :
    spec__template__spec__volume__ephemeral__volume_claim_template
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__ephemeral) -> ()

let yojson_of_spec__template__spec__volume__ephemeral =
  (function
   | { volume_claim_template = v_volume_claim_template } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__ephemeral__volume_claim_template
             v_volume_claim_template
         in
         ("volume_claim_template", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__ephemeral ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__ephemeral

[@@@deriving.end]

type spec__template__spec__volume__fc = {
  fs_type : string prop option; [@option]
  lun : float prop;
  read_only : bool prop option; [@option]
  target_ww_ns : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__fc) -> ()

let yojson_of_spec__template__spec__volume__fc =
  (function
   | {
       fs_type = v_fs_type;
       lun = v_lun;
       read_only = v_read_only;
       target_ww_ns = v_target_ww_ns;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_target_ww_ns
         in
         ("target_ww_ns", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lun in
         ("lun", arg) :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__fc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__fc

[@@@deriving.end]

type spec__template__spec__volume__flex_volume__secret_ref = {
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__volume__flex_volume__secret_ref) ->
  ()

let yojson_of_spec__template__spec__volume__flex_volume__secret_ref =
  (function
   | { name = v_name; namespace = v_namespace } ->
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
       `Assoc bnds
    : spec__template__spec__volume__flex_volume__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__flex_volume__secret_ref

[@@@deriving.end]

type spec__template__spec__volume__flex_volume = {
  driver : string prop;
  fs_type : string prop option; [@option]
  options : (string * string prop) list option; [@option]
  read_only : bool prop option; [@option]
  secret_ref :
    spec__template__spec__volume__flex_volume__secret_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__flex_volume) -> ()

let yojson_of_spec__template__spec__volume__flex_volume =
  (function
   | {
       driver = v_driver;
       fs_type = v_fs_type;
       options = v_options;
       read_only = v_read_only;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__flex_volume__secret_ref
             v_secret_ref
         in
         ("secret_ref", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_options with
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
             let bnd = "options", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_driver in
         ("driver", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__flex_volume ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__flex_volume

[@@@deriving.end]

type spec__template__spec__volume__flocker = {
  dataset_name : string prop option; [@option]
  dataset_uuid : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__flocker) -> ()

let yojson_of_spec__template__spec__volume__flocker =
  (function
   | { dataset_name = v_dataset_name; dataset_uuid = v_dataset_uuid }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_dataset_uuid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_uuid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataset_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__flocker ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__flocker

[@@@deriving.end]

type spec__template__spec__volume__gce_persistent_disk = {
  fs_type : string prop option; [@option]
  partition : float prop option; [@option]
  pd_name : string prop;
  read_only : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__volume__gce_persistent_disk) -> ()

let yojson_of_spec__template__spec__volume__gce_persistent_disk =
  (function
   | {
       fs_type = v_fs_type;
       partition = v_partition;
       pd_name = v_pd_name;
       read_only = v_read_only;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pd_name in
         ("pd_name", arg) :: bnds
       in
       let bnds =
         match v_partition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "partition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__gce_persistent_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__gce_persistent_disk

[@@@deriving.end]

type spec__template__spec__volume__git_repo = {
  directory : string prop option; [@option]
  repository : string prop option; [@option]
  revision : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__git_repo) -> ()

let yojson_of_spec__template__spec__volume__git_repo =
  (function
   | {
       directory = v_directory;
       repository = v_repository;
       revision = v_revision;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directory", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__git_repo ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__git_repo

[@@@deriving.end]

type spec__template__spec__volume__glusterfs = {
  endpoints_name : string prop;
  path : string prop;
  read_only : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__glusterfs) -> ()

let yojson_of_spec__template__spec__volume__glusterfs =
  (function
   | {
       endpoints_name = v_endpoints_name;
       path = v_path;
       read_only = v_read_only;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_endpoints_name
         in
         ("endpoints_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__glusterfs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__glusterfs

[@@@deriving.end]

type spec__template__spec__volume__host_path = {
  path : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__host_path) -> ()

let yojson_of_spec__template__spec__volume__host_path =
  (function
   | { path = v_path; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__host_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__host_path

[@@@deriving.end]

type spec__template__spec__volume__iscsi = {
  fs_type : string prop option; [@option]
  iqn : string prop;
  iscsi_interface : string prop option; [@option]
  lun : float prop option; [@option]
  read_only : bool prop option; [@option]
  target_portal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__iscsi) -> ()

let yojson_of_spec__template__spec__volume__iscsi =
  (function
   | {
       fs_type = v_fs_type;
       iqn = v_iqn;
       iscsi_interface = v_iscsi_interface;
       lun = v_lun;
       read_only = v_read_only;
       target_portal = v_target_portal;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_portal in
         ("target_portal", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lun with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lun", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iscsi_interface with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iscsi_interface", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iqn in
         ("iqn", arg) :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__iscsi ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__iscsi

[@@@deriving.end]

type spec__template__spec__volume__local = {
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__local) -> ()

let yojson_of_spec__template__spec__volume__local =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__local ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__local

[@@@deriving.end]

type spec__template__spec__volume__nfs = {
  path : string prop;
  read_only : bool prop option; [@option]
  server : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__nfs) -> ()

let yojson_of_spec__template__spec__volume__nfs =
  (function
   | { path = v_path; read_only = v_read_only; server = v_server } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__nfs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__nfs

[@@@deriving.end]

type spec__template__spec__volume__persistent_volume_claim = {
  claim_name : string prop option; [@option]
  read_only : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__volume__persistent_volume_claim) ->
  ()

let yojson_of_spec__template__spec__volume__persistent_volume_claim =
  (function
   | { claim_name = v_claim_name; read_only = v_read_only } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_claim_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "claim_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__persistent_volume_claim ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__persistent_volume_claim

[@@@deriving.end]

type spec__template__spec__volume__photon_persistent_disk = {
  fs_type : string prop option; [@option]
  pd_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__volume__photon_persistent_disk) -> ()

let yojson_of_spec__template__spec__volume__photon_persistent_disk =
  (function
   | { fs_type = v_fs_type; pd_id = v_pd_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pd_id in
         ("pd_id", arg) :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__photon_persistent_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__photon_persistent_disk

[@@@deriving.end]

type spec__template__spec__volume__projected__sources__config_map__items = {
  key : string prop option; [@option]
  mode : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__projected__sources__config_map__items) ->
  ()

let yojson_of_spec__template__spec__volume__projected__sources__config_map__items
    =
  (function
   | { key = v_key; mode = v_mode; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
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
    : spec__template__spec__volume__projected__sources__config_map__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__projected__sources__config_map__items

[@@@deriving.end]

type spec__template__spec__volume__projected__sources__config_map = {
  name : string prop option; [@option]
  optional : bool prop option; [@option]
  items :
    spec__template__spec__volume__projected__sources__config_map__items
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__projected__sources__config_map) ->
  ()

let yojson_of_spec__template__spec__volume__projected__sources__config_map
    =
  (function
   | { name = v_name; optional = v_optional; items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__projected__sources__config_map__items
             v_items
         in
         ("items", arg) :: bnds
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
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
       `Assoc bnds
    : spec__template__spec__volume__projected__sources__config_map ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__projected__sources__config_map

[@@@deriving.end]

type spec__template__spec__volume__projected__sources__downward_api__items__field_ref = {
  api_version : string prop option; [@option]
  field_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__projected__sources__downward_api__items__field_ref) ->
  ()

let yojson_of_spec__template__spec__volume__projected__sources__downward_api__items__field_ref
    =
  (function
   | { api_version = v_api_version; field_path = v_field_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_field_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_path", arg in
             bnd :: bnds
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
    : spec__template__spec__volume__projected__sources__downward_api__items__field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__projected__sources__downward_api__items__field_ref

[@@@deriving.end]

type spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref = {
  container_name : string prop;
  divisor : string prop option; [@option]
  resource : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref) ->
  ()

let yojson_of_spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref
    =
  (function
   | {
       container_name = v_container_name;
       divisor = v_divisor;
       resource = v_resource;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         match v_divisor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "divisor", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref

[@@@deriving.end]

type spec__template__spec__volume__projected__sources__downward_api__items = {
  mode : string prop option; [@option]
  path : string prop;
  field_ref :
    spec__template__spec__volume__projected__sources__downward_api__items__field_ref
    list;
  resource_field_ref :
    spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__projected__sources__downward_api__items) ->
  ()

let yojson_of_spec__template__spec__volume__projected__sources__downward_api__items
    =
  (function
   | {
       mode = v_mode;
       path = v_path;
       field_ref = v_field_ref;
       resource_field_ref = v_resource_field_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref
             v_resource_field_ref
         in
         ("resource_field_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__projected__sources__downward_api__items__field_ref
             v_field_ref
         in
         ("field_ref", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__projected__sources__downward_api__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__projected__sources__downward_api__items

[@@@deriving.end]

type spec__template__spec__volume__projected__sources__downward_api = {
  items :
    spec__template__spec__volume__projected__sources__downward_api__items
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__projected__sources__downward_api) ->
  ()

let yojson_of_spec__template__spec__volume__projected__sources__downward_api
    =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__projected__sources__downward_api__items
             v_items
         in
         ("items", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__projected__sources__downward_api ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__projected__sources__downward_api

[@@@deriving.end]

type spec__template__spec__volume__projected__sources__secret__items = {
  key : string prop option; [@option]
  mode : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__projected__sources__secret__items) ->
  ()

let yojson_of_spec__template__spec__volume__projected__sources__secret__items
    =
  (function
   | { key = v_key; mode = v_mode; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
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
    : spec__template__spec__volume__projected__sources__secret__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__projected__sources__secret__items

[@@@deriving.end]

type spec__template__spec__volume__projected__sources__secret = {
  name : string prop option; [@option]
  optional : bool prop option; [@option]
  items :
    spec__template__spec__volume__projected__sources__secret__items
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__volume__projected__sources__secret) ->
  ()

let yojson_of_spec__template__spec__volume__projected__sources__secret
    =
  (function
   | { name = v_name; optional = v_optional; items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__projected__sources__secret__items
             v_items
         in
         ("items", arg) :: bnds
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
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
       `Assoc bnds
    : spec__template__spec__volume__projected__sources__secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__projected__sources__secret

[@@@deriving.end]

type spec__template__spec__volume__projected__sources__service_account_token = {
  audience : string prop option; [@option]
  expiration_seconds : float prop option; [@option]
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__template__spec__volume__projected__sources__service_account_token) ->
  ()

let yojson_of_spec__template__spec__volume__projected__sources__service_account_token
    =
  (function
   | {
       audience = v_audience;
       expiration_seconds = v_expiration_seconds;
       path = v_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_expiration_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "expiration_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audience with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audience", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__projected__sources__service_account_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__template__spec__volume__projected__sources__service_account_token

[@@@deriving.end]

type spec__template__spec__volume__projected__sources = {
  config_map :
    spec__template__spec__volume__projected__sources__config_map list;
  downward_api :
    spec__template__spec__volume__projected__sources__downward_api
    list;
  secret :
    spec__template__spec__volume__projected__sources__secret list;
  service_account_token :
    spec__template__spec__volume__projected__sources__service_account_token
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__template__spec__volume__projected__sources) -> ()

let yojson_of_spec__template__spec__volume__projected__sources =
  (function
   | {
       config_map = v_config_map;
       downward_api = v_downward_api;
       secret = v_secret;
       service_account_token = v_service_account_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__projected__sources__service_account_token
             v_service_account_token
         in
         ("service_account_token", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__projected__sources__secret
             v_secret
         in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__projected__sources__downward_api
             v_downward_api
         in
         ("downward_api", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__projected__sources__config_map
             v_config_map
         in
         ("config_map", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__projected__sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__projected__sources

[@@@deriving.end]

type spec__template__spec__volume__projected = {
  default_mode : string prop option; [@option]
  sources : spec__template__spec__volume__projected__sources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__projected) -> ()

let yojson_of_spec__template__spec__volume__projected =
  (function
   | { default_mode = v_default_mode; sources = v_sources } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__projected__sources
             v_sources
         in
         ("sources", arg) :: bnds
       in
       let bnds =
         match v_default_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__projected ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__projected

[@@@deriving.end]

type spec__template__spec__volume__quobyte = {
  group : string prop option; [@option]
  read_only : bool prop option; [@option]
  registry : string prop;
  user : string prop option; [@option]
  volume : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__quobyte) -> ()

let yojson_of_spec__template__spec__volume__quobyte =
  (function
   | {
       group = v_group;
       read_only = v_read_only;
       registry = v_registry;
       user = v_user;
       volume = v_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume in
         ("volume", arg) :: bnds
       in
       let bnds =
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry in
         ("registry", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__quobyte ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__quobyte

[@@@deriving.end]

type spec__template__spec__volume__rbd__secret_ref = {
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__rbd__secret_ref) -> ()

let yojson_of_spec__template__spec__volume__rbd__secret_ref =
  (function
   | { name = v_name; namespace = v_namespace } ->
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
       `Assoc bnds
    : spec__template__spec__volume__rbd__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__rbd__secret_ref

[@@@deriving.end]

type spec__template__spec__volume__rbd = {
  ceph_monitors : string prop list;
  fs_type : string prop option; [@option]
  keyring : string prop option; [@option]
  rados_user : string prop option; [@option]
  rbd_image : string prop;
  rbd_pool : string prop option; [@option]
  read_only : bool prop option; [@option]
  secret_ref : spec__template__spec__volume__rbd__secret_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__rbd) -> ()

let yojson_of_spec__template__spec__volume__rbd =
  (function
   | {
       ceph_monitors = v_ceph_monitors;
       fs_type = v_fs_type;
       keyring = v_keyring;
       rados_user = v_rados_user;
       rbd_image = v_rbd_image;
       rbd_pool = v_rbd_pool;
       read_only = v_read_only;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__rbd__secret_ref
             v_secret_ref
         in
         ("secret_ref", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rbd_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rbd_pool", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rbd_image in
         ("rbd_image", arg) :: bnds
       in
       let bnds =
         match v_rados_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rados_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keyring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keyring", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ceph_monitors
         in
         ("ceph_monitors", arg) :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__rbd ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__rbd

[@@@deriving.end]

type spec__template__spec__volume__secret__items = {
  key : string prop option; [@option]
  mode : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__secret__items) -> ()

let yojson_of_spec__template__spec__volume__secret__items =
  (function
   | { key = v_key; mode = v_mode; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
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
    : spec__template__spec__volume__secret__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__secret__items

[@@@deriving.end]

type spec__template__spec__volume__secret = {
  default_mode : string prop option; [@option]
  optional : bool prop option; [@option]
  secret_name : string prop option; [@option]
  items : spec__template__spec__volume__secret__items list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__secret) -> ()

let yojson_of_spec__template__spec__volume__secret =
  (function
   | {
       default_mode = v_default_mode;
       optional = v_optional;
       secret_name = v_secret_name;
       items = v_items;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__secret__items
             v_items
         in
         ("items", arg) :: bnds
       in
       let bnds =
         match v_secret_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__secret

[@@@deriving.end]

type spec__template__spec__volume__vsphere_volume = {
  fs_type : string prop option; [@option]
  volume_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume__vsphere_volume) -> ()

let yojson_of_spec__template__spec__volume__vsphere_volume =
  (function
   | { fs_type = v_fs_type; volume_path = v_volume_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_path in
         ("volume_path", arg) :: bnds
       in
       let bnds =
         match v_fs_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fs_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume__vsphere_volume ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume__vsphere_volume

[@@@deriving.end]

type spec__template__spec__volume = {
  name : string prop option; [@option]
  aws_elastic_block_store :
    spec__template__spec__volume__aws_elastic_block_store list;
  azure_disk : spec__template__spec__volume__azure_disk list;
  azure_file : spec__template__spec__volume__azure_file list;
  ceph_fs : spec__template__spec__volume__ceph_fs list;
  cinder : spec__template__spec__volume__cinder list;
  config_map : spec__template__spec__volume__config_map list;
  csi : spec__template__spec__volume__csi list;
  downward_api : spec__template__spec__volume__downward_api list;
  empty_dir : spec__template__spec__volume__empty_dir list;
  ephemeral : spec__template__spec__volume__ephemeral list;
  fc : spec__template__spec__volume__fc list;
  flex_volume : spec__template__spec__volume__flex_volume list;
  flocker : spec__template__spec__volume__flocker list;
  gce_persistent_disk :
    spec__template__spec__volume__gce_persistent_disk list;
  git_repo : spec__template__spec__volume__git_repo list;
  glusterfs : spec__template__spec__volume__glusterfs list;
  host_path : spec__template__spec__volume__host_path list;
  iscsi : spec__template__spec__volume__iscsi list;
  local : spec__template__spec__volume__local list;
  nfs : spec__template__spec__volume__nfs list;
  persistent_volume_claim :
    spec__template__spec__volume__persistent_volume_claim list;
  photon_persistent_disk :
    spec__template__spec__volume__photon_persistent_disk list;
  projected : spec__template__spec__volume__projected list;
  quobyte : spec__template__spec__volume__quobyte list;
  rbd : spec__template__spec__volume__rbd list;
  secret : spec__template__spec__volume__secret list;
  vsphere_volume : spec__template__spec__volume__vsphere_volume list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec__volume) -> ()

let yojson_of_spec__template__spec__volume =
  (function
   | {
       name = v_name;
       aws_elastic_block_store = v_aws_elastic_block_store;
       azure_disk = v_azure_disk;
       azure_file = v_azure_file;
       ceph_fs = v_ceph_fs;
       cinder = v_cinder;
       config_map = v_config_map;
       csi = v_csi;
       downward_api = v_downward_api;
       empty_dir = v_empty_dir;
       ephemeral = v_ephemeral;
       fc = v_fc;
       flex_volume = v_flex_volume;
       flocker = v_flocker;
       gce_persistent_disk = v_gce_persistent_disk;
       git_repo = v_git_repo;
       glusterfs = v_glusterfs;
       host_path = v_host_path;
       iscsi = v_iscsi;
       local = v_local;
       nfs = v_nfs;
       persistent_volume_claim = v_persistent_volume_claim;
       photon_persistent_disk = v_photon_persistent_disk;
       projected = v_projected;
       quobyte = v_quobyte;
       rbd = v_rbd;
       secret = v_secret;
       vsphere_volume = v_vsphere_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__vsphere_volume
             v_vsphere_volume
         in
         ("vsphere_volume", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__secret v_secret
         in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__spec__volume__rbd
             v_rbd
         in
         ("rbd", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__quobyte
             v_quobyte
         in
         ("quobyte", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__projected
             v_projected
         in
         ("projected", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__photon_persistent_disk
             v_photon_persistent_disk
         in
         ("photon_persistent_disk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__persistent_volume_claim
             v_persistent_volume_claim
         in
         ("persistent_volume_claim", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__spec__volume__nfs
             v_nfs
         in
         ("nfs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__local v_local
         in
         ("local", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__iscsi v_iscsi
         in
         ("iscsi", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__host_path
             v_host_path
         in
         ("host_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__glusterfs
             v_glusterfs
         in
         ("glusterfs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__git_repo
             v_git_repo
         in
         ("git_repo", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__gce_persistent_disk
             v_gce_persistent_disk
         in
         ("gce_persistent_disk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__flocker
             v_flocker
         in
         ("flocker", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__flex_volume
             v_flex_volume
         in
         ("flex_volume", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__spec__volume__fc
             v_fc
         in
         ("fc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__ephemeral
             v_ephemeral
         in
         ("ephemeral", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__empty_dir
             v_empty_dir
         in
         ("empty_dir", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__downward_api
             v_downward_api
         in
         ("downward_api", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__spec__volume__csi
             v_csi
         in
         ("csi", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__config_map
             v_config_map
         in
         ("config_map", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__cinder v_cinder
         in
         ("cinder", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__ceph_fs
             v_ceph_fs
         in
         ("ceph_fs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__azure_file
             v_azure_file
         in
         ("azure_file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__azure_disk
             v_azure_disk
         in
         ("azure_disk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__volume__aws_elastic_block_store
             v_aws_elastic_block_store
         in
         ("aws_elastic_block_store", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec__volume ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec__volume

[@@@deriving.end]

type spec__template__spec = {
  active_deadline_seconds : float prop option; [@option]
  automount_service_account_token : bool prop option; [@option]
  dns_policy : string prop option; [@option]
  enable_service_links : bool prop option; [@option]
  host_ipc : bool prop option; [@option]
  host_network : bool prop option; [@option]
  host_pid : bool prop option; [@option]
  hostname : string prop option; [@option]
  node_name : string prop option; [@option]
  node_selector : (string * string prop) list option; [@option]
  priority_class_name : string prop option; [@option]
  restart_policy : string prop option; [@option]
  runtime_class_name : string prop option; [@option]
  scheduler_name : string prop option; [@option]
  service_account_name : string prop option; [@option]
  share_process_namespace : bool prop option; [@option]
  subdomain : string prop option; [@option]
  termination_grace_period_seconds : float prop option; [@option]
  affinity : spec__template__spec__affinity list;
  container : spec__template__spec__container list;
  dns_config : spec__template__spec__dns_config list;
  host_aliases : spec__template__spec__host_aliases list;
  image_pull_secrets : spec__template__spec__image_pull_secrets list;
  init_container : spec__template__spec__init_container list;
  os : spec__template__spec__os list;
  readiness_gate : spec__template__spec__readiness_gate list;
  security_context : spec__template__spec__security_context list;
  toleration : spec__template__spec__toleration list;
  topology_spread_constraint :
    spec__template__spec__topology_spread_constraint list;
  volume : spec__template__spec__volume list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template__spec) -> ()

let yojson_of_spec__template__spec =
  (function
   | {
       active_deadline_seconds = v_active_deadline_seconds;
       automount_service_account_token =
         v_automount_service_account_token;
       dns_policy = v_dns_policy;
       enable_service_links = v_enable_service_links;
       host_ipc = v_host_ipc;
       host_network = v_host_network;
       host_pid = v_host_pid;
       hostname = v_hostname;
       node_name = v_node_name;
       node_selector = v_node_selector;
       priority_class_name = v_priority_class_name;
       restart_policy = v_restart_policy;
       runtime_class_name = v_runtime_class_name;
       scheduler_name = v_scheduler_name;
       service_account_name = v_service_account_name;
       share_process_namespace = v_share_process_namespace;
       subdomain = v_subdomain;
       termination_grace_period_seconds =
         v_termination_grace_period_seconds;
       affinity = v_affinity;
       container = v_container;
       dns_config = v_dns_config;
       host_aliases = v_host_aliases;
       image_pull_secrets = v_image_pull_secrets;
       init_container = v_init_container;
       os = v_os;
       readiness_gate = v_readiness_gate;
       security_context = v_security_context;
       toleration = v_toleration;
       topology_spread_constraint = v_topology_spread_constraint;
       volume = v_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__spec__volume
             v_volume
         in
         ("volume", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__topology_spread_constraint
             v_topology_spread_constraint
         in
         ("topology_spread_constraint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__spec__toleration
             v_toleration
         in
         ("toleration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__security_context
             v_security_context
         in
         ("security_context", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__readiness_gate
             v_readiness_gate
         in
         ("readiness_gate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__spec__os v_os
         in
         ("os", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__init_container
             v_init_container
         in
         ("init_container", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__image_pull_secrets
             v_image_pull_secrets
         in
         ("image_pull_secrets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__template__spec__host_aliases
             v_host_aliases
         in
         ("host_aliases", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__spec__dns_config
             v_dns_config
         in
         ("dns_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__spec__container
             v_container
         in
         ("container", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__spec__affinity
             v_affinity
         in
         ("affinity", arg) :: bnds
       in
       let bnds =
         match v_termination_grace_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "termination_grace_period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subdomain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subdomain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_share_process_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "share_process_namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scheduler_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheduler_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_class_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_class_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restart_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "restart_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority_class_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "priority_class_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_selector with
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
             let bnd = "node_selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "host_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "host_network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_ipc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "host_ipc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_service_links with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_service_links", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automount_service_account_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automount_service_account_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_active_deadline_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "active_deadline_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__template__spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template__spec

[@@@deriving.end]

type spec__template = {
  metadata : spec__template__metadata list;
  spec : spec__template__spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__template) -> ()

let yojson_of_spec__template =
  (function
   | { metadata = v_metadata; spec = v_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__spec v_spec
         in
         ("spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template__metadata
             v_metadata
         in
         ("metadata", arg) :: bnds
       in
       `Assoc bnds
    : spec__template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__template

[@@@deriving.end]

type spec = {
  min_ready_seconds : float prop option; [@option]
  replicas : float prop option; [@option]
  selector : (string * string prop) list;
  template : spec__template list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       min_ready_seconds = v_min_ready_seconds;
       replicas = v_replicas;
       selector = v_selector;
       template = v_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__template v_template
         in
         ("template", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_selector
         in
         ("selector", arg) :: bnds
       in
       let bnds =
         match v_replicas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replicas", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_ready_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_ready_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

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

type kubernetes_replication_controller_v1 = {
  id : string prop option; [@option]
  metadata : metadata list;
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_replication_controller_v1) -> ()

let yojson_of_kubernetes_replication_controller_v1 =
  (function
   | {
       id = v_id;
       metadata = v_metadata;
       spec = v_spec;
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
         let arg = yojson_of_list yojson_of_spec v_spec in
         ("spec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
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
    : kubernetes_replication_controller_v1 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_replication_controller_v1

[@@@deriving.end]

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__template__metadata ?annotations ?generate_name ?labels
    ?name ?namespace () : spec__template__metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions
    ?key ?operator ?values () :
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions
    =
  { key; operator; values }

let spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields
    ?values ~key ~operator () :
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields
    =
  { key; operator; values }

let spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference
    ~match_expressions ~match_fields () :
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference
    =
  { match_expressions; match_fields }

let spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution
    ~weight ~preference () :
    spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution
    =
  { weight; preference }

let spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions
    ?key ?operator ?values () :
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions
    =
  { key; operator; values }

let spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields
    ?values ~key ~operator () :
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields
    =
  { key; operator; values }

let spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term
    ~match_expressions ~match_fields () :
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term
    =
  { match_expressions; match_fields }

let spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution
    ~node_selector_term () :
    spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution
    =
  { node_selector_term }

let spec__template__spec__affinity__node_affinity
    ~preferred_during_scheduling_ignored_during_execution
    ~required_during_scheduling_ignored_during_execution () :
    spec__template__spec__affinity__node_affinity =
  {
    preferred_during_scheduling_ignored_during_execution;
    required_during_scheduling_ignored_during_execution;
  }

let spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    ?key ?operator ?values () :
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    =
  { key; operator; values }

let spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    ?match_labels ~match_expressions () :
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    =
  { match_labels; match_expressions }

let spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    ?namespaces ~topology_key ~label_selector () :
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    =
  { namespaces; topology_key; label_selector }

let spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution
    ~weight ~pod_affinity_term () :
    spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution
    =
  { weight; pod_affinity_term }

let spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    ?key ?operator ?values () :
    spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    =
  { key; operator; values }

let spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector
    ?match_labels ~match_expressions () :
    spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector
    =
  { match_labels; match_expressions }

let spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution
    ?namespaces ~topology_key ~label_selector () :
    spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution
    =
  { namespaces; topology_key; label_selector }

let spec__template__spec__affinity__pod_affinity
    ~preferred_during_scheduling_ignored_during_execution
    ~required_during_scheduling_ignored_during_execution () :
    spec__template__spec__affinity__pod_affinity =
  {
    preferred_during_scheduling_ignored_during_execution;
    required_during_scheduling_ignored_during_execution;
  }

let spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    ?key ?operator ?values () :
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    =
  { key; operator; values }

let spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    ?match_labels ~match_expressions () :
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    =
  { match_labels; match_expressions }

let spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    ?namespaces ~topology_key ~label_selector () :
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    =
  { namespaces; topology_key; label_selector }

let spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution
    ~weight ~pod_affinity_term () :
    spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution
    =
  { weight; pod_affinity_term }

let spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    ?key ?operator ?values () :
    spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    =
  { key; operator; values }

let spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector
    ?match_labels ~match_expressions () :
    spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector
    =
  { match_labels; match_expressions }

let spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution
    ?namespaces ~topology_key ~label_selector () :
    spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution
    =
  { namespaces; topology_key; label_selector }

let spec__template__spec__affinity__pod_anti_affinity
    ~preferred_during_scheduling_ignored_during_execution
    ~required_during_scheduling_ignored_during_execution () :
    spec__template__spec__affinity__pod_anti_affinity =
  {
    preferred_during_scheduling_ignored_during_execution;
    required_during_scheduling_ignored_during_execution;
  }

let spec__template__spec__affinity ~node_affinity ~pod_affinity
    ~pod_anti_affinity () : spec__template__spec__affinity =
  { node_affinity; pod_affinity; pod_anti_affinity }

let spec__template__spec__container__env__value_from__config_map_key_ref
    ?key ?name ?optional () :
    spec__template__spec__container__env__value_from__config_map_key_ref
    =
  { key; name; optional }

let spec__template__spec__container__env__value_from__field_ref
    ?api_version ?field_path () :
    spec__template__spec__container__env__value_from__field_ref =
  { api_version; field_path }

let spec__template__spec__container__env__value_from__resource_field_ref
    ?container_name ?divisor ~resource () :
    spec__template__spec__container__env__value_from__resource_field_ref
    =
  { container_name; divisor; resource }

let spec__template__spec__container__env__value_from__secret_key_ref
    ?key ?name ?optional () :
    spec__template__spec__container__env__value_from__secret_key_ref
    =
  { key; name; optional }

let spec__template__spec__container__env__value_from
    ~config_map_key_ref ~field_ref ~resource_field_ref
    ~secret_key_ref () :
    spec__template__spec__container__env__value_from =
  {
    config_map_key_ref;
    field_ref;
    resource_field_ref;
    secret_key_ref;
  }

let spec__template__spec__container__env ?value ~name ~value_from ()
    : spec__template__spec__container__env =
  { name; value; value_from }

let spec__template__spec__container__env_from__config_map_ref
    ?optional ~name () :
    spec__template__spec__container__env_from__config_map_ref =
  { name; optional }

let spec__template__spec__container__env_from__secret_ref ?optional
    ~name () : spec__template__spec__container__env_from__secret_ref
    =
  { name; optional }

let spec__template__spec__container__env_from ?prefix ~config_map_ref
    ~secret_ref () : spec__template__spec__container__env_from =
  { prefix; config_map_ref; secret_ref }

let spec__template__spec__container__lifecycle__post_start__exec
    ?command () :
    spec__template__spec__container__lifecycle__post_start__exec =
  { command }

let spec__template__spec__container__lifecycle__post_start__http_get__http_header
    ?name ?value () :
    spec__template__spec__container__lifecycle__post_start__http_get__http_header
    =
  { name; value }

let spec__template__spec__container__lifecycle__post_start__http_get
    ?host ?path ?port ?scheme ~http_header () :
    spec__template__spec__container__lifecycle__post_start__http_get
    =
  { host; path; port; scheme; http_header }

let spec__template__spec__container__lifecycle__post_start__tcp_socket
    ~port () :
    spec__template__spec__container__lifecycle__post_start__tcp_socket
    =
  { port }

let spec__template__spec__container__lifecycle__post_start ~exec
    ~http_get ~tcp_socket () :
    spec__template__spec__container__lifecycle__post_start =
  { exec; http_get; tcp_socket }

let spec__template__spec__container__lifecycle__pre_stop__exec
    ?command () :
    spec__template__spec__container__lifecycle__pre_stop__exec =
  { command }

let spec__template__spec__container__lifecycle__pre_stop__http_get__http_header
    ?name ?value () :
    spec__template__spec__container__lifecycle__pre_stop__http_get__http_header
    =
  { name; value }

let spec__template__spec__container__lifecycle__pre_stop__http_get
    ?host ?path ?port ?scheme ~http_header () :
    spec__template__spec__container__lifecycle__pre_stop__http_get =
  { host; path; port; scheme; http_header }

let spec__template__spec__container__lifecycle__pre_stop__tcp_socket
    ~port () :
    spec__template__spec__container__lifecycle__pre_stop__tcp_socket
    =
  { port }

let spec__template__spec__container__lifecycle__pre_stop ~exec
    ~http_get ~tcp_socket () :
    spec__template__spec__container__lifecycle__pre_stop =
  { exec; http_get; tcp_socket }

let spec__template__spec__container__lifecycle ~post_start ~pre_stop
    () : spec__template__spec__container__lifecycle =
  { post_start; pre_stop }

let spec__template__spec__container__liveness_probe__exec ?command ()
    : spec__template__spec__container__liveness_probe__exec =
  { command }

let spec__template__spec__container__liveness_probe__grpc ?service
    ~port () : spec__template__spec__container__liveness_probe__grpc
    =
  { port; service }

let spec__template__spec__container__liveness_probe__http_get__http_header
    ?name ?value () :
    spec__template__spec__container__liveness_probe__http_get__http_header
    =
  { name; value }

let spec__template__spec__container__liveness_probe__http_get ?host
    ?path ?port ?scheme ~http_header () :
    spec__template__spec__container__liveness_probe__http_get =
  { host; path; port; scheme; http_header }

let spec__template__spec__container__liveness_probe__tcp_socket ~port
    () : spec__template__spec__container__liveness_probe__tcp_socket
    =
  { port }

let spec__template__spec__container__liveness_probe
    ?failure_threshold ?initial_delay_seconds ?period_seconds
    ?success_threshold ?timeout_seconds ~exec ~grpc ~http_get
    ~tcp_socket () : spec__template__spec__container__liveness_probe
    =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    success_threshold;
    timeout_seconds;
    exec;
    grpc;
    http_get;
    tcp_socket;
  }

let spec__template__spec__container__port ?host_ip ?host_port ?name
    ?protocol ~container_port () :
    spec__template__spec__container__port =
  { container_port; host_ip; host_port; name; protocol }

let spec__template__spec__container__readiness_probe__exec ?command
    () : spec__template__spec__container__readiness_probe__exec =
  { command }

let spec__template__spec__container__readiness_probe__grpc ?service
    ~port () : spec__template__spec__container__readiness_probe__grpc
    =
  { port; service }

let spec__template__spec__container__readiness_probe__http_get__http_header
    ?name ?value () :
    spec__template__spec__container__readiness_probe__http_get__http_header
    =
  { name; value }

let spec__template__spec__container__readiness_probe__http_get ?host
    ?path ?port ?scheme ~http_header () :
    spec__template__spec__container__readiness_probe__http_get =
  { host; path; port; scheme; http_header }

let spec__template__spec__container__readiness_probe__tcp_socket
    ~port () :
    spec__template__spec__container__readiness_probe__tcp_socket =
  { port }

let spec__template__spec__container__readiness_probe
    ?failure_threshold ?initial_delay_seconds ?period_seconds
    ?success_threshold ?timeout_seconds ~exec ~grpc ~http_get
    ~tcp_socket () : spec__template__spec__container__readiness_probe
    =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    success_threshold;
    timeout_seconds;
    exec;
    grpc;
    http_get;
    tcp_socket;
  }

let spec__template__spec__container__resources ?limits ?requests () :
    spec__template__spec__container__resources =
  { limits; requests }

let spec__template__spec__container__security_context__capabilities
    ?add ?drop () :
    spec__template__spec__container__security_context__capabilities =
  { add; drop }

let spec__template__spec__container__security_context__se_linux_options
    ?level ?role ?type_ ?user () :
    spec__template__spec__container__security_context__se_linux_options
    =
  { level; role; type_; user }

let spec__template__spec__container__security_context__seccomp_profile
    ?localhost_profile ?type_ () :
    spec__template__spec__container__security_context__seccomp_profile
    =
  { localhost_profile; type_ }

let spec__template__spec__container__security_context
    ?allow_privilege_escalation ?privileged
    ?read_only_root_filesystem ?run_as_group ?run_as_non_root
    ?run_as_user ~capabilities ~se_linux_options ~seccomp_profile ()
    : spec__template__spec__container__security_context =
  {
    allow_privilege_escalation;
    privileged;
    read_only_root_filesystem;
    run_as_group;
    run_as_non_root;
    run_as_user;
    capabilities;
    se_linux_options;
    seccomp_profile;
  }

let spec__template__spec__container__startup_probe__exec ?command ()
    : spec__template__spec__container__startup_probe__exec =
  { command }

let spec__template__spec__container__startup_probe__grpc ?service
    ~port () : spec__template__spec__container__startup_probe__grpc =
  { port; service }

let spec__template__spec__container__startup_probe__http_get__http_header
    ?name ?value () :
    spec__template__spec__container__startup_probe__http_get__http_header
    =
  { name; value }

let spec__template__spec__container__startup_probe__http_get ?host
    ?path ?port ?scheme ~http_header () :
    spec__template__spec__container__startup_probe__http_get =
  { host; path; port; scheme; http_header }

let spec__template__spec__container__startup_probe__tcp_socket ~port
    () : spec__template__spec__container__startup_probe__tcp_socket =
  { port }

let spec__template__spec__container__startup_probe ?failure_threshold
    ?initial_delay_seconds ?period_seconds ?success_threshold
    ?timeout_seconds ~exec ~grpc ~http_get ~tcp_socket () :
    spec__template__spec__container__startup_probe =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    success_threshold;
    timeout_seconds;
    exec;
    grpc;
    http_get;
    tcp_socket;
  }

let spec__template__spec__container__volume_mount ?mount_propagation
    ?read_only ?sub_path ~mount_path ~name () :
    spec__template__spec__container__volume_mount =
  { mount_path; mount_propagation; name; read_only; sub_path }

let spec__template__spec__container ?args ?command ?image
    ?image_pull_policy ?stdin ?stdin_once ?termination_message_path
    ?termination_message_policy ?tty ?working_dir ~name ~env
    ~env_from ~lifecycle ~liveness_probe ~port ~readiness_probe
    ~resources ~security_context ~startup_probe ~volume_mount () :
    spec__template__spec__container =
  {
    args;
    command;
    image;
    image_pull_policy;
    name;
    stdin;
    stdin_once;
    termination_message_path;
    termination_message_policy;
    tty;
    working_dir;
    env;
    env_from;
    lifecycle;
    liveness_probe;
    port;
    readiness_probe;
    resources;
    security_context;
    startup_probe;
    volume_mount;
  }

let spec__template__spec__dns_config__option ?value ~name () :
    spec__template__spec__dns_config__option =
  { name; value }

let spec__template__spec__dns_config ?nameservers ?searches ~option_
    () : spec__template__spec__dns_config =
  { nameservers; searches; option_ }

let spec__template__spec__host_aliases ~hostnames ~ip () :
    spec__template__spec__host_aliases =
  { hostnames; ip }

let spec__template__spec__image_pull_secrets ~name () :
    spec__template__spec__image_pull_secrets =
  { name }

let spec__template__spec__init_container__env__value_from__config_map_key_ref
    ?key ?name ?optional () :
    spec__template__spec__init_container__env__value_from__config_map_key_ref
    =
  { key; name; optional }

let spec__template__spec__init_container__env__value_from__field_ref
    ?api_version ?field_path () :
    spec__template__spec__init_container__env__value_from__field_ref
    =
  { api_version; field_path }

let spec__template__spec__init_container__env__value_from__resource_field_ref
    ?container_name ?divisor ~resource () :
    spec__template__spec__init_container__env__value_from__resource_field_ref
    =
  { container_name; divisor; resource }

let spec__template__spec__init_container__env__value_from__secret_key_ref
    ?key ?name ?optional () :
    spec__template__spec__init_container__env__value_from__secret_key_ref
    =
  { key; name; optional }

let spec__template__spec__init_container__env__value_from
    ~config_map_key_ref ~field_ref ~resource_field_ref
    ~secret_key_ref () :
    spec__template__spec__init_container__env__value_from =
  {
    config_map_key_ref;
    field_ref;
    resource_field_ref;
    secret_key_ref;
  }

let spec__template__spec__init_container__env ?value ~name
    ~value_from () : spec__template__spec__init_container__env =
  { name; value; value_from }

let spec__template__spec__init_container__env_from__config_map_ref
    ?optional ~name () :
    spec__template__spec__init_container__env_from__config_map_ref =
  { name; optional }

let spec__template__spec__init_container__env_from__secret_ref
    ?optional ~name () :
    spec__template__spec__init_container__env_from__secret_ref =
  { name; optional }

let spec__template__spec__init_container__env_from ?prefix
    ~config_map_ref ~secret_ref () :
    spec__template__spec__init_container__env_from =
  { prefix; config_map_ref; secret_ref }

let spec__template__spec__init_container__lifecycle__post_start__exec
    ?command () :
    spec__template__spec__init_container__lifecycle__post_start__exec
    =
  { command }

let spec__template__spec__init_container__lifecycle__post_start__http_get__http_header
    ?name ?value () :
    spec__template__spec__init_container__lifecycle__post_start__http_get__http_header
    =
  { name; value }

let spec__template__spec__init_container__lifecycle__post_start__http_get
    ?host ?path ?port ?scheme ~http_header () :
    spec__template__spec__init_container__lifecycle__post_start__http_get
    =
  { host; path; port; scheme; http_header }

let spec__template__spec__init_container__lifecycle__post_start__tcp_socket
    ~port () :
    spec__template__spec__init_container__lifecycle__post_start__tcp_socket
    =
  { port }

let spec__template__spec__init_container__lifecycle__post_start ~exec
    ~http_get ~tcp_socket () :
    spec__template__spec__init_container__lifecycle__post_start =
  { exec; http_get; tcp_socket }

let spec__template__spec__init_container__lifecycle__pre_stop__exec
    ?command () :
    spec__template__spec__init_container__lifecycle__pre_stop__exec =
  { command }

let spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header
    ?name ?value () :
    spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header
    =
  { name; value }

let spec__template__spec__init_container__lifecycle__pre_stop__http_get
    ?host ?path ?port ?scheme ~http_header () :
    spec__template__spec__init_container__lifecycle__pre_stop__http_get
    =
  { host; path; port; scheme; http_header }

let spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket
    ~port () :
    spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket
    =
  { port }

let spec__template__spec__init_container__lifecycle__pre_stop ~exec
    ~http_get ~tcp_socket () :
    spec__template__spec__init_container__lifecycle__pre_stop =
  { exec; http_get; tcp_socket }

let spec__template__spec__init_container__lifecycle ~post_start
    ~pre_stop () : spec__template__spec__init_container__lifecycle =
  { post_start; pre_stop }

let spec__template__spec__init_container__liveness_probe__exec
    ?command () :
    spec__template__spec__init_container__liveness_probe__exec =
  { command }

let spec__template__spec__init_container__liveness_probe__grpc
    ?service ~port () :
    spec__template__spec__init_container__liveness_probe__grpc =
  { port; service }

let spec__template__spec__init_container__liveness_probe__http_get__http_header
    ?name ?value () :
    spec__template__spec__init_container__liveness_probe__http_get__http_header
    =
  { name; value }

let spec__template__spec__init_container__liveness_probe__http_get
    ?host ?path ?port ?scheme ~http_header () :
    spec__template__spec__init_container__liveness_probe__http_get =
  { host; path; port; scheme; http_header }

let spec__template__spec__init_container__liveness_probe__tcp_socket
    ~port () :
    spec__template__spec__init_container__liveness_probe__tcp_socket
    =
  { port }

let spec__template__spec__init_container__liveness_probe
    ?failure_threshold ?initial_delay_seconds ?period_seconds
    ?success_threshold ?timeout_seconds ~exec ~grpc ~http_get
    ~tcp_socket () :
    spec__template__spec__init_container__liveness_probe =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    success_threshold;
    timeout_seconds;
    exec;
    grpc;
    http_get;
    tcp_socket;
  }

let spec__template__spec__init_container__port ?host_ip ?host_port
    ?name ?protocol ~container_port () :
    spec__template__spec__init_container__port =
  { container_port; host_ip; host_port; name; protocol }

let spec__template__spec__init_container__readiness_probe__exec
    ?command () :
    spec__template__spec__init_container__readiness_probe__exec =
  { command }

let spec__template__spec__init_container__readiness_probe__grpc
    ?service ~port () :
    spec__template__spec__init_container__readiness_probe__grpc =
  { port; service }

let spec__template__spec__init_container__readiness_probe__http_get__http_header
    ?name ?value () :
    spec__template__spec__init_container__readiness_probe__http_get__http_header
    =
  { name; value }

let spec__template__spec__init_container__readiness_probe__http_get
    ?host ?path ?port ?scheme ~http_header () :
    spec__template__spec__init_container__readiness_probe__http_get =
  { host; path; port; scheme; http_header }

let spec__template__spec__init_container__readiness_probe__tcp_socket
    ~port () :
    spec__template__spec__init_container__readiness_probe__tcp_socket
    =
  { port }

let spec__template__spec__init_container__readiness_probe
    ?failure_threshold ?initial_delay_seconds ?period_seconds
    ?success_threshold ?timeout_seconds ~exec ~grpc ~http_get
    ~tcp_socket () :
    spec__template__spec__init_container__readiness_probe =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    success_threshold;
    timeout_seconds;
    exec;
    grpc;
    http_get;
    tcp_socket;
  }

let spec__template__spec__init_container__resources ?limits ?requests
    () : spec__template__spec__init_container__resources =
  { limits; requests }

let spec__template__spec__init_container__security_context__capabilities
    ?add ?drop () :
    spec__template__spec__init_container__security_context__capabilities
    =
  { add; drop }

let spec__template__spec__init_container__security_context__se_linux_options
    ?level ?role ?type_ ?user () :
    spec__template__spec__init_container__security_context__se_linux_options
    =
  { level; role; type_; user }

let spec__template__spec__init_container__security_context__seccomp_profile
    ?localhost_profile ?type_ () :
    spec__template__spec__init_container__security_context__seccomp_profile
    =
  { localhost_profile; type_ }

let spec__template__spec__init_container__security_context
    ?allow_privilege_escalation ?privileged
    ?read_only_root_filesystem ?run_as_group ?run_as_non_root
    ?run_as_user ~capabilities ~se_linux_options ~seccomp_profile ()
    : spec__template__spec__init_container__security_context =
  {
    allow_privilege_escalation;
    privileged;
    read_only_root_filesystem;
    run_as_group;
    run_as_non_root;
    run_as_user;
    capabilities;
    se_linux_options;
    seccomp_profile;
  }

let spec__template__spec__init_container__startup_probe__exec
    ?command () :
    spec__template__spec__init_container__startup_probe__exec =
  { command }

let spec__template__spec__init_container__startup_probe__grpc
    ?service ~port () :
    spec__template__spec__init_container__startup_probe__grpc =
  { port; service }

let spec__template__spec__init_container__startup_probe__http_get__http_header
    ?name ?value () :
    spec__template__spec__init_container__startup_probe__http_get__http_header
    =
  { name; value }

let spec__template__spec__init_container__startup_probe__http_get
    ?host ?path ?port ?scheme ~http_header () :
    spec__template__spec__init_container__startup_probe__http_get =
  { host; path; port; scheme; http_header }

let spec__template__spec__init_container__startup_probe__tcp_socket
    ~port () :
    spec__template__spec__init_container__startup_probe__tcp_socket =
  { port }

let spec__template__spec__init_container__startup_probe
    ?failure_threshold ?initial_delay_seconds ?period_seconds
    ?success_threshold ?timeout_seconds ~exec ~grpc ~http_get
    ~tcp_socket () :
    spec__template__spec__init_container__startup_probe =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    success_threshold;
    timeout_seconds;
    exec;
    grpc;
    http_get;
    tcp_socket;
  }

let spec__template__spec__init_container__volume_mount
    ?mount_propagation ?read_only ?sub_path ~mount_path ~name () :
    spec__template__spec__init_container__volume_mount =
  { mount_path; mount_propagation; name; read_only; sub_path }

let spec__template__spec__init_container ?args ?command ?image
    ?image_pull_policy ?stdin ?stdin_once ?termination_message_path
    ?termination_message_policy ?tty ?working_dir ~name ~env
    ~env_from ~lifecycle ~liveness_probe ~port ~readiness_probe
    ~resources ~security_context ~startup_probe ~volume_mount () :
    spec__template__spec__init_container =
  {
    args;
    command;
    image;
    image_pull_policy;
    name;
    stdin;
    stdin_once;
    termination_message_path;
    termination_message_policy;
    tty;
    working_dir;
    env;
    env_from;
    lifecycle;
    liveness_probe;
    port;
    readiness_probe;
    resources;
    security_context;
    startup_probe;
    volume_mount;
  }

let spec__template__spec__os ~name () : spec__template__spec__os =
  { name }

let spec__template__spec__readiness_gate ~condition_type () :
    spec__template__spec__readiness_gate =
  { condition_type }

let spec__template__spec__security_context__se_linux_options ?level
    ?role ?type_ ?user () :
    spec__template__spec__security_context__se_linux_options =
  { level; role; type_; user }

let spec__template__spec__security_context__seccomp_profile
    ?localhost_profile ?type_ () :
    spec__template__spec__security_context__seccomp_profile =
  { localhost_profile; type_ }

let spec__template__spec__security_context__sysctl ~name ~value () :
    spec__template__spec__security_context__sysctl =
  { name; value }

let spec__template__spec__security_context__windows_options
    ?gmsa_credential_spec ?gmsa_credential_spec_name ?host_process
    ?run_as_username () :
    spec__template__spec__security_context__windows_options =
  {
    gmsa_credential_spec;
    gmsa_credential_spec_name;
    host_process;
    run_as_username;
  }

let spec__template__spec__security_context ?fs_group
    ?fs_group_change_policy ?run_as_group ?run_as_non_root
    ?run_as_user ?supplemental_groups ~se_linux_options
    ~seccomp_profile ~sysctl ~windows_options () :
    spec__template__spec__security_context =
  {
    fs_group;
    fs_group_change_policy;
    run_as_group;
    run_as_non_root;
    run_as_user;
    supplemental_groups;
    se_linux_options;
    seccomp_profile;
    sysctl;
    windows_options;
  }

let spec__template__spec__toleration ?effect ?key ?operator
    ?toleration_seconds ?value () : spec__template__spec__toleration
    =
  { effect; key; operator; toleration_seconds; value }

let spec__template__spec__topology_spread_constraint__label_selector__match_expressions
    ?key ?operator ?values () :
    spec__template__spec__topology_spread_constraint__label_selector__match_expressions
    =
  { key; operator; values }

let spec__template__spec__topology_spread_constraint__label_selector
    ?match_labels ~match_expressions () :
    spec__template__spec__topology_spread_constraint__label_selector
    =
  { match_labels; match_expressions }

let spec__template__spec__topology_spread_constraint
    ?match_label_keys ?max_skew ?min_domains ?node_affinity_policy
    ?node_taints_policy ?topology_key ?when_unsatisfiable
    ~label_selector () :
    spec__template__spec__topology_spread_constraint =
  {
    match_label_keys;
    max_skew;
    min_domains;
    node_affinity_policy;
    node_taints_policy;
    topology_key;
    when_unsatisfiable;
    label_selector;
  }

let spec__template__spec__volume__aws_elastic_block_store ?fs_type
    ?partition ?read_only ~volume_id () :
    spec__template__spec__volume__aws_elastic_block_store =
  { fs_type; partition; read_only; volume_id }

let spec__template__spec__volume__azure_disk ?fs_type ?kind
    ?read_only ~caching_mode ~data_disk_uri ~disk_name () :
    spec__template__spec__volume__azure_disk =
  {
    caching_mode;
    data_disk_uri;
    disk_name;
    fs_type;
    kind;
    read_only;
  }

let spec__template__spec__volume__azure_file ?read_only
    ?secret_namespace ~secret_name ~share_name () :
    spec__template__spec__volume__azure_file =
  { read_only; secret_name; secret_namespace; share_name }

let spec__template__spec__volume__ceph_fs__secret_ref ?name
    ?namespace () : spec__template__spec__volume__ceph_fs__secret_ref
    =
  { name; namespace }

let spec__template__spec__volume__ceph_fs ?path ?read_only
    ?secret_file ?user ~monitors ~secret_ref () :
    spec__template__spec__volume__ceph_fs =
  { monitors; path; read_only; secret_file; user; secret_ref }

let spec__template__spec__volume__cinder ?fs_type ?read_only
    ~volume_id () : spec__template__spec__volume__cinder =
  { fs_type; read_only; volume_id }

let spec__template__spec__volume__config_map__items ?key ?mode ?path
    () : spec__template__spec__volume__config_map__items =
  { key; mode; path }

let spec__template__spec__volume__config_map ?default_mode ?name
    ?optional ~items () : spec__template__spec__volume__config_map =
  { default_mode; name; optional; items }

let spec__template__spec__volume__csi__node_publish_secret_ref ?name
    () : spec__template__spec__volume__csi__node_publish_secret_ref =
  { name }

let spec__template__spec__volume__csi ?fs_type ?read_only
    ?volume_attributes ~driver ~node_publish_secret_ref () :
    spec__template__spec__volume__csi =
  {
    driver;
    fs_type;
    read_only;
    volume_attributes;
    node_publish_secret_ref;
  }

let spec__template__spec__volume__downward_api__items__field_ref
    ?api_version ?field_path () :
    spec__template__spec__volume__downward_api__items__field_ref =
  { api_version; field_path }

let spec__template__spec__volume__downward_api__items__resource_field_ref
    ?divisor ~container_name ~resource () :
    spec__template__spec__volume__downward_api__items__resource_field_ref
    =
  { container_name; divisor; resource }

let spec__template__spec__volume__downward_api__items ?mode ~path
    ~field_ref ~resource_field_ref () :
    spec__template__spec__volume__downward_api__items =
  { mode; path; field_ref; resource_field_ref }

let spec__template__spec__volume__downward_api ?default_mode ~items
    () : spec__template__spec__volume__downward_api =
  { default_mode; items }

let spec__template__spec__volume__empty_dir ?medium ?size_limit () :
    spec__template__spec__volume__empty_dir =
  { medium; size_limit }

let spec__template__spec__volume__ephemeral__volume_claim_template__metadata
    ?annotations ?labels () :
    spec__template__spec__volume__ephemeral__volume_claim_template__metadata
    =
  { annotations; labels }

let spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources
    ?limits ?requests () :
    spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources
    =
  { limits; requests }

let spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions
    ?key ?operator ?values () :
    spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions
    =
  { key; operator; values }

let spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector
    ?match_labels ~match_expressions () :
    spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector
    =
  { match_labels; match_expressions }

let spec__template__spec__volume__ephemeral__volume_claim_template__spec
    ?storage_class_name ?volume_mode ?volume_name ~access_modes
    ~resources ~selector () :
    spec__template__spec__volume__ephemeral__volume_claim_template__spec
    =
  {
    access_modes;
    storage_class_name;
    volume_mode;
    volume_name;
    resources;
    selector;
  }

let spec__template__spec__volume__ephemeral__volume_claim_template
    ~metadata ~spec () :
    spec__template__spec__volume__ephemeral__volume_claim_template =
  { metadata; spec }

let spec__template__spec__volume__ephemeral ~volume_claim_template ()
    : spec__template__spec__volume__ephemeral =
  { volume_claim_template }

let spec__template__spec__volume__fc ?fs_type ?read_only ~lun
    ~target_ww_ns () : spec__template__spec__volume__fc =
  { fs_type; lun; read_only; target_ww_ns }

let spec__template__spec__volume__flex_volume__secret_ref ?name
    ?namespace () :
    spec__template__spec__volume__flex_volume__secret_ref =
  { name; namespace }

let spec__template__spec__volume__flex_volume ?fs_type ?options
    ?read_only ~driver ~secret_ref () :
    spec__template__spec__volume__flex_volume =
  { driver; fs_type; options; read_only; secret_ref }

let spec__template__spec__volume__flocker ?dataset_name ?dataset_uuid
    () : spec__template__spec__volume__flocker =
  { dataset_name; dataset_uuid }

let spec__template__spec__volume__gce_persistent_disk ?fs_type
    ?partition ?read_only ~pd_name () :
    spec__template__spec__volume__gce_persistent_disk =
  { fs_type; partition; pd_name; read_only }

let spec__template__spec__volume__git_repo ?directory ?repository
    ?revision () : spec__template__spec__volume__git_repo =
  { directory; repository; revision }

let spec__template__spec__volume__glusterfs ?read_only
    ~endpoints_name ~path () :
    spec__template__spec__volume__glusterfs =
  { endpoints_name; path; read_only }

let spec__template__spec__volume__host_path ?path ?type_ () :
    spec__template__spec__volume__host_path =
  { path; type_ }

let spec__template__spec__volume__iscsi ?fs_type ?iscsi_interface
    ?lun ?read_only ~iqn ~target_portal () :
    spec__template__spec__volume__iscsi =
  { fs_type; iqn; iscsi_interface; lun; read_only; target_portal }

let spec__template__spec__volume__local ?path () :
    spec__template__spec__volume__local =
  { path }

let spec__template__spec__volume__nfs ?read_only ~path ~server () :
    spec__template__spec__volume__nfs =
  { path; read_only; server }

let spec__template__spec__volume__persistent_volume_claim ?claim_name
    ?read_only () :
    spec__template__spec__volume__persistent_volume_claim =
  { claim_name; read_only }

let spec__template__spec__volume__photon_persistent_disk ?fs_type
    ~pd_id () : spec__template__spec__volume__photon_persistent_disk
    =
  { fs_type; pd_id }

let spec__template__spec__volume__projected__sources__config_map__items
    ?key ?mode ?path () :
    spec__template__spec__volume__projected__sources__config_map__items
    =
  { key; mode; path }

let spec__template__spec__volume__projected__sources__config_map
    ?name ?optional ~items () :
    spec__template__spec__volume__projected__sources__config_map =
  { name; optional; items }

let spec__template__spec__volume__projected__sources__downward_api__items__field_ref
    ?api_version ?field_path () :
    spec__template__spec__volume__projected__sources__downward_api__items__field_ref
    =
  { api_version; field_path }

let spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref
    ?divisor ~container_name ~resource () :
    spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref
    =
  { container_name; divisor; resource }

let spec__template__spec__volume__projected__sources__downward_api__items
    ?mode ~path ~field_ref ~resource_field_ref () :
    spec__template__spec__volume__projected__sources__downward_api__items
    =
  { mode; path; field_ref; resource_field_ref }

let spec__template__spec__volume__projected__sources__downward_api
    ~items () :
    spec__template__spec__volume__projected__sources__downward_api =
  { items }

let spec__template__spec__volume__projected__sources__secret__items
    ?key ?mode ?path () :
    spec__template__spec__volume__projected__sources__secret__items =
  { key; mode; path }

let spec__template__spec__volume__projected__sources__secret ?name
    ?optional ~items () :
    spec__template__spec__volume__projected__sources__secret =
  { name; optional; items }

let spec__template__spec__volume__projected__sources__service_account_token
    ?audience ?expiration_seconds ~path () :
    spec__template__spec__volume__projected__sources__service_account_token
    =
  { audience; expiration_seconds; path }

let spec__template__spec__volume__projected__sources ~config_map
    ~downward_api ~secret ~service_account_token () :
    spec__template__spec__volume__projected__sources =
  { config_map; downward_api; secret; service_account_token }

let spec__template__spec__volume__projected ?default_mode ~sources ()
    : spec__template__spec__volume__projected =
  { default_mode; sources }

let spec__template__spec__volume__quobyte ?group ?read_only ?user
    ~registry ~volume () : spec__template__spec__volume__quobyte =
  { group; read_only; registry; user; volume }

let spec__template__spec__volume__rbd__secret_ref ?name ?namespace ()
    : spec__template__spec__volume__rbd__secret_ref =
  { name; namespace }

let spec__template__spec__volume__rbd ?fs_type ?keyring ?rados_user
    ?rbd_pool ?read_only ~ceph_monitors ~rbd_image ~secret_ref () :
    spec__template__spec__volume__rbd =
  {
    ceph_monitors;
    fs_type;
    keyring;
    rados_user;
    rbd_image;
    rbd_pool;
    read_only;
    secret_ref;
  }

let spec__template__spec__volume__secret__items ?key ?mode ?path () :
    spec__template__spec__volume__secret__items =
  { key; mode; path }

let spec__template__spec__volume__secret ?default_mode ?optional
    ?secret_name ~items () : spec__template__spec__volume__secret =
  { default_mode; optional; secret_name; items }

let spec__template__spec__volume__vsphere_volume ?fs_type
    ~volume_path () : spec__template__spec__volume__vsphere_volume =
  { fs_type; volume_path }

let spec__template__spec__volume ?name ~aws_elastic_block_store
    ~azure_disk ~azure_file ~ceph_fs ~cinder ~config_map ~csi
    ~downward_api ~empty_dir ~ephemeral ~fc ~flex_volume ~flocker
    ~gce_persistent_disk ~git_repo ~glusterfs ~host_path ~iscsi
    ~local ~nfs ~persistent_volume_claim ~photon_persistent_disk
    ~projected ~quobyte ~rbd ~secret ~vsphere_volume () :
    spec__template__spec__volume =
  {
    name;
    aws_elastic_block_store;
    azure_disk;
    azure_file;
    ceph_fs;
    cinder;
    config_map;
    csi;
    downward_api;
    empty_dir;
    ephemeral;
    fc;
    flex_volume;
    flocker;
    gce_persistent_disk;
    git_repo;
    glusterfs;
    host_path;
    iscsi;
    local;
    nfs;
    persistent_volume_claim;
    photon_persistent_disk;
    projected;
    quobyte;
    rbd;
    secret;
    vsphere_volume;
  }

let spec__template__spec ?active_deadline_seconds
    ?automount_service_account_token ?dns_policy
    ?enable_service_links ?host_ipc ?host_network ?host_pid ?hostname
    ?node_name ?node_selector ?priority_class_name ?restart_policy
    ?runtime_class_name ?scheduler_name ?service_account_name
    ?share_process_namespace ?subdomain
    ?termination_grace_period_seconds ~affinity ~container
    ~dns_config ~host_aliases ~image_pull_secrets ~init_container ~os
    ~readiness_gate ~security_context ~toleration
    ~topology_spread_constraint ~volume () : spec__template__spec =
  {
    active_deadline_seconds;
    automount_service_account_token;
    dns_policy;
    enable_service_links;
    host_ipc;
    host_network;
    host_pid;
    hostname;
    node_name;
    node_selector;
    priority_class_name;
    restart_policy;
    runtime_class_name;
    scheduler_name;
    service_account_name;
    share_process_namespace;
    subdomain;
    termination_grace_period_seconds;
    affinity;
    container;
    dns_config;
    host_aliases;
    image_pull_secrets;
    init_container;
    os;
    readiness_gate;
    security_context;
    toleration;
    topology_spread_constraint;
    volume;
  }

let spec__template ~metadata ~spec () : spec__template =
  { metadata; spec }

let spec ?min_ready_seconds ?replicas ~selector ~template () : spec =
  { min_ready_seconds; replicas; selector; template }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let kubernetes_replication_controller_v1 ?id ?timeouts ~metadata
    ~spec () : kubernetes_replication_controller_v1 =
  { id; metadata; spec; timeouts }

type t = { id : string prop }

let make ?id ?timeouts ~metadata ~spec __id =
  let __type = "kubernetes_replication_controller_v1" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_replication_controller_v1
        (kubernetes_replication_controller_v1 ?id ?timeouts ~metadata
           ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~metadata ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~metadata ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
