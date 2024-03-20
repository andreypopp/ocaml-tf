(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type taint = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** taint *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type nodes = {
  created_at : string prop;  (** created_at *)
  droplet_id : string prop;  (** droplet_id *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  updated_at : string prop;  (** updated_at *)
}
[@@deriving yojson_of]

type digitalocean_kubernetes_node_pool = {
  auto_scale : bool prop option; [@option]  (** auto_scale *)
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  max_nodes : float prop option; [@option]  (** max_nodes *)
  min_nodes : float prop option; [@option]  (** min_nodes *)
  name : string prop;  (** name *)
  node_count : float prop option; [@option]  (** node_count *)
  size : string prop;  (** size *)
  tags : string prop list option; [@option]  (** tags *)
  taint : taint list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_node_pool *)

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
