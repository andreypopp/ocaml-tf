(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_load_balancer_network = {
  enable_public_interface : bool prop option; [@option]
      (** enable_public_interface *)
  id : string prop option; [@option]  (** id *)
  ip : string prop option; [@option]  (** ip *)
  load_balancer_id : float prop;  (** load_balancer_id *)
  network_id : float prop option; [@option]  (** network_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** hcloud_load_balancer_network *)

let hcloud_load_balancer_network ?enable_public_interface ?id ?ip
    ?network_id ?subnet_id ~load_balancer_id () :
    hcloud_load_balancer_network =
  {
    enable_public_interface;
    id;
    ip;
    load_balancer_id;
    network_id;
    subnet_id;
  }

type t = {
  enable_public_interface : bool prop;
  id : string prop;
  ip : string prop;
  load_balancer_id : float prop;
  network_id : float prop;
  subnet_id : string prop;
}

let make ?enable_public_interface ?id ?ip ?network_id ?subnet_id
    ~load_balancer_id __id =
  let __type = "hcloud_load_balancer_network" in
  let __attrs =
    ({
       enable_public_interface =
         Prop.computed __type __id "enable_public_interface";
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
       load_balancer_id =
         Prop.computed __type __id "load_balancer_id";
       network_id = Prop.computed __type __id "network_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_load_balancer_network
        (hcloud_load_balancer_network ?enable_public_interface ?id
           ?ip ?network_id ?subnet_id ~load_balancer_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_public_interface ?id ?ip ?network_id
    ?subnet_id ~load_balancer_id __id =
  let (r : _ Tf_core.resource) =
    make ?enable_public_interface ?id ?ip ?network_id ?subnet_id
      ~load_balancer_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
