(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_service_account_iam_policy = {
  id : string option; [@option]  (** id *)
  policy_data : string;  (** policy_data *)
  service_account_id : string;  (** service_account_id *)
}
[@@deriving yojson_of]
(** google_service_account_iam_policy *)

let google_service_account_iam_policy ?id ~policy_data
    ~service_account_id __resource_id =
  let __resource_type = "google_service_account_iam_policy" in
  let __resource = { id; policy_data; service_account_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_service_account_iam_policy __resource);
  ()
