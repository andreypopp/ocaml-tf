(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_pubsub_lite_subscription__delivery_config = {
  delivery_requirement : string;
      (** When this subscription should send messages to subscribers relative to messages persistence in storage. Possible values: [DELIVER_IMMEDIATELY, DELIVER_AFTER_STORED, DELIVERY_REQUIREMENT_UNSPECIFIED] *)
}
[@@deriving yojson_of]
(** The settings for this subscription's message delivery. *)

type google_pubsub_lite_subscription__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_pubsub_lite_subscription__timeouts *)

type google_pubsub_lite_subscription = {
  id : string option; [@option]  (** id *)
  name : string;  (** Name of the subscription. *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]
      (** The region of the pubsub lite topic. *)
  topic : string;  (** A reference to a Topic resource. *)
  zone : string option; [@option]
      (** The zone of the pubsub lite topic. *)
  delivery_config :
    google_pubsub_lite_subscription__delivery_config list;
  timeouts : google_pubsub_lite_subscription__timeouts option;
}
[@@deriving yojson_of]
(** google_pubsub_lite_subscription *)

let google_pubsub_lite_subscription ?id ?project ?region ?zone
    ?timeouts ~name ~topic ~delivery_config __resource_id =
  let __resource_type = "google_pubsub_lite_subscription" in
  let __resource =
    {
      id;
      name;
      project;
      region;
      topic;
      zone;
      delivery_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_lite_subscription __resource);
  ()
