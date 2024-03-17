(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_consent_store_iam_policy = {
  consent_store_id : string prop;  (** consent_store_id *)
  dataset : string prop;  (** dataset *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_healthcare_consent_store_iam_policy *)

type t = {
  consent_store_id : string prop;
  dataset : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

let google_healthcare_consent_store_iam_policy ?id ~consent_store_id
    ~dataset ~policy_data __resource_id =
  let __resource_type =
    "google_healthcare_consent_store_iam_policy"
  in
  let __resource =
    ({ consent_store_id; dataset; id; policy_data }
      : google_healthcare_consent_store_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_consent_store_iam_policy __resource);
  let __resource_attributes =
    ({
       consent_store_id =
         Prop.computed __resource_type __resource_id
           "consent_store_id";
       dataset =
         Prop.computed __resource_type __resource_id "dataset";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
     }
      : t)
  in
  __resource_attributes
