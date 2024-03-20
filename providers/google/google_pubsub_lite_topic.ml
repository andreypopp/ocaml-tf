(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type partition_config__capacity = {
  publish_mib_per_sec : float prop;
      (** Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 16. *)
  subscribe_mib_per_sec : float prop;
      (** Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16. *)
}
[@@deriving yojson_of]
(** The capacity configuration. *)

type partition_config = {
  count : float prop;
      (** The number of partitions in the topic. Must be at least 1. *)
  capacity : partition_config__capacity list;
}
[@@deriving yojson_of]
(** The settings for this topic's partitions. *)

type reservation_config = {
  throughput_reservation : string prop option; [@option]
      (** The Reservation to use for this topic's throughput capacity. *)
}
[@@deriving yojson_of]
(** The settings for this topic's Reservation usage. *)

type retention_config = {
  per_partition_bytes : string prop;
      (** The provisioned storage, in bytes, per partition. If the number of bytes stored
in any of the topic's partitions grows beyond this value, older messages will be
dropped to make room for newer ones, regardless of the value of period. *)
  period : string prop option; [@option]
      (** How long a published message is retained. If unset, messages will be retained as
long as the bytes retained for each partition is below perPartitionBytes. A
duration in seconds with up to nine fractional digits, terminated by 's'.
Example: 3.5s. *)
}
[@@deriving yojson_of]
(** The settings for a topic's message retention. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_pubsub_lite_topic = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** Name of the topic. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the pubsub lite topic. *)
  zone : string prop option; [@option]
      (** The zone of the pubsub lite topic. *)
  partition_config : partition_config list;
  reservation_config : reservation_config list;
  retention_config : retention_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_pubsub_lite_topic *)

let partition_config__capacity ~publish_mib_per_sec
    ~subscribe_mib_per_sec () : partition_config__capacity =
  { publish_mib_per_sec; subscribe_mib_per_sec }

let partition_config ~count ~capacity () : partition_config =
  { count; capacity }

let reservation_config ?throughput_reservation () :
    reservation_config =
  { throughput_reservation }

let retention_config ?period ~per_partition_bytes () :
    retention_config =
  { per_partition_bytes; period }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_pubsub_lite_topic ?id ?project ?region ?zone ?timeouts
    ~name ~partition_config ~reservation_config ~retention_config ()
    : google_pubsub_lite_topic =
  {
    id;
    name;
    project;
    region;
    zone;
    partition_config;
    reservation_config;
    retention_config;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  zone : string prop;
}

let make ?id ?project ?region ?zone ?timeouts ~name ~partition_config
    ~reservation_config ~retention_config __id =
  let __type = "google_pubsub_lite_topic" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_lite_topic
        (google_pubsub_lite_topic ?id ?project ?region ?zone
           ?timeouts ~name ~partition_config ~reservation_config
           ~retention_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ?zone ?timeouts ~name
    ~partition_config ~reservation_config ~retention_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ?zone ?timeouts ~name ~partition_config
      ~reservation_config ~retention_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
