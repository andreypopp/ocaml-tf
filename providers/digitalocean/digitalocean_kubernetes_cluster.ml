(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type maintenance_policy = {
  day : string prop option; [@option]  (** day *)
  start_time : string prop option; [@option]  (** start_time *)
}
[@@deriving yojson_of]
(** maintenance_policy *)

type node_pool__taint = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** node_pool__taint *)

type node_pool__nodes = {
  created_at : string prop;  (** created_at *)
  droplet_id : string prop;  (** droplet_id *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  updated_at : string prop;  (** updated_at *)
}
[@@deriving yojson_of]

type node_pool = {
  auto_scale : bool prop option; [@option]  (** auto_scale *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  max_nodes : float prop option; [@option]  (** max_nodes *)
  min_nodes : float prop option; [@option]  (** min_nodes *)
  name : string prop;  (** name *)
  node_count : float prop option; [@option]  (** node_count *)
  size : string prop;  (** size *)
  tags : string prop list option; [@option]  (** tags *)
  taint : node_pool__taint list;
}
[@@deriving yojson_of]
(** node_pool *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type kube_config = {
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
  maintenance_policy : maintenance_policy list;
  node_pool : node_pool list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_kubernetes_cluster *)

let maintenance_policy ?day ?start_time () : maintenance_policy =
  { day; start_time }

let node_pool__taint ~effect ~key ~value () : node_pool__taint =
  { effect; key; value }

let node_pool ?auto_scale ?labels ?max_nodes ?min_nodes ?node_count
    ?tags ~name ~size ~taint () : node_pool =
  {
    auto_scale;
    labels;
    max_nodes;
    min_nodes;
    name;
    node_count;
    size;
    tags;
    taint;
  }

let timeouts ?create () : timeouts = { create }

let digitalocean_kubernetes_cluster ?auto_upgrade
    ?destroy_all_associated_resources ?ha ?id ?registry_integration
    ?surge_upgrade ?tags ?vpc_uuid ?timeouts ~name ~region ~version
    ~maintenance_policy ~node_pool () :
    digitalocean_kubernetes_cluster =
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

type t = {
  auto_upgrade : bool prop;
  cluster_subnet : string prop;
  created_at : string prop;
  destroy_all_associated_resources : bool prop;
  endpoint : string prop;
  ha : bool prop;
  id : string prop;
  ipv4_address : string prop;
  kube_config : kube_config list prop;
  name : string prop;
  region : string prop;
  registry_integration : bool prop;
  service_subnet : string prop;
  status : string prop;
  surge_upgrade : bool prop;
  tags : string list prop;
  updated_at : string prop;
  urn : string prop;
  version : string prop;
  vpc_uuid : string prop;
}

let make ?auto_upgrade ?destroy_all_associated_resources ?ha ?id
    ?registry_integration ?surge_upgrade ?tags ?vpc_uuid ?timeouts
    ~name ~region ~version ~maintenance_policy ~node_pool __id =
  let __type = "digitalocean_kubernetes_cluster" in
  let __attrs =
    ({
       auto_upgrade = Prop.computed __type __id "auto_upgrade";
       cluster_subnet = Prop.computed __type __id "cluster_subnet";
       created_at = Prop.computed __type __id "created_at";
       destroy_all_associated_resources =
         Prop.computed __type __id "destroy_all_associated_resources";
       endpoint = Prop.computed __type __id "endpoint";
       ha = Prop.computed __type __id "ha";
       id = Prop.computed __type __id "id";
       ipv4_address = Prop.computed __type __id "ipv4_address";
       kube_config = Prop.computed __type __id "kube_config";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       registry_integration =
         Prop.computed __type __id "registry_integration";
       service_subnet = Prop.computed __type __id "service_subnet";
       status = Prop.computed __type __id "status";
       surge_upgrade = Prop.computed __type __id "surge_upgrade";
       tags = Prop.computed __type __id "tags";
       updated_at = Prop.computed __type __id "updated_at";
       urn = Prop.computed __type __id "urn";
       version = Prop.computed __type __id "version";
       vpc_uuid = Prop.computed __type __id "vpc_uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_kubernetes_cluster
        (digitalocean_kubernetes_cluster ?auto_upgrade
           ?destroy_all_associated_resources ?ha ?id
           ?registry_integration ?surge_upgrade ?tags ?vpc_uuid
           ?timeouts ~name ~region ~version ~maintenance_policy
           ~node_pool ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_upgrade
    ?destroy_all_associated_resources ?ha ?id ?registry_integration
    ?surge_upgrade ?tags ?vpc_uuid ?timeouts ~name ~region ~version
    ~maintenance_policy ~node_pool __id =
  let (r : _ Tf_core.resource) =
    make ?auto_upgrade ?destroy_all_associated_resources ?ha ?id
      ?registry_integration ?surge_upgrade ?tags ?vpc_uuid ?timeouts
      ~name ~region ~version ~maintenance_policy ~node_pool __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
