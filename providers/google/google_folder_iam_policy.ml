(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_folder_iam_policy = {
  folder : string prop;  (** folder *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_folder_iam_policy *)

let google_folder_iam_policy ?id ~folder ~policy_data () :
    google_folder_iam_policy =
  { folder; id; policy_data }

type t = {
  etag : string prop;
  folder : string prop;
  id : string prop;
  policy_data : string prop;
}

let register ?tf_module ?id ~folder ~policy_data __resource_id =
  let __resource_type = "google_folder_iam_policy" in
  let __resource =
    google_folder_iam_policy ?id ~folder ~policy_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_folder_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       folder = Prop.computed __resource_type __resource_id "folder";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
     }
      : t)
  in
  __resource_attributes
