(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type taint = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : taint) -> ()

let yojson_of_taint =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : taint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_taint

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type nodes = {
  created_at : string prop;
  droplet_id : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  updated_at : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nodes) -> ()

let yojson_of_nodes =
  (function
   | {
       created_at = v_created_at;
       droplet_id = v_droplet_id;
       id = v_id;
       name = v_name;
       status = v_status;
       updated_at = v_updated_at;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_updated_at in
         ("updated_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_droplet_id in
         ("droplet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created_at in
         ("created_at", arg) :: bnds
       in
       `Assoc bnds
    : nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nodes

[@@@deriving.end]

type digitalocean_kubernetes_node_pool = {
  auto_scale : bool prop option; [@option]
  cluster_id : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  max_nodes : float prop option; [@option]
  min_nodes : float prop option; [@option]
  name : string prop;
  node_count : float prop option; [@option]
  size : string prop;
  tags : string prop list option; [@option]
  taint : taint list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_kubernetes_node_pool) -> ()

let yojson_of_digitalocean_kubernetes_node_pool =
  (function
   | {
       auto_scale = v_auto_scale;
       cluster_id = v_cluster_id;
       id = v_id;
       labels = v_labels;
       max_nodes = v_max_nodes;
       min_nodes = v_min_nodes;
       name = v_name;
       node_count = v_node_count;
       size = v_size;
       tags = v_tags;
       taint = v_taint;
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
         let arg = yojson_of_list yojson_of_taint v_taint in
         ("taint", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         match v_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_nodes", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       let bnds =
         match v_auto_scale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_scale", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_kubernetes_node_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_kubernetes_node_pool

[@@@deriving.end]

let taint ~effect ~key ~value () : taint = { effect; key; value }
let timeouts ?create ?delete () : timeouts = { create; delete }

let digitalocean_kubernetes_node_pool ?auto_scale ?id ?labels
    ?max_nodes ?min_nodes ?node_count ?tags ?timeouts ~cluster_id
    ~name ~size ~taint () : digitalocean_kubernetes_node_pool =
  {
    auto_scale;
    cluster_id;
    id;
    labels;
    max_nodes;
    min_nodes;
    name;
    node_count;
    size;
    tags;
    taint;
    timeouts;
  }

type t = {
  actual_node_count : float prop;
  auto_scale : bool prop;
  cluster_id : string prop;
  id : string prop;
  labels : (string * string) list prop;
  max_nodes : float prop;
  min_nodes : float prop;
  name : string prop;
  node_count : float prop;
  nodes : nodes list prop;
  size : string prop;
  tags : string list prop;
}

let make ?auto_scale ?id ?labels ?max_nodes ?min_nodes ?node_count
    ?tags ?timeouts ~cluster_id ~name ~size ~taint __id =
  let __type = "digitalocean_kubernetes_node_pool" in
  let __attrs =
    ({
       actual_node_count =
         Prop.computed __type __id "actual_node_count";
       auto_scale = Prop.computed __type __id "auto_scale";
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       max_nodes = Prop.computed __type __id "max_nodes";
       min_nodes = Prop.computed __type __id "min_nodes";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       nodes = Prop.computed __type __id "nodes";
       size = Prop.computed __type __id "size";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_kubernetes_node_pool
        (digitalocean_kubernetes_node_pool ?auto_scale ?id ?labels
           ?max_nodes ?min_nodes ?node_count ?tags ?timeouts
           ~cluster_id ~name ~size ~taint ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_scale ?id ?labels ?max_nodes ?min_nodes
    ?node_count ?tags ?timeouts ~cluster_id ~name ~size ~taint __id =
  let (r : _ Tf_core.resource) =
    make ?auto_scale ?id ?labels ?max_nodes ?min_nodes ?node_count
      ?tags ?timeouts ~cluster_id ~name ~size ~taint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
