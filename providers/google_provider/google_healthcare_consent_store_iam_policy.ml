(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_consent_store_iam_policy = {
  consent_store_id : string;  (** consent_store_id *)
  dataset : string;  (** dataset *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_healthcare_consent_store_iam_policy *)

let google_healthcare_consent_store_iam_policy ~consent_store_id
    ~dataset ~policy_data __resource_id =
  let __resource_type =
    "google_healthcare_consent_store_iam_policy"
  in
  let __resource = { consent_store_id; dataset; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_consent_store_iam_policy __resource);
  ()
