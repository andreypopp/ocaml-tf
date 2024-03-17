(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloudfunctions_function_iam_policy = {
  cloud_function : string prop;  (** cloud_function *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** google_cloudfunctions_function_iam_policy *)

type t = {
  cloud_function : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

let google_cloudfunctions_function_iam_policy ?id ?project ?region
    ~cloud_function ~policy_data __resource_id =
  let __resource_type =
    "google_cloudfunctions_function_iam_policy"
  in
  let __resource =
    ({ cloud_function; id; policy_data; project; region }
      : google_cloudfunctions_function_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudfunctions_function_iam_policy __resource);
  let __resource_attributes =
    ({
       cloud_function =
         Prop.computed __resource_type __resource_id "cloud_function";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
     }
      : t)
  in
  __resource_attributes
