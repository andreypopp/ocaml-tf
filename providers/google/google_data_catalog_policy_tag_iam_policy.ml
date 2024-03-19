(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_policy_tag_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  policy_tag : string prop;  (** policy_tag *)
}
[@@deriving yojson_of]
(** google_data_catalog_policy_tag_iam_policy *)

let google_data_catalog_policy_tag_iam_policy ?id ~policy_data
    ~policy_tag () : google_data_catalog_policy_tag_iam_policy =
  { id; policy_data; policy_tag }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  policy_tag : string prop;
}

let register ?tf_module ?id ~policy_data ~policy_tag __resource_id =
  let __resource_type =
    "google_data_catalog_policy_tag_iam_policy"
  in
  let __resource =
    google_data_catalog_policy_tag_iam_policy ?id ~policy_data
      ~policy_tag ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_policy_tag_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       policy_tag =
         Prop.computed __resource_type __resource_id "policy_tag";
     }
      : t)
  in
  __resource_attributes
