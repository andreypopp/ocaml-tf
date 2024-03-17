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

let google_folder_iam_policy ?id ~folder ~policy_data __resource_id =
  let __resource_type = "google_folder_iam_policy" in
  let __resource = { folder; id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_folder_iam_policy __resource);
  ()
