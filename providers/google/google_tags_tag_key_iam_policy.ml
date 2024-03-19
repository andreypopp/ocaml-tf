(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_tags_tag_key_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  tag_key : string prop;  (** tag_key *)
}
[@@deriving yojson_of]
(** google_tags_tag_key_iam_policy *)

let google_tags_tag_key_iam_policy ?id ~policy_data ~tag_key () :
    google_tags_tag_key_iam_policy =
  { id; policy_data; tag_key }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  tag_key : string prop;
}

let register ?tf_module ?id ~policy_data ~tag_key __resource_id =
  let __resource_type = "google_tags_tag_key_iam_policy" in
  let __resource =
    google_tags_tag_key_iam_policy ?id ~policy_data ~tag_key ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tags_tag_key_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       tag_key =
         Prop.computed __resource_type __resource_id "tag_key";
     }
      : t)
  in
  __resource_attributes
