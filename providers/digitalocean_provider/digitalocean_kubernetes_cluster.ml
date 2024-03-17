(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_kubernetes_cluster__maintenance_policy = {
  day : string prop option; [@option]  (** day *)
  duration : string prop;  (** duration *)
  start_time : string prop option; [@option]  (** start_time *)
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_cluster__maintenance_policy *)

type digitalocean_kubernetes_cluster__node_pool__taint = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_cluster__node_pool__taint *)

type digitalocean_kubernetes_cluster__node_pool__nodes = {
  created_at : string prop;  (** created_at *)
  droplet_id : string prop;  (** droplet_id *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  updated_at : string prop;  (** updated_at *)
}
[@@deriving yojson_of]

type digitalocean_kubernetes_cluster__node_pool = {
  actual_node_count : float prop;  (** actual_node_count *)
  auto_scale : bool prop option; [@option]  (** auto_scale *)
  id : string prop;  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  max_nodes : float prop option; [@option]  (** max_nodes *)
  min_nodes : float prop option; [@option]  (** min_nodes *)
  name : string prop;  (** name *)
  node_count : float prop option; [@option]  (** node_count *)
  nodes : digitalocean_kubernetes_cluster__node_pool__nodes list;
      (** nodes *)
  size : string prop;  (** size *)
  tags : string prop list option; [@option]  (** tags *)
  taint : digitalocean_kubernetes_cluster__node_pool__taint list;
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_cluster__node_pool *)

type digitalocean_kubernetes_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_cluster__timeouts *)

type digitalocean_kubernetes_cluster__kube_config = {
  client_certificate : string prop;  (** client_certificate *)
  client_key : string prop;  (** client_key *)
  cluster_ca_certificate : string prop;
      (** cluster_ca_certificate *)
  expires_at : string prop;  (** expires_at *)
  host : string prop;  (** host *)
  raw_config : string prop;  (** raw_config *)
  token : string prop;  (** token *)
}
[@@deriving yojson_of]

type digitalocean_kubernetes_cluster = {
  auto_upgrade : bool prop option; [@option]  (** auto_upgrade *)
  destroy_all_associated_resources : bool prop option; [@option]
      (** destroy_all_associated_resources *)
  ha : bool prop option; [@option]  (** ha *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
  registry_integration : bool prop option; [@option]
      (** registry_integration *)
  surge_upgrade : bool prop option; [@option]  (** surge_upgrade *)
  tags : string prop list option; [@option]  (** tags *)
  version : string prop;  (** version *)
  vpc_uuid : string prop option; [@option]  (** vpc_uuid *)
  maintenance_policy :
    digitalocean_kubernetes_cluster__maintenance_policy list;
  node_pool : digitalocean_kubernetes_cluster__node_pool list;
  timeouts : digitalocean_kubernetes_cluster__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_cluster *)

let digitalocean_kubernetes_cluster ?auto_upgrade
    ?destroy_all_associated_resources ?ha ?id ?registry_integration
    ?surge_upgrade ?tags ?vpc_uuid ?timeouts ~name ~region ~version
    ~maintenance_policy ~node_pool __resource_id =
  let __resource_type = "digitalocean_kubernetes_cluster" in
  let __resource =
    {
      auto_upgrade;
      destroy_all_associated_resources;
      ha;
      id;
      name;
      region;
      registry_integration;
      surge_upgrade;
      tags;
      version;
      vpc_uuid;
      maintenance_policy;
      node_pool;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_kubernetes_cluster __resource);
  ()
