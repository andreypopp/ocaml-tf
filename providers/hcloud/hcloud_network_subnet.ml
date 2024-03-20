(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_network_subnet = {
  id : string prop option; [@option]  (** id *)
  ip_range : string prop;  (** ip_range *)
  network_id : float prop;  (** network_id *)
  network_zone : string prop;  (** network_zone *)
  type_ : string prop; [@key "type"]  (** type *)
  vswitch_id : float prop option; [@option]  (** vswitch_id *)
}
[@@deriving yojson_of]
(** hcloud_network_subnet *)

let hcloud_network_subnet ?id ?vswitch_id ~ip_range ~network_id
    ~network_zone ~type_ () : hcloud_network_subnet =
  { id; ip_range; network_id; network_zone; type_; vswitch_id }

type t = {
  gateway : string prop;
  id : string prop;
  ip_range : string prop;
  network_id : float prop;
  network_zone : string prop;
  type_ : string prop;
  vswitch_id : float prop;
}

let make ?id ?vswitch_id ~ip_range ~network_id ~network_zone ~type_
    __id =
  let __type = "hcloud_network_subnet" in
  let __attrs =
    ({
       gateway = Prop.computed __type __id "gateway";
       id = Prop.computed __type __id "id";
       ip_range = Prop.computed __type __id "ip_range";
       network_id = Prop.computed __type __id "network_id";
       network_zone = Prop.computed __type __id "network_zone";
       type_ = Prop.computed __type __id "type";
       vswitch_id = Prop.computed __type __id "vswitch_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_network_subnet
        (hcloud_network_subnet ?id ?vswitch_id ~ip_range ~network_id
           ~network_zone ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?vswitch_id ~ip_range ~network_id
    ~network_zone ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?vswitch_id ~ip_range ~network_id ~network_zone ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
