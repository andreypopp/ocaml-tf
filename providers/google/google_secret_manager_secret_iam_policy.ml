(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_secret_manager_secret_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  secret_id : string prop;  (** secret_id *)
}
[@@deriving yojson_of]
(** google_secret_manager_secret_iam_policy *)

let google_secret_manager_secret_iam_policy ?id ?project ~policy_data
    ~secret_id () : google_secret_manager_secret_iam_policy =
  { id; policy_data; project; secret_id }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  secret_id : string prop;
}

let register ?tf_module ?id ?project ~policy_data ~secret_id
    __resource_id =
  let __resource_type = "google_secret_manager_secret_iam_policy" in
  let __resource =
    google_secret_manager_secret_iam_policy ?id ?project ~policy_data
      ~secret_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_secret_manager_secret_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       secret_id =
         Prop.computed __resource_type __resource_id "secret_id";
     }
      : t)
  in
  __resource_attributes
