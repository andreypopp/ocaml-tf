(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_kubernetes_node_pool__taint = {
  effect : string;  (** effect *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_node_pool__taint *)

type digitalocean_kubernetes_node_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_node_pool__timeouts *)

type digitalocean_kubernetes_node_pool__nodes = {
  created_at : string;  (** created_at *)
  droplet_id : string;  (** droplet_id *)
  id : string;  (** id *)
  name : string;  (** name *)
  status : string;  (** status *)
  updated_at : string;  (** updated_at *)
}
[@@deriving yojson_of]

type digitalocean_kubernetes_node_pool = {
  auto_scale : bool option; [@option]  (** auto_scale *)
  cluster_id : string;  (** cluster_id *)
  labels : (string * string) list option; [@option]  (** labels *)
  max_nodes : float option; [@option]  (** max_nodes *)
  min_nodes : float option; [@option]  (** min_nodes *)
  name : string;  (** name *)
  node_count : float option; [@option]  (** node_count *)
  size : string;  (** size *)
  tags : string list option; [@option]  (** tags *)
  taint : digitalocean_kubernetes_node_pool__taint list;
  timeouts : digitalocean_kubernetes_node_pool__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_node_pool *)

let digitalocean_kubernetes_node_pool ?auto_scale ?labels ?max_nodes
    ?min_nodes ?node_count ?tags ?timeouts ~cluster_id ~name ~size
    ~taint __resource_id =
  let __resource_type = "digitalocean_kubernetes_node_pool" in
  let __resource =
    {
      auto_scale;
      cluster_id;
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
