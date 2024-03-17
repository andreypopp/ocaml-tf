(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_pubsub_topic_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_pubsub_topic_iam_binding__condition *)

type google_pubsub_topic_iam_binding = {
  id : string option; [@option]  (** id *)
  members : string list;  (** members *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  topic : string;  (** topic *)
  condition : google_pubsub_topic_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_pubsub_topic_iam_binding *)

let google_pubsub_topic_iam_binding ?id ?project ~members ~role
    ~topic ~condition __resource_id =
  let __resource_type = "google_pubsub_topic_iam_binding" in
  let __resource =
    { id; members; project; role; topic; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_topic_iam_binding __resource);
  ()
