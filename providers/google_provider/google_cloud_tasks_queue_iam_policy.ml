(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloud_tasks_queue_iam_policy = {
  id : string option; [@option]  (** id *)
  location : string option; [@option]  (** location *)
  name : string;  (** name *)
  policy_data : string;  (** policy_data *)
  project : string option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_cloud_tasks_queue_iam_policy *)

let google_cloud_tasks_queue_iam_policy ?id ?location ?project ~name
    ~policy_data __resource_id =
  let __resource_type = "google_cloud_tasks_queue_iam_policy" in
  let __resource = { id; location; name; policy_data; project } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_tasks_queue_iam_policy __resource);
  ()
