(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_artifact_registry_repository_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  repository : string prop;  (** repository *)
}
[@@deriving yojson_of]
(** google_artifact_registry_repository_iam_policy *)

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
  repository : string prop;
}

let google_artifact_registry_repository_iam_policy ?id ?location
    ?project ~policy_data ~repository __resource_id =
  let __resource_type =
    "google_artifact_registry_repository_iam_policy"
  in
  let __resource =
    ({ id; location; policy_data; project; repository }
      : google_artifact_registry_repository_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_artifact_registry_repository_iam_policy
       __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       repository =
         Prop.computed __resource_type __resource_id "repository";
     }
      : t)
  in
  __resource_attributes
