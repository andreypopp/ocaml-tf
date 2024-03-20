(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_network = {
  delete_protection : bool prop option; [@option]
      (** delete_protection *)
  expose_routes_to_vswitch : bool prop option; [@option]
      (** Enable or disable exposing the routes to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active. *)
  id : string prop option; [@option]  (** id *)
  ip_range : string prop;  (** ip_range *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** hcloud_network *)

let hcloud_network ?delete_protection ?expose_routes_to_vswitch ?id
    ?labels ~ip_range ~name () : hcloud_network =
  {
    delete_protection;
    expose_routes_to_vswitch;
    id;
    ip_range;
    labels;
    name;
  }

type t = {
  delete_protection : bool prop;
  expose_routes_to_vswitch : bool prop;
  id : string prop;
  ip_range : string prop;
  labels : (string * string) list prop;
  name : string prop;
}

let make ?delete_protection ?expose_routes_to_vswitch ?id ?labels
    ~ip_range ~name __id =
  let __type = "hcloud_network" in
  let __attrs =
    ({
       delete_protection =
         Prop.computed __type __id "delete_protection";
       expose_routes_to_vswitch =
         Prop.computed __type __id "expose_routes_to_vswitch";
       id = Prop.computed __type __id "id";
       ip_range = Prop.computed __type __id "ip_range";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_network
        (hcloud_network ?delete_protection ?expose_routes_to_vswitch
           ?id ?labels ~ip_range ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_protection ?expose_routes_to_vswitch
    ?id ?labels ~ip_range ~name __id =
  let (r : _ Tf_core.resource) =
    make ?delete_protection ?expose_routes_to_vswitch ?id ?labels
      ~ip_range ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
