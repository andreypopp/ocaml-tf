(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_vpc__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** digitalocean_vpc__timeouts *)

type digitalocean_vpc = {
  description : string option; [@option]
      (** A free-form description for the VPC *)
  id : string option; [@option]  (** id *)
  ip_range : string option; [@option]
      (** The range of IP addresses for the VPC in CIDR notation *)
  name : string;  (** The name of the VPC *)
  region : string;
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
