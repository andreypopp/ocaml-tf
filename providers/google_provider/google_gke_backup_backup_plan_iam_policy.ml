(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_gke_backup_backup_plan_iam_policy = {
  name : string;  (** name *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_gke_backup_backup_plan_iam_policy *)

let google_gke_backup_backup_plan_iam_policy ~name ~policy_data
    __resource_id =
  let __resource_type = "google_gke_backup_backup_plan_iam_policy" in
  let __resource = { name; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_backup_backup_plan_iam_policy __resource);
  ()
