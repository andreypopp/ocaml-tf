(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloudbuildv2_connection_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  name : string prop;  (** name *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_cloudbuildv2_connection_iam_policy *)

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
}

let google_cloudbuildv2_connection_iam_policy ?id ?location ?project
    ~name ~policy_data __resource_id =
  let __resource_type =
    "google_cloudbuildv2_connection_iam_policy"
  in
  let __resource =
    ({ id; location; name; policy_data; project }
      : google_cloudbuildv2_connection_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudbuildv2_connection_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
