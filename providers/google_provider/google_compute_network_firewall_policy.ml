(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_network_firewall_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_network_firewall_policy__timeouts *)

type google_compute_network_firewall_policy = {
  description : string option; [@option]
      (** An optional description of this resource. Provide this property when you create the resource. *)
  id : string option; [@option]  (** id *)
  name : string;
      (** User-provided name of the Network firewall policy. The name should be unique in the project in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. *)
  project : string option; [@option]  (** project *)
  timeouts : google_compute_network_firewall_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_firewall_policy *)

let google_compute_network_firewall_policy ?description ?id ?project
    ?timeouts ~name __resource_id =
  let __resource_type = "google_compute_network_firewall_policy" in
  let __resource = { description; id; name; project; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network_firewall_policy __resource);
  ()
