(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_primary_ip = {
  assignee_id : float prop option; [@option]  (** assignee_id *)
  assignee_type : string prop;  (** assignee_type *)
  auto_delete : bool prop;  (** auto_delete *)
  datacenter : string prop option; [@option]  (** datacenter *)
  delete_protection : bool prop option; [@option]
      (** delete_protection *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop option; [@option]  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_primary_ip *)

let hcloud_primary_ip ?assignee_id ?datacenter ?delete_protection ?id
    ?labels ?name ~assignee_type ~auto_delete ~type_ () :
    hcloud_primary_ip =
  {
    assignee_id;
    assignee_type;
    auto_delete;
    datacenter;
    delete_protection;
    id;
    labels;
    name;
    type_;
  }

type t = {
  assignee_id : float prop;
  assignee_type : string prop;
  auto_delete : bool prop;
  datacenter : string prop;
  delete_protection : bool prop;
  id : string prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : (string * string) list prop;
  name : string prop;
  type_ : string prop;
}

let make ?assignee_id ?datacenter ?delete_protection ?id ?labels
    ?name ~assignee_type ~auto_delete ~type_ __id =
  let __type = "hcloud_primary_ip" in
  let __attrs =
    ({
       assignee_id = Prop.computed __type __id "assignee_id";
       assignee_type = Prop.computed __type __id "assignee_type";
       auto_delete = Prop.computed __type __id "auto_delete";
       datacenter = Prop.computed __type __id "datacenter";
       delete_protection =
         Prop.computed __type __id "delete_protection";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       ip_network = Prop.computed __type __id "ip_network";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_primary_ip
        (hcloud_primary_ip ?assignee_id ?datacenter
           ?delete_protection ?id ?labels ?name ~assignee_type
           ~auto_delete ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?assignee_id ?datacenter ?delete_protection
    ?id ?labels ?name ~assignee_type ~auto_delete ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?assignee_id ?datacenter ?delete_protection ?id ?labels
      ?name ~assignee_type ~auto_delete ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
