(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_rdns = {
  dns_ptr : string prop;  (** dns_ptr *)
  floating_ip_id : float prop option; [@option]
      (** floating_ip_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop;  (** ip_address *)
  load_balancer_id : float prop option; [@option]
      (** load_balancer_id *)
  primary_ip_id : float prop option; [@option]  (** primary_ip_id *)
  server_id : float prop option; [@option]  (** server_id *)
}
[@@deriving yojson_of]
(** hcloud_rdns *)

let hcloud_rdns ?floating_ip_id ?id ?load_balancer_id ?primary_ip_id
    ?server_id ~dns_ptr ~ip_address () : hcloud_rdns =
  {
    dns_ptr;
    floating_ip_id;
    id;
    ip_address;
    load_balancer_id;
    primary_ip_id;
    server_id;
  }

type t = {
  dns_ptr : string prop;
  floating_ip_id : float prop;
  id : string prop;
  ip_address : string prop;
  load_balancer_id : float prop;
  primary_ip_id : float prop;
  server_id : float prop;
}

let make ?floating_ip_id ?id ?load_balancer_id ?primary_ip_id
    ?server_id ~dns_ptr ~ip_address __id =
  let __type = "hcloud_rdns" in
  let __attrs =
    ({
       dns_ptr = Prop.computed __type __id "dns_ptr";
       floating_ip_id = Prop.computed __type __id "floating_ip_id";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       load_balancer_id =
         Prop.computed __type __id "load_balancer_id";
       primary_ip_id = Prop.computed __type __id "primary_ip_id";
       server_id = Prop.computed __type __id "server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_rdns
        (hcloud_rdns ?floating_ip_id ?id ?load_balancer_id
           ?primary_ip_id ?server_id ~dns_ptr ~ip_address ());
    attrs = __attrs;
  }

let register ?tf_module ?floating_ip_id ?id ?load_balancer_id
    ?primary_ip_id ?server_id ~dns_ptr ~ip_address __id =
  let (r : _ Tf_core.resource) =
    make ?floating_ip_id ?id ?load_balancer_id ?primary_ip_id
      ?server_id ~dns_ptr ~ip_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
