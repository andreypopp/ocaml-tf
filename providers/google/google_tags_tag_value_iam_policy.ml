(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_tags_tag_value_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  tag_value : string prop;  (** tag_value *)
}
[@@deriving yojson_of]
(** google_tags_tag_value_iam_policy *)

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  tag_value : string prop;
}

let google_tags_tag_value_iam_policy ?id ~policy_data ~tag_value
    __resource_id =
  let __resource_type = "google_tags_tag_value_iam_policy" in
  let __resource =
    ({ id; policy_data; tag_value }
      : google_tags_tag_value_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tags_tag_value_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       tag_value =
         Prop.computed __resource_type __resource_id "tag_value";
     }
      : t)
  in
  __resource_attributes
