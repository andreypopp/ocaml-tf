(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?id ?ip_range ?timeouts ~name
    ~region __resource_id =
  let __resource_type = "digitalocean_vpc" in
  let __resource =
    digitalocean_vpc ?description ?id ?ip_range ?timeouts ~name
      ~region ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_vpc __resource);
  let __resource_attributes =
    ({
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       default =
         Prop.computed __resource_type __resource_id "default";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       ip_range =
         Prop.computed __resource_type __resource_id "ip_range";
       name = Prop.computed __resource_type __resource_id "name";
       region = Prop.computed __resource_type __resource_id "region";
       urn = Prop.computed __resource_type __resource_id "urn";
     }
      : t)
  in
  __resource_attributes
