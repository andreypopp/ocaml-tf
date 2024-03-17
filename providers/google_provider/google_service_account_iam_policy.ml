(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_service_account_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  service_account_id : string prop;  (** service_account_id *)
}
[@@deriving yojson_of]
(** google_service_account_iam_policy *)

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  service_account_id : string prop;
}

let google_service_account_iam_policy ?id ~policy_data
    ~service_account_id __resource_id =
  let __resource_type = "google_service_account_iam_policy" in
  let __resource =
    ({ id; policy_data; service_account_id }
      : google_service_account_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_service_account_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       service_account_id =
         Prop.computed __resource_type __resource_id
           "service_account_id";
     }
      : t)
  in
  __resource_attributes
