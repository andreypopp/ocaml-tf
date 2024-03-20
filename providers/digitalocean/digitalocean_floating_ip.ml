(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_floating_ip = {
  droplet_id : float prop option; [@option]  (** droplet_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** digitalocean_floating_ip *)

let digitalocean_floating_ip ?droplet_id ?id ?ip_address ~region () :
    digitalocean_floating_ip =
  { droplet_id; id; ip_address; region }

type t = {
  droplet_id : float prop;
  id : string prop;
  ip_address : string prop;
  region : string prop;
  urn : string prop;
}

let make ?droplet_id ?id ?ip_address ~region __id =
  let __type = "digitalocean_floating_ip" in
  let __attrs =
    ({
       droplet_id = Prop.computed __type __id "droplet_id";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       region = Prop.computed __type __id "region";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_floating_ip
        (digitalocean_floating_ip ?droplet_id ?id ?ip_address ~region
           ());
    attrs = __attrs;
  }

let register ?tf_module ?droplet_id ?id ?ip_address ~region __id =
  let (r : _ Tf_core.resource) =
    make ?droplet_id ?id ?ip_address ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
