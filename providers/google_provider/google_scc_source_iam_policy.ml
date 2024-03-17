(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_scc_source_iam_policy = {
  organization : string;  (** organization *)
  policy_data : string;  (** policy_data *)
  source : string;  (** source *)
}
[@@deriving yojson_of]
(** google_scc_source_iam_policy *)

let google_scc_source_iam_policy ~organization ~policy_data ~source
    __resource_id =
  let __resource_type = "google_scc_source_iam_policy" in
  let __resource = { organization; policy_data; source } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_scc_source_iam_policy __resource);
  ()
