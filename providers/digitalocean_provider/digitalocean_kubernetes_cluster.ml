(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_kubernetes_cluster__maintenance_policy = {
  day : string option; [@option]  (** day *)
  duration : string;  (** duration *)
  start_time : string option; [@option]  (** start_time *)
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_cluster__maintenance_policy *)

type digitalocean_kubernetes_cluster__node_pool__taint = {
  effect : string;  (** effect *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_cluster__node_pool__taint *)

type digitalocean_kubernetes_cluster__node_pool__nodes = {
  created_at : string;  (** created_at *)
  droplet_id : string;  (** droplet_id *)
  id : string;  (** id *)
  name : string;  (** name *)
  status : string;  (** status *)
  updated_at : string;  (** updated_at *)
}
[@@deriving yojson_of]

type digitalocean_kubernetes_cluster__node_pool = {
  actual_node_count : float;  (** actual_node_count *)
  auto_scale : bool option; [@option]  (** auto_scale *)
  id : string;  (** id *)
  labels : (string * string) list option; [@option]  (** labels *)
  max_nodes : float option; [@option]  (** max_nodes *)
  min_nodes : float option; [@option]  (** min_nodes *)
  name : string;  (** name *)
  node_count : float option; [@option]  (** node_count *)
  nodes : digitalocean_kubernetes_cluster__node_pool__nodes list;
      (** nodes *)
  size : string;  (** size *)
  tags : string list option; [@option]  (** tags *)
  taint : digitalocean_kubernetes_cluster__node_pool__taint list;
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_cluster__node_pool *)

type digitalocean_kubernetes_cluster__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_cluster__timeouts *)

type digitalocean_kubernetes_cluster__kube_config = {
  client_certificate : string;  (** client_certificate *)
  client_key : string;  (** client_key *)
  cluster_ca_certificate : string;  (** cluster_ca_certificate *)
  expires_at : string;  (** expires_at *)
  host : string;  (** host *)
  raw_config : string;  (** raw_config *)
  token : string;  (** token *)
}
[@@deriving yojson_of]

type digitalocean_kubernetes_cluster = {
  auto_upgrade : bool option; [@option]  (** auto_upgrade *)
  destroy_all_associated_resources : bool option; [@option]
      (** destroy_all_associated_resources *)
  ha : bool option; [@option]  (** ha *)
  name : string;  (** name *)
  region : string;  (** region *)
  registry_integration : bool option; [@option]
      (** registry_integration *)
  surge_upgrade : bool option; [@option]  (** surge_upgrade *)
  tags : string list option; [@option]  (** tags *)
  version : string;  (** version *)
  maintenance_policy :
    digitalocean_kubernetes_cluster__maintenance_policy list;
  node_pool : digitalocean_kubernetes_cluster__node_pool list;
  timeouts : digitalocean_kubernetes_cluster__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_cluster *)

let digitalocean_kubernetes_cluster ?auto_upgrade
    ?destroy_all_associated_resources ?ha ?registry_integration
    ?surge_upgrade ?tags ?timeouts ~name ~region ~version
    ~maintenance_policy ~node_pool __resource_id =
  let __resource_type = "digitalocean_kubernetes_cluster" in
  let __resource =
    {
      auto_upgrade;
      destroy_all_associated_resources;
      ha;
      name;
      region;
      registry_integration;
      surge_upgrade;
      tags;
      version;
      maintenance_policy;
      node_pool;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_kubernetes_cluster __resource);
  ()
