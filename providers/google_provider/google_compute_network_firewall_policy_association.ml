(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_network_firewall_policy_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_network_firewall_policy_association__timeouts *)

type google_compute_network_firewall_policy_association = {
  attachment_target : string;
      (** The target that the firewall policy is attached to. *)
  firewall_policy : string;
      (** The firewall policy ID of the association. *)
  name : string;  (** The name for an association. *)
  timeouts :
    google_compute_network_firewall_policy_association__timeouts
    option;
}
[@@deriving yojson_of]
(** google_compute_network_firewall_policy_association *)

let google_compute_network_firewall_policy_association ?timeouts
    ~attachment_target ~firewall_policy ~name __resource_id =
  let __resource_type =
    "google_compute_network_firewall_policy_association"
  in
  let __resource =
    { attachment_target; firewall_policy; name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network_firewall_policy_association
       __resource);
  ()
