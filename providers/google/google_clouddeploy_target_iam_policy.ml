(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_clouddeploy_target_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  name : string prop;  (** name *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_clouddeploy_target_iam_policy *)

let google_clouddeploy_target_iam_policy ?id ?location ?project ~name
    ~policy_data () : google_clouddeploy_target_iam_policy =
  { id; location; name; policy_data; project }

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
}

let register ?tf_module ?id ?location ?project ~name ~policy_data
    __resource_id =
  let __resource_type = "google_clouddeploy_target_iam_policy" in
  let __resource =
    google_clouddeploy_target_iam_policy ?id ?location ?project ~name
      ~policy_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_clouddeploy_target_iam_policy __resource);
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
