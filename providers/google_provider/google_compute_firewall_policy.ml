(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_firewall_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_firewall_policy__timeouts *)

type google_compute_firewall_policy = {
  description : string option; [@option]
      (** An optional description of this resource. Provide this property when you create the resource. *)
  id : string option; [@option]  (** id *)
  parent : string;  (** The parent of the firewall policy. *)
  short_name : string;
      (** User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. *)
  timeouts : google_compute_firewall_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_firewall_policy *)

let google_compute_firewall_policy ?description ?id ?timeouts ~parent
    ~short_name __resource_id =
  let __resource_type = "google_compute_firewall_policy" in
  let __resource =
    { description; id; parent; short_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_firewall_policy __resource);
  ()
