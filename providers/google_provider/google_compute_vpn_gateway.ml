(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_vpn_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_vpn_gateway__timeouts *)

type google_compute_vpn_gateway = {
  description : string option; [@option]
      (** An optional description of this resource. *)
  id : string option; [@option]  (** id *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network : string;
      (** The network this VPN gateway is accepting traffic for. *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]
      (** The region this gateway should sit in. *)
  timeouts : google_compute_vpn_gateway__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_vpn_gateway *)

let google_compute_vpn_gateway ?description ?id ?project ?region
    ?timeouts ~name ~network __resource_id =
  let __resource_type = "google_compute_vpn_gateway" in
  let __resource =
    { description; id; name; network; project; region; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_vpn_gateway __resource);
  ()
