(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_kubernetes_node_pool__taint = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_node_pool__taint *)

type digitalocean_kubernetes_node_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_node_pool__timeouts *)

type digitalocean_kubernetes_node_pool__nodes = {
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
  taint : digitalocean_kubernetes_node_pool__taint list;
  timeouts : digitalocean_kubernetes_node_pool__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_node_pool *)

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
  nodes : digitalocean_kubernetes_node_pool__nodes list prop;
  size : string prop;
  tags : string list prop;
}

let digitalocean_kubernetes_node_pool ?auto_scale ?id ?labels
    ?max_nodes ?min_nodes ?node_count ?tags ?timeouts ~cluster_id
    ~name ~size ~taint __resource_id =
  let __resource_type = "digitalocean_kubernetes_node_pool" in
  let __resource =
    ({
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
      : digitalocean_kubernetes_node_pool)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_kubernetes_node_pool __resource);
  let __resource_attributes =
    ({
       actual_node_count =
         Prop.computed __resource_type __resource_id
           "actual_node_count";
       auto_scale =
         Prop.computed __resource_type __resource_id "auto_scale";
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       max_nodes =
         Prop.computed __resource_type __resource_id "max_nodes";
       min_nodes =
         Prop.computed __resource_type __resource_id "min_nodes";
       name = Prop.computed __resource_type __resource_id "name";
       node_count =
         Prop.computed __resource_type __resource_id "node_count";
       nodes = Prop.computed __resource_type __resource_id "nodes";
       size = Prop.computed __resource_type __resource_id "size";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
