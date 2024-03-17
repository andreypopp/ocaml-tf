(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloud_run_service_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  service : string prop;  (** service *)
}
[@@deriving yojson_of]
(** google_cloud_run_service_iam_policy *)

let google_cloud_run_service_iam_policy ?id ?location ?project
    ~policy_data ~service __resource_id =
  let __resource_type = "google_cloud_run_service_iam_policy" in
  let __resource = { id; location; policy_data; project; service } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_run_service_iam_policy __resource);
  ()
