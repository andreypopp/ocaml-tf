(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_pubsub_topic_iam_policy = {
  policy_data : string;  (** policy_data *)
  topic : string;  (** topic *)
}
[@@deriving yojson_of]
(** google_pubsub_topic_iam_policy *)

let google_pubsub_topic_iam_policy ~policy_data ~topic __resource_id
    =
  let __resource_type = "google_pubsub_topic_iam_policy" in
  let __resource = { policy_data; topic } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_topic_iam_policy __resource);
  ()
