(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataplex_task_iam_policy = {
  id : string option; [@option]  (** id *)
  lake : string;  (** lake *)
  location : string option; [@option]  (** location *)
  policy_data : string;  (** policy_data *)
  project : string option; [@option]  (** project *)
  task_id : string;  (** task_id *)
}
[@@deriving yojson_of]
(** google_dataplex_task_iam_policy *)

let google_dataplex_task_iam_policy ?id ?location ?project ~lake
    ~policy_data ~task_id __resource_id =
  let __resource_type = "google_dataplex_task_iam_policy" in
  let __resource =
    { id; lake; location; policy_data; project; task_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_task_iam_policy __resource);
  ()
