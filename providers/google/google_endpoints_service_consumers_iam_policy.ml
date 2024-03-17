(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_endpoints_service_consumers_iam_policy = {
  consumer_project : string prop;  (** consumer_project *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  service_name : string prop;  (** service_name *)
}
[@@deriving yojson_of]
(** google_endpoints_service_consumers_iam_policy *)

type t = {
  consumer_project : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  service_name : string prop;
}

let google_endpoints_service_consumers_iam_policy ?id
    ~consumer_project ~policy_data ~service_name __resource_id =
  let __resource_type =
    "google_endpoints_service_consumers_iam_policy"
  in
  let __resource =
    ({ consumer_project; id; policy_data; service_name }
      : google_endpoints_service_consumers_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_endpoints_service_consumers_iam_policy
       __resource);
  let __resource_attributes =
    ({
       consumer_project =
         Prop.computed __resource_type __resource_id
           "consumer_project";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       service_name =
         Prop.computed __resource_type __resource_id "service_name";
     }
      : t)
  in
  __resource_attributes
