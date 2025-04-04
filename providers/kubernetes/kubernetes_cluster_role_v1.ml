(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aggregation_rule__cluster_role_selectors__match_expressions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       aggregation_rule__cluster_role_selectors__match_expressions) ->
  ()

let yojson_of_aggregation_rule__cluster_role_selectors__match_expressions
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
    : aggregation_rule__cluster_role_selectors__match_expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aggregation_rule__cluster_role_selectors__match_expressions

[@@@deriving.end]

type aggregation_rule__cluster_role_selectors = {
  match_labels : string prop Tf_core.assoc option; [@option]
  match_expressions :
    aggregation_rule__cluster_role_selectors__match_expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aggregation_rule__cluster_role_selectors) -> ()

let yojson_of_aggregation_rule__cluster_role_selectors =
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
                yojson_of_aggregation_rule__cluster_role_selectors__match_expressions)
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
    : aggregation_rule__cluster_role_selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aggregation_rule__cluster_role_selectors

[@@@deriving.end]

type aggregation_rule = {
  cluster_role_selectors :
    aggregation_rule__cluster_role_selectors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aggregation_rule) -> ()

let yojson_of_aggregation_rule =
  (function
   | { cluster_role_selectors = v_cluster_role_selectors } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cluster_role_selectors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_aggregation_rule__cluster_role_selectors)
               v_cluster_role_selectors
           in
           let bnd = "cluster_role_selectors", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aggregation_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aggregation_rule

[@@@deriving.end]

type metadata = {
  annotations : string prop Tf_core.assoc option; [@option]
  generate_name : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop option; [@option]
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
     } ->
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

type rule = {
  api_groups : string prop list option; [@option]
  non_resource_urls : string prop list option; [@option]
  resource_names : string prop list option; [@option]
  resources : string prop list option; [@option]
  verbs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       api_groups = v_api_groups;
       non_resource_urls = v_non_resource_urls;
       resource_names = v_resource_names;
       resources = v_resources;
       verbs = v_verbs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_verbs then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_verbs
           in
           let bnd = "verbs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_non_resource_urls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "non_resource_urls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "api_groups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type kubernetes_cluster_role_v1 = {
  id : string prop option; [@option]
  aggregation_rule : aggregation_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metadata : metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_cluster_role_v1) -> ()

let yojson_of_kubernetes_cluster_role_v1 =
  (function
   | {
       id = v_id;
       aggregation_rule = v_aggregation_rule;
       metadata = v_metadata;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
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
         if Stdlib.( = ) [] v_aggregation_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_aggregation_rule)
               v_aggregation_rule
           in
           let bnd = "aggregation_rule", arg in
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
    : kubernetes_cluster_role_v1 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_cluster_role_v1

[@@@deriving.end]

let aggregation_rule__cluster_role_selectors__match_expressions ?key
    ?operator ?values () :
    aggregation_rule__cluster_role_selectors__match_expressions =
  { key; operator; values }

let aggregation_rule__cluster_role_selectors ?match_labels
    ?(match_expressions = []) () :
    aggregation_rule__cluster_role_selectors =
  { match_labels; match_expressions }

let aggregation_rule ?(cluster_role_selectors = []) () :
    aggregation_rule =
  { cluster_role_selectors }

let metadata ?annotations ?generate_name ?labels ?name () : metadata
    =
  { annotations; generate_name; labels; name }

let rule ?api_groups ?non_resource_urls ?resource_names ?resources
    ~verbs () : rule =
  { api_groups; non_resource_urls; resource_names; resources; verbs }

let kubernetes_cluster_role_v1 ?id ?(aggregation_rule = [])
    ?(rule = []) ~metadata () : kubernetes_cluster_role_v1 =
  { id; aggregation_rule; metadata; rule }

type t = { tf_name : string; id : string prop }

let make ?id ?(aggregation_rule = []) ?(rule = []) ~metadata __id =
  let __type = "kubernetes_cluster_role_v1" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_cluster_role_v1
        (kubernetes_cluster_role_v1 ?id ~aggregation_rule ~rule
           ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(aggregation_rule = []) ?(rule = [])
    ~metadata __id =
  let (r : _ Tf_core.resource) =
    make ?id ~aggregation_rule ~rule ~metadata __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
