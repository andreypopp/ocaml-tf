(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : string prop Tf_core.assoc option; [@option]
  generate_name : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type spec__egress__ports = {
  port : string prop option; [@option]
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress__ports) -> ()

let yojson_of_spec__egress__ports =
  (function
   | { port = v_port; protocol = v_protocol } ->
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__egress__ports -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress__ports

[@@@deriving.end]

type spec__egress__to__ip_block = {
  cidr : string prop option; [@option]
  except : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress__to__ip_block) -> ()

let yojson_of_spec__egress__to__ip_block =
  (function
   | { cidr = v_cidr; except = v_except } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_except with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "except", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__egress__to__ip_block -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress__to__ip_block

[@@@deriving.end]

type spec__egress__to__namespace_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__egress__to__namespace_selector__match_expressions) ->
  ()

let yojson_of_spec__egress__to__namespace_selector__match_expressions
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
    : spec__egress__to__namespace_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__egress__to__namespace_selector__match_expressions

[@@@deriving.end]

type spec__egress__to__namespace_selector = {
  match_labels : string prop Tf_core.assoc option; [@option]
  match_expressions :
    spec__egress__to__namespace_selector__match_expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress__to__namespace_selector) -> ()

let yojson_of_spec__egress__to__namespace_selector =
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
                yojson_of_spec__egress__to__namespace_selector__match_expressions)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "match_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__egress__to__namespace_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress__to__namespace_selector

[@@@deriving.end]

type spec__egress__to__pod_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__egress__to__pod_selector__match_expressions) -> ()

let yojson_of_spec__egress__to__pod_selector__match_expressions =
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
    : spec__egress__to__pod_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress__to__pod_selector__match_expressions

[@@@deriving.end]

type spec__egress__to__pod_selector = {
  match_labels : string prop Tf_core.assoc option; [@option]
  match_expressions :
    spec__egress__to__pod_selector__match_expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress__to__pod_selector) -> ()

let yojson_of_spec__egress__to__pod_selector =
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
                yojson_of_spec__egress__to__pod_selector__match_expressions)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "match_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__egress__to__pod_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress__to__pod_selector

[@@@deriving.end]

type spec__egress__to = {
  ip_block : spec__egress__to__ip_block list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  namespace_selector : spec__egress__to__namespace_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pod_selector : spec__egress__to__pod_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress__to) -> ()

let yojson_of_spec__egress__to =
  (function
   | {
       ip_block = v_ip_block;
       namespace_selector = v_namespace_selector;
       pod_selector = v_pod_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pod_selector then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__egress__to__pod_selector)
               v_pod_selector
           in
           let bnd = "pod_selector", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_namespace_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__egress__to__namespace_selector)
               v_namespace_selector
           in
           let bnd = "namespace_selector", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_block then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__egress__to__ip_block)
               v_ip_block
           in
           let bnd = "ip_block", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__egress__to -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress__to

[@@@deriving.end]

type spec__egress = {
  ports : spec__egress__ports list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  to_ : spec__egress__to list;
      [@key "to"] [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress) -> ()

let yojson_of_spec__egress =
  (function
   | { ports = v_ports; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_to_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__egress__to) v_to_
           in
           let bnd = "to", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ports then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__egress__ports) v_ports
           in
           let bnd = "ports", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__egress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress

[@@@deriving.end]

type spec__ingress__from__ip_block = {
  cidr : string prop option; [@option]
  except : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__from__ip_block) -> ()

let yojson_of_spec__ingress__from__ip_block =
  (function
   | { cidr = v_cidr; except = v_except } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_except with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "except", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress__from__ip_block ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__from__ip_block

[@@@deriving.end]

type spec__ingress__from__namespace_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__ingress__from__namespace_selector__match_expressions) ->
  ()

let yojson_of_spec__ingress__from__namespace_selector__match_expressions
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
    : spec__ingress__from__namespace_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__ingress__from__namespace_selector__match_expressions

[@@@deriving.end]

type spec__ingress__from__namespace_selector = {
  match_labels : string prop Tf_core.assoc option; [@option]
  match_expressions :
    spec__ingress__from__namespace_selector__match_expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__from__namespace_selector) -> ()

let yojson_of_spec__ingress__from__namespace_selector =
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
                yojson_of_spec__ingress__from__namespace_selector__match_expressions)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "match_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress__from__namespace_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__from__namespace_selector

[@@@deriving.end]

type spec__ingress__from__pod_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__ingress__from__pod_selector__match_expressions) -> ()

let yojson_of_spec__ingress__from__pod_selector__match_expressions =
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
    : spec__ingress__from__pod_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__ingress__from__pod_selector__match_expressions

[@@@deriving.end]

type spec__ingress__from__pod_selector = {
  match_labels : string prop Tf_core.assoc option; [@option]
  match_expressions :
    spec__ingress__from__pod_selector__match_expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__from__pod_selector) -> ()

let yojson_of_spec__ingress__from__pod_selector =
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
                yojson_of_spec__ingress__from__pod_selector__match_expressions)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "match_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress__from__pod_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__from__pod_selector

[@@@deriving.end]

type spec__ingress__from = {
  ip_block : spec__ingress__from__ip_block list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  namespace_selector : spec__ingress__from__namespace_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pod_selector : spec__ingress__from__pod_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__from) -> ()

let yojson_of_spec__ingress__from =
  (function
   | {
       ip_block = v_ip_block;
       namespace_selector = v_namespace_selector;
       pod_selector = v_pod_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pod_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__ingress__from__pod_selector)
               v_pod_selector
           in
           let bnd = "pod_selector", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_namespace_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__ingress__from__namespace_selector)
               v_namespace_selector
           in
           let bnd = "namespace_selector", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_block then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__ingress__from__ip_block)
               v_ip_block
           in
           let bnd = "ip_block", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress__from -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__from

[@@@deriving.end]

type spec__ingress__ports = {
  port : string prop option; [@option]
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress__ports) -> ()

let yojson_of_spec__ingress__ports =
  (function
   | { port = v_port; protocol = v_protocol } ->
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress__ports -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress__ports

[@@@deriving.end]

type spec__ingress = {
  from : spec__ingress__from list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ports : spec__ingress__ports list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress) -> ()

let yojson_of_spec__ingress =
  (function
   | { from = v_from; ports = v_ports } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ports then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__ingress__ports) v_ports
           in
           let bnd = "ports", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_from then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__ingress__from) v_from
           in
           let bnd = "from", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress

[@@@deriving.end]

type spec__pod_selector__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__pod_selector__match_expressions) -> ()

let yojson_of_spec__pod_selector__match_expressions =
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
    : spec__pod_selector__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__pod_selector__match_expressions

[@@@deriving.end]

type spec__pod_selector = {
  match_labels : string prop Tf_core.assoc option; [@option]
  match_expressions : spec__pod_selector__match_expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__pod_selector) -> ()

let yojson_of_spec__pod_selector =
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
                yojson_of_spec__pod_selector__match_expressions)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "match_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__pod_selector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__pod_selector

[@@@deriving.end]

type spec = {
  policy_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  egress : spec__egress list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ingress : spec__ingress list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pod_selector : spec__pod_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       policy_types = v_policy_types;
       egress = v_egress;
       ingress = v_ingress;
       pod_selector = v_pod_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pod_selector then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__pod_selector)
               v_pod_selector
           in
           let bnd = "pod_selector", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ingress then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__ingress) v_ingress
           in
           let bnd = "ingress", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_egress then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__egress) v_egress
           in
           let bnd = "egress", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_policy_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_policy_types
           in
           let bnd = "policy_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type kubernetes_network_policy = {
  id : string prop option; [@option]
  metadata : metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spec : spec list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_network_policy) -> ()

let yojson_of_kubernetes_network_policy =
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
    : kubernetes_network_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_network_policy

[@@@deriving.end]

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__egress__ports ?port ?protocol () : spec__egress__ports =
  { port; protocol }

let spec__egress__to__ip_block ?cidr ?except () :
    spec__egress__to__ip_block =
  { cidr; except }

let spec__egress__to__namespace_selector__match_expressions ?key
    ?operator ?values () :
    spec__egress__to__namespace_selector__match_expressions =
  { key; operator; values }

let spec__egress__to__namespace_selector ?match_labels
    ?(match_expressions = []) () :
    spec__egress__to__namespace_selector =
  { match_labels; match_expressions }

let spec__egress__to__pod_selector__match_expressions ?key ?operator
    ?values () : spec__egress__to__pod_selector__match_expressions =
  { key; operator; values }

let spec__egress__to__pod_selector ?match_labels
    ?(match_expressions = []) () : spec__egress__to__pod_selector =
  { match_labels; match_expressions }

let spec__egress__to ?(ip_block = []) ?(namespace_selector = [])
    ?(pod_selector = []) () : spec__egress__to =
  { ip_block; namespace_selector; pod_selector }

let spec__egress ?(ports = []) ?(to_ = []) () : spec__egress =
  { ports; to_ }

let spec__ingress__from__ip_block ?cidr ?except () :
    spec__ingress__from__ip_block =
  { cidr; except }

let spec__ingress__from__namespace_selector__match_expressions ?key
    ?operator ?values () :
    spec__ingress__from__namespace_selector__match_expressions =
  { key; operator; values }

let spec__ingress__from__namespace_selector ?match_labels
    ?(match_expressions = []) () :
    spec__ingress__from__namespace_selector =
  { match_labels; match_expressions }

let spec__ingress__from__pod_selector__match_expressions ?key
    ?operator ?values () :
    spec__ingress__from__pod_selector__match_expressions =
  { key; operator; values }

let spec__ingress__from__pod_selector ?match_labels
    ?(match_expressions = []) () : spec__ingress__from__pod_selector
    =
  { match_labels; match_expressions }

let spec__ingress__from ?(ip_block = []) ?(namespace_selector = [])
    ?(pod_selector = []) () : spec__ingress__from =
  { ip_block; namespace_selector; pod_selector }

let spec__ingress__ports ?port ?protocol () : spec__ingress__ports =
  { port; protocol }

let spec__ingress ?(from = []) ?(ports = []) () : spec__ingress =
  { from; ports }

let spec__pod_selector__match_expressions ?key ?operator ?values () :
    spec__pod_selector__match_expressions =
  { key; operator; values }

let spec__pod_selector ?match_labels ?(match_expressions = []) () :
    spec__pod_selector =
  { match_labels; match_expressions }

let spec ?(egress = []) ?(ingress = []) ~policy_types ~pod_selector
    () : spec =
  { policy_types; egress; ingress; pod_selector }

let kubernetes_network_policy ?id ~metadata ~spec () :
    kubernetes_network_policy =
  { id; metadata; spec }

type t = { tf_name : string; id : string prop }

let make ?id ~metadata ~spec __id =
  let __type = "kubernetes_network_policy" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_network_policy
        (kubernetes_network_policy ?id ~metadata ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~spec __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata ~spec __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
