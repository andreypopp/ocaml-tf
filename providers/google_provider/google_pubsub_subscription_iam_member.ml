(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_pubsub_subscription_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_pubsub_subscription_iam_member__condition *)

type google_pubsub_subscription_iam_member = {
  id : string option; [@option]  (** id *)
  member : string;  (** member *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  subscription : string;  (** subscription *)
  condition : google_pubsub_subscription_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_pubsub_subscription_iam_member *)

let google_pubsub_subscription_iam_member ?id ?project ~member ~role
    ~subscription ~condition __resource_id =
  let __resource_type = "google_pubsub_subscription_iam_member" in
  let __resource =
    { id; member; project; role; subscription; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_subscription_iam_member __resource);
  ()
