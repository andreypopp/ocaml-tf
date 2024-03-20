(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_server_network = {
  alias_ips : string prop list option; [@option]  (** alias_ips *)
  id : string prop option; [@option]  (** id *)
  ip : string prop option; [@option]  (** ip *)
  network_id : float prop option; [@option]  (** network_id *)
  server_id : float prop;  (** server_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** hcloud_server_network *)

let hcloud_server_network ?alias_ips ?id ?ip ?network_id ?subnet_id
    ~server_id () : hcloud_server_network =
  { alias_ips; id; ip; network_id; server_id; subnet_id }

type t = {
  alias_ips : string list prop;
  id : string prop;
  ip : string prop;
  mac_address : string prop;
  network_id : float prop;
  server_id : float prop;
  subnet_id : string prop;
}

let make ?alias_ips ?id ?ip ?network_id ?subnet_id ~server_id __id =
  let __type = "hcloud_server_network" in
  let __attrs =
    ({
       alias_ips = Prop.computed __type __id "alias_ips";
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
       mac_address = Prop.computed __type __id "mac_address";
       network_id = Prop.computed __type __id "network_id";
       server_id = Prop.computed __type __id "server_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_server_network
        (hcloud_server_network ?alias_ips ?id ?ip ?network_id
           ?subnet_id ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?alias_ips ?id ?ip ?network_id ?subnet_id
    ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?alias_ips ?id ?ip ?network_id ?subnet_id ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
