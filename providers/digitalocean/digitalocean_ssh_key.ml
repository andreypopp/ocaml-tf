(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_ssh_key = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  public_key : string prop;  (** public_key *)
}
[@@deriving yojson_of]
(** digitalocean_ssh_key *)

let digitalocean_ssh_key ?id ~name ~public_key () :
    digitalocean_ssh_key =
  { id; name; public_key }

type t = {
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  public_key : string prop;
}

let make ?id ~name ~public_key __id =
  let __type = "digitalocean_ssh_key" in
  let __attrs =
    ({
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       public_key = Prop.computed __type __id "public_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_ssh_key
        (digitalocean_ssh_key ?id ~name ~public_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~public_key __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~public_key __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
