(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_iap_web_backend_service_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  web_backend_service : string prop;  (** web_backend_service *)
}
[@@deriving yojson_of]
(** google_iap_web_backend_service_iam_policy *)

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  web_backend_service : string prop;
}

let google_iap_web_backend_service_iam_policy ?id ?project
    ~policy_data ~web_backend_service __resource_id =
  let __resource_type =
    "google_iap_web_backend_service_iam_policy"
  in
  let __resource =
    ({ id; policy_data; project; web_backend_service }
      : google_iap_web_backend_service_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_web_backend_service_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       web_backend_service =
         Prop.computed __resource_type __resource_id
           "web_backend_service";
     }
      : t)
  in
  __resource_attributes
