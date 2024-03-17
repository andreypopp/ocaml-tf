(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_network_firewall_policy_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_network_firewall_policy_association__timeouts *)

type google_compute_network_firewall_policy_association = {
  attachment_target : string prop;
      (** The target that the firewall policy is attached to. *)
  firewall_policy : string prop;
      (** The firewall policy ID of the association. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name for an association. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  timeouts :
    google_compute_network_firewall_policy_association__timeouts
    option;
}
[@@deriving yojson_of]
(** google_compute_network_firewall_policy_association *)

let google_compute_network_firewall_policy_association ?id ?project
    ?timeouts ~attachment_target ~firewall_policy ~name __resource_id
    =
  let __resource_type =
    "google_compute_network_firewall_policy_association"
  in
  let __resource =
    {
      attachment_target;
      firewall_policy;
      id;
      name;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network_firewall_policy_association
       __resource);
  ()
