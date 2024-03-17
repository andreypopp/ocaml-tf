(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_policy_tag_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_data_catalog_policy_tag_iam_binding__condition *)

type google_data_catalog_policy_tag_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  policy_tag : string prop;  (** policy_tag *)
  role : string prop;  (** role *)
  condition :
    google_data_catalog_policy_tag_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_data_catalog_policy_tag_iam_binding *)

type t = {
  etag : string prop;
  id : string prop;
  members : string list prop;
  policy_tag : string prop;
  role : string prop;
}

let google_data_catalog_policy_tag_iam_binding ?id ~members
    ~policy_tag ~role ~condition __resource_id =
  let __resource_type =
    "google_data_catalog_policy_tag_iam_binding"
  in
  let __resource =
    ({ id; members; policy_tag; role; condition }
      : google_data_catalog_policy_tag_iam_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_policy_tag_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       policy_tag =
         Prop.computed __resource_type __resource_id "policy_tag";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
