(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_binary_authorization_attestor_iam_policy = {
  attestor : string;  (** attestor *)
  id : string option; [@option]  (** id *)
  policy_data : string;  (** policy_data *)
  project : string option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_binary_authorization_attestor_iam_policy *)

let google_binary_authorization_attestor_iam_policy ?id ?project
    ~attestor ~policy_data __resource_id =
  let __resource_type =
    "google_binary_authorization_attestor_iam_policy"
  in
  let __resource = { attestor; id; policy_data; project } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_binary_authorization_attestor_iam_policy
       __resource);
  ()
