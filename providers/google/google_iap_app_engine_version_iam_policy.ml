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

type t = {
  app_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  service : string prop;
  version_id : string prop;
}

let google_iap_app_engine_version_iam_policy ?id ?project ~app_id
    ~policy_data ~service ~version_id __resource_id =
  let __resource_type = "google_iap_app_engine_version_iam_policy" in
  let __resource =
    ({ app_id; id; policy_data; project; service; version_id }
      : google_iap_app_engine_version_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_app_engine_version_iam_policy __resource);
  let __resource_attributes =
    ({
       app_id = Prop.computed __resource_type __resource_id "app_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       service =
         Prop.computed __resource_type __resource_id "service";
       version_id =
         Prop.computed __resource_type __resource_id "version_id";
     }
      : t)
  in
  __resource_attributes
