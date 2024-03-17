(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_endpoints_service_consumers_iam_policy = {
  consumer_project : string;  (** consumer_project *)
  policy_data : string;  (** policy_data *)
  service_name : string;  (** service_name *)
}
[@@deriving yojson_of]
(** google_endpoints_service_consumers_iam_policy *)

let google_endpoints_service_consumers_iam_policy ~consumer_project
    ~policy_data ~service_name __resource_id =
  let __resource_type =
    "google_endpoints_service_consumers_iam_policy"
  in
  let __resource = { consumer_project; policy_data; service_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_endpoints_service_consumers_iam_policy
       __resource);
  ()
