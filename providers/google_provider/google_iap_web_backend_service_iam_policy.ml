(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_iap_web_backend_service_iam_policy = {
  policy_data : string;  (** policy_data *)
  web_backend_service : string;  (** web_backend_service *)
}
[@@deriving yojson_of]
(** google_iap_web_backend_service_iam_policy *)

let google_iap_web_backend_service_iam_policy ~policy_data
    ~web_backend_service __resource_id =
  let __resource_type =
    "google_iap_web_backend_service_iam_policy"
  in
  let __resource = { policy_data; web_backend_service } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_web_backend_service_iam_policy __resource);
  ()