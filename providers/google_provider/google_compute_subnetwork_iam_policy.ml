(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_subnetwork_iam_policy = {
  policy_data : string;  (** policy_data *)
  subnetwork : string;  (** subnetwork *)
}
[@@deriving yojson_of]
(** google_compute_subnetwork_iam_policy *)

let google_compute_subnetwork_iam_policy ~policy_data ~subnetwork
    __resource_id =
  let __resource_type = "google_compute_subnetwork_iam_policy" in
  let __resource = { policy_data; subnetwork } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_subnetwork_iam_policy __resource);
  ()
