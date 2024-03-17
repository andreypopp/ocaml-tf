(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_hl7_v2_store_iam_policy = {
  hl7_v2_store_id : string;  (** hl7_v2_store_id *)
  id : string option; [@option]  (** id *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_healthcare_hl7_v2_store_iam_policy *)

let google_healthcare_hl7_v2_store_iam_policy ?id ~hl7_v2_store_id
    ~policy_data __resource_id =
  let __resource_type =
    "google_healthcare_hl7_v2_store_iam_policy"
  in
  let __resource = { hl7_v2_store_id; id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_hl7_v2_store_iam_policy __resource);
  ()
