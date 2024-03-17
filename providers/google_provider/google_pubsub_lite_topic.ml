(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_pubsub_lite_topic__partition_config__capacity = {
  publish_mib_per_sec : float;
      (** Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 16. *)
  subscribe_mib_per_sec : float;
      (** Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16. *)
}
[@@deriving yojson_of]
(** The capacity configuration. *)

type google_pubsub_lite_topic__partition_config = {
  count : float;
      (** The number of partitions in the topic. Must be at least 1. *)
  capacity :
    google_pubsub_lite_topic__partition_config__capacity list;
}
[@@deriving yojson_of]
(** The settings for this topic's partitions. *)

type google_pubsub_lite_topic__reservation_config = {
  throughput_reservation : string option; [@option]
      (** The Reservation to use for this topic's throughput capacity. *)
}
[@@deriving yojson_of]
(** The settings for this topic's Reservation usage. *)

type google_pubsub_lite_topic__retention_config = {
  per_partition_bytes : string;
      (** The provisioned storage, in bytes, per partition. If the number of bytes stored
in any of the topic's partitions grows beyond this value, older messages will be
dropped to make room for newer ones, regardless of the value of period. *)
  period : string option; [@option]
      (** How long a published message is retained. If unset, messages will be retained as
long as the bytes retained for each partition is below perPartitionBytes. A
duration in seconds with up to nine fractional digits, terminated by 's'.
Example: 3.5s. *)
}
[@@deriving yojson_of]
(** The settings for a topic's message retention. *)

type google_pubsub_lite_topic__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_pubsub_lite_topic__timeouts *)

type google_pubsub_lite_topic = {
  name : string;  (** Name of the topic. *)
  region : string option; [@option]
      (** The region of the pubsub lite topic. *)
  zone : string option; [@option]
      (** The zone of the pubsub lite topic. *)
  partition_config : google_pubsub_lite_topic__partition_config list;
  reservation_config :
    google_pubsub_lite_topic__reservation_config list;
  retention_config : google_pubsub_lite_topic__retention_config list;
  timeouts : google_pubsub_lite_topic__timeouts option;
}
[@@deriving yojson_of]
(** google_pubsub_lite_topic *)

let google_pubsub_lite_topic ?region ?zone ?timeouts ~name
    ~partition_config ~reservation_config ~retention_config
    __resource_id =
  let __resource_type = "google_pubsub_lite_topic" in
  let __resource =
    {
      name;
      region;
      zone;
      partition_config;
      reservation_config;
      retention_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_lite_topic __resource);
  ()
