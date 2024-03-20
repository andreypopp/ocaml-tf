(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type algorithm = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** algorithm *)

type target = {
  server_id : float prop option; [@option]  (** server_id *)
  type_ : string prop; [@key "type"]  (** type *)
  use_private_ip : bool prop option; [@option]  (** use_private_ip *)
}
[@@deriving yojson_of]
(** target *)

type hcloud_load_balancer = {
  delete_protection : bool prop option; [@option]
      (** delete_protection *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  load_balancer_type : string prop;  (** load_balancer_type *)
  location : string prop option; [@option]  (** location *)
  name : string prop;  (** name *)
  network_zone : string prop option; [@option]  (** network_zone *)
  algorithm : algorithm list;
  target : target list;
}
[@@deriving yojson_of]
(** hcloud_load_balancer *)

let algorithm ?type_ () : algorithm = { type_ }

let target ?server_id ?use_private_ip ~type_ () : target =
  { server_id; type_; use_private_ip }

let hcloud_load_balancer ?delete_protection ?id ?labels ?location
    ?network_zone ~load_balancer_type ~name ~algorithm ~target () :
    hcloud_load_balancer =
  {
    delete_protection;
    id;
    labels;
    load_balancer_type;
    location;
    name;
    network_zone;
    algorithm;
    target;
  }

type t = {
  delete_protection : bool prop;
  id : string prop;
  ipv4 : string prop;
  ipv6 : string prop;
  labels : (string * string) list prop;
  load_balancer_type : string prop;
  location : string prop;
  name : string prop;
  network_id : float prop;
  network_ip : string prop;
  network_zone : string prop;
}

let make ?delete_protection ?id ?labels ?location ?network_zone
    ~load_balancer_type ~name ~algorithm ~target __id =
  let __type = "hcloud_load_balancer" in
  let __attrs =
    ({
       delete_protection =
         Prop.computed __type __id "delete_protection";
       id = Prop.computed __type __id "id";
       ipv4 = Prop.computed __type __id "ipv4";
       ipv6 = Prop.computed __type __id "ipv6";
       labels = Prop.computed __type __id "labels";
       load_balancer_type =
         Prop.computed __type __id "load_balancer_type";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_id = Prop.computed __type __id "network_id";
       network_ip = Prop.computed __type __id "network_ip";
       network_zone = Prop.computed __type __id "network_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_load_balancer
        (hcloud_load_balancer ?delete_protection ?id ?labels
           ?location ?network_zone ~load_balancer_type ~name
           ~algorithm ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_protection ?id ?labels ?location
    ?network_zone ~load_balancer_type ~name ~algorithm ~target __id =
  let (r : _ Tf_core.resource) =
    make ?delete_protection ?id ?labels ?location ?network_zone
      ~load_balancer_type ~name ~algorithm ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
