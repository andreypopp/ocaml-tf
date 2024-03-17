(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_backup_restore_plan_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  name : string prop;  (** name *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_gke_backup_restore_plan_iam_policy *)

let google_gke_backup_restore_plan_iam_policy ?id ?location ?project
    ~name ~policy_data __resource_id =
  let __resource_type =
    "google_gke_backup_restore_plan_iam_policy"
  in
  let __resource = { id; location; name; policy_data; project } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_backup_restore_plan_iam_policy __resource);
  ()
