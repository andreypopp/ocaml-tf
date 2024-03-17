(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_environment_iam_policy = {
  env_id : string;  (** env_id *)
  id : string option; [@option]  (** id *)
  org_id : string;  (** org_id *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_apigee_environment_iam_policy *)

let google_apigee_environment_iam_policy ?id ~env_id ~org_id
    ~policy_data __resource_id =
  let __resource_type = "google_apigee_environment_iam_policy" in
  let __resource = { env_id; id; org_id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_environment_iam_policy __resource);
  ()
