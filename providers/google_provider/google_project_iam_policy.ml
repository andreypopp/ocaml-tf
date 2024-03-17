(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_project_iam_policy = {
  policy_data : string;  (** policy_data *)
  project : string;  (** project *)
}
[@@deriving yojson_of]
(** google_project_iam_policy *)

let google_project_iam_policy ~policy_data ~project __resource_id =
  let __resource_type = "google_project_iam_policy" in
  let __resource = { policy_data; project } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_project_iam_policy __resource);
  ()
