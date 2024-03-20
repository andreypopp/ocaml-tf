(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_floating_ip = {
  delete_protection : bool prop option; [@option]
      (** delete_protection *)
  description : string prop option; [@option]  (** description *)
  home_location : string prop option; [@option]  (** home_location *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop option; [@option]  (** name *)
  server_id : float prop option; [@option]  (** server_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_floating_ip *)

let hcloud_floating_ip ?delete_protection ?description ?home_location
    ?id ?labels ?name ?server_id ~type_ () : hcloud_floating_ip =
  {
    delete_protection;
    description;
    home_location;
    id;
    labels;
    name;
    server_id;
    type_;
  }

type t = {
  delete_protection : bool prop;
  description : string prop;
  home_location : string prop;
  id : string prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : (string * string) list prop;
  name : string prop;
  server_id : float prop;
  type_ : string prop;
}

let make ?delete_protection ?description ?home_location ?id ?labels
    ?name ?server_id ~type_ __id =
  let __type = "hcloud_floating_ip" in
  let __attrs =
    ({
       delete_protection =
         Prop.computed __type __id "delete_protection";
       description = Prop.computed __type __id "description";
       home_location = Prop.computed __type __id "home_location";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       ip_network = Prop.computed __type __id "ip_network";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       server_id = Prop.computed __type __id "server_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_floating_ip
        (hcloud_floating_ip ?delete_protection ?description
           ?home_location ?id ?labels ?name ?server_id ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_protection ?description
    ?home_location ?id ?labels ?name ?server_id ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?delete_protection ?description ?home_location ?id ?labels
      ?name ?server_id ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
