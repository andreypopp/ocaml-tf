(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type digitalocean_vpc = {
  description : string prop option; [@option]
      (** A free-form description for the VPC *)
  id : string prop option; [@option]  (** id *)
  ip_range : string prop option; [@option]
      (** The range of IP addresses for the VPC in CIDR notation *)
  name : string prop;  (** The name of the VPC *)
  region : string prop;
      (** DigitalOcean region slug for the VPC's location *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_vpc *)

let timeouts ?delete () : timeouts = { delete }

let digitalocean_vpc ?description ?id ?ip_range ?timeouts ~name
    ~region () : digitalocean_vpc =
  { description; id; ip_range; name; region; timeouts }

type t = {
  created_at : string prop;
  default : bool prop;
  description : string prop;
  id : string prop;
  ip_range : string prop;
  name : string prop;
  region : string prop;
  urn : string prop;
}

let make ?description ?id ?ip_range ?timeouts ~name ~region __id =
  let __type = "digitalocean_vpc" in
  let __attrs =
    ({
       created_at = Prop.computed __type __id "created_at";
       default = Prop.computed __type __id "default";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ip_range = Prop.computed __type __id "ip_range";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_vpc
        (digitalocean_vpc ?description ?id ?ip_range ?timeouts ~name
           ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?ip_range ?timeouts ~name
    ~region __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?ip_range ?timeouts ~name ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
