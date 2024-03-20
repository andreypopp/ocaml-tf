(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_reserved_ip_assignment = {
  droplet_id : float prop;  (** droplet_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop;  (** ip_address *)
}
[@@deriving yojson_of]
(** digitalocean_reserved_ip_assignment *)

let digitalocean_reserved_ip_assignment ?id ~droplet_id ~ip_address
    () : digitalocean_reserved_ip_assignment =
  { droplet_id; id; ip_address }

type t = {
  droplet_id : float prop;
  id : string prop;
  ip_address : string prop;
}

let make ?id ~droplet_id ~ip_address __id =
  let __type = "digitalocean_reserved_ip_assignment" in
  let __attrs =
    ({
       droplet_id = Prop.computed __type __id "droplet_id";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_reserved_ip_assignment
        (digitalocean_reserved_ip_assignment ?id ~droplet_id
           ~ip_address ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~droplet_id ~ip_address __id =
  let (r : _ Tf_core.resource) =
    make ?id ~droplet_id ~ip_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
