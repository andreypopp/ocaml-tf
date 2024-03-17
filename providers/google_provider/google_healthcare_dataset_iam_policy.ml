(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_dataset_iam_policy = {
  dataset_id : string prop;  (** dataset_id *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_healthcare_dataset_iam_policy *)

let google_healthcare_dataset_iam_policy ?id ~dataset_id ~policy_data
    __resource_id =
  let __resource_type = "google_healthcare_dataset_iam_policy" in
  let __resource = { dataset_id; id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_dataset_iam_policy __resource);
  ()
