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
    ~secret_id __resource_id =
  let __resource_type = "google_secret_manager_secret_iam_policy" in
  let __resource = { id; policy_data; project; secret_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_secret_manager_secret_iam_policy __resource);
  ()
