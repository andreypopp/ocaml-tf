(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_vpc__timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** digitalocean_vpc__timeouts *)

type digitalocean_vpc = {
  description : string prop option; [@option]
      (** A free-form description for the VPC *)
  id : string prop option; [@option]  (** id *)
  ip_range : string prop option; [@option]
      (** The range of IP addresses for the VPC in CIDR notation *)
  name : string prop;  (** The name of the VPC *)
  region : string prop;
      (** DigitalOcean region slug for the VPC's location *)
  timeouts : digitalocean_vpc__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_vpc *)

let digitalocean_vpc ?description ?id ?ip_range ?timeouts ~name
    ~region __resource_id =
  let __resource_type = "digitalocean_vpc" in
  let __resource =
    { description; id; ip_range; name; region; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_vpc __resource);
  ()
