(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_internetmonitor_monitor__health_events_config = {
  availability_score_threshold : float option; [@option]
      (** availability_score_threshold *)
  performance_score_threshold : float option; [@option]
      (** performance_score_threshold *)
}
[@@deriving yojson_of]
(** aws_internetmonitor_monitor__health_events_config *)

type aws_internetmonitor_monitor__internet_measurements_log_delivery__s3_config = {
  bucket_name : string;  (** bucket_name *)
  bucket_prefix : string option; [@option]  (** bucket_prefix *)
  log_delivery_status : string option; [@option]
      (** log_delivery_status *)
}
[@@deriving yojson_of]
(** aws_internetmonitor_monitor__internet_measurements_log_delivery__s3_config *)

type aws_internetmonitor_monitor__internet_measurements_log_delivery = {
  s3_config :
    aws_internetmonitor_monitor__internet_measurements_log_delivery__s3_config
    list;
}
[@@deriving yojson_of]
(** aws_internetmonitor_monitor__internet_measurements_log_delivery *)

type aws_internetmonitor_monitor = {
  id : string option; [@option]  (** id *)
  max_city_networks_to_monitor : float option; [@option]
      (** max_city_networks_to_monitor *)
  monitor_name : string;  (** monitor_name *)
  resources : string list option; [@option]  (** resources *)
  status : string option; [@option]  (** status *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  traffic_percentage_to_monitor : float option; [@option]
      (** traffic_percentage_to_monitor *)
  health_events_config :
    aws_internetmonitor_monitor__health_events_config list;
  internet_measurements_log_delivery :
    aws_internetmonitor_monitor__internet_measurements_log_delivery
    list;
}
[@@deriving yojson_of]
(** aws_internetmonitor_monitor *)

let aws_internetmonitor_monitor ?id ?max_city_networks_to_monitor
    ?resources ?status ?tags ?tags_all ?traffic_percentage_to_monitor
    ~monitor_name ~health_events_config
    ~internet_measurements_log_delivery __resource_id =
  let __resource_type = "aws_internetmonitor_monitor" in
  let __resource =
    {
      id;
      max_city_networks_to_monitor;
      monitor_name;
      resources;
      status;
      tags;
      tags_all;
      traffic_percentage_to_monitor;
      health_events_config;
      internet_measurements_log_delivery;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_internetmonitor_monitor __resource);
  ()
