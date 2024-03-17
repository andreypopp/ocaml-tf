(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_membership_iam_policy = {
  membership_id : string;  (** membership_id *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_gke_hub_membership_iam_policy *)

let google_gke_hub_membership_iam_policy ~membership_id ~policy_data
    __resource_id =
  let __resource_type = "google_gke_hub_membership_iam_policy" in
  let __resource = { membership_id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_membership_iam_policy __resource);
  ()
