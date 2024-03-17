(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_public_advertised_prefix__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_public_advertised_prefix__timeouts *)

type google_compute_public_advertised_prefix = {
  description : string option; [@option]
      (** An optional description of this resource. *)
  dns_verification_ip : string;
      (** The IPv4 address to be used for reverse DNS verification. *)
  ip_cidr_range : string;
      (** The IPv4 address range, in CIDR format, represented by this public advertised prefix. *)
  name : string;
      (** Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  timeouts : google_compute_public_advertised_prefix__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_public_advertised_prefix *)

let google_compute_public_advertised_prefix ?description ?timeouts
    ~dns_verification_ip ~ip_cidr_range ~name __resource_id =
  let __resource_type = "google_compute_public_advertised_prefix" in
  let __resource =
    {
      description;
      dns_verification_ip;
      ip_cidr_range;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_public_advertised_prefix __resource);
  ()
