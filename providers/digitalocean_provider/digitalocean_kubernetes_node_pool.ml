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

let digitalocean_kubernetes_node_pool ?auto_scale ?id ?labels
    ?max_nodes ?min_nodes ?node_count ?tags ?timeouts ~cluster_id
    ~name ~size ~taint __resource_id =
  let __resource_type = "digitalocean_kubernetes_node_pool" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_kubernetes_node_pool __resource);
  ()
