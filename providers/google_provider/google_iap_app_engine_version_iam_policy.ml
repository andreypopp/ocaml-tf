(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_iap_app_engine_version_iam_policy = {
  app_id : string prop;  (** app_id *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  service : string prop;  (** service *)
  version_id : string prop;  (** version_id *)
}
[@@deriving yojson_of]
(** google_iap_app_engine_version_iam_policy *)

let google_iap_app_engine_version_iam_policy ?id ?project ~app_id
    ~policy_data ~service ~version_id __resource_id =
  let __resource_type = "google_iap_app_engine_version_iam_policy" in
  let __resource =
    { app_id; id; policy_data; project; service; version_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_app_engine_version_iam_policy __resource);
  ()
