(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_domain = {
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** digitalocean_domain *)

let digitalocean_domain ?id ?ip_address ~name () :
    digitalocean_domain =
  { id; ip_address; name }

type t = {
  id : string prop;
  ip_address : string prop;
  name : string prop;
  ttl : float prop;
  urn : string prop;
}

let make ?id ?ip_address ~name __id =
  let __type = "digitalocean_domain" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       name = Prop.computed __type __id "name";
       ttl = Prop.computed __type __id "ttl";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_domain
        (digitalocean_domain ?id ?ip_address ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_address ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?ip_address ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
