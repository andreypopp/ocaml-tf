(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type health_events_config = {
  availability_score_threshold : float prop option; [@option]
      (** availability_score_threshold *)
  performance_score_threshold : float prop option; [@option]
      (** performance_score_threshold *)
}
[@@deriving yojson_of]
(** health_events_config *)

type internet_measurements_log_delivery__s3_config = {
  bucket_name : string prop;  (** bucket_name *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  log_delivery_status : string prop option; [@option]
      (** log_delivery_status *)
}
[@@deriving yojson_of]
(** internet_measurements_log_delivery__s3_config *)

type internet_measurements_log_delivery = {
  s3_config : internet_measurements_log_delivery__s3_config list;
}
[@@deriving yojson_of]
(** internet_measurements_log_delivery *)

type aws_internetmonitor_monitor = {
  id : string prop option; [@option]  (** id *)
  max_city_networks_to_monitor : float prop option; [@option]
      (** max_city_networks_to_monitor *)
  monitor_name : string prop;  (** monitor_name *)
  resources : string prop list option; [@option]  (** resources *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  traffic_percentage_to_monitor : float prop option; [@option]
      (** traffic_percentage_to_monitor *)
  health_events_config : health_events_config list;
  internet_measurements_log_delivery :
    internet_measurements_log_delivery list;
}
[@@deriving yojson_of]
(** aws_internetmonitor_monitor *)

let health_events_config ?availability_score_threshold
    ?performance_score_threshold () : health_events_config =
  { availability_score_threshold; performance_score_threshold }

let internet_measurements_log_delivery__s3_config ?bucket_prefix
    ?log_delivery_status ~bucket_name () :
    internet_measurements_log_delivery__s3_config =
  { bucket_name; bucket_prefix; log_delivery_status }

let internet_measurements_log_delivery ~s3_config () :
    internet_measurements_log_delivery =
  { s3_config }

let aws_internetmonitor_monitor ?id ?max_city_networks_to_monitor
    ?resources ?status ?tags ?tags_all ?traffic_percentage_to_monitor
    ~monitor_name ~health_events_config
    ~internet_measurements_log_delivery () :
    aws_internetmonitor_monitor =
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

type t = {
  arn : string prop;
  id : string prop;
  max_city_networks_to_monitor : float prop;
  monitor_name : string prop;
  resources : string list prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  traffic_percentage_to_monitor : float prop;
}

let register ?tf_module ?id ?max_city_networks_to_monitor ?resources
    ?status ?tags ?tags_all ?traffic_percentage_to_monitor
    ~monitor_name ~health_events_config
    ~internet_measurements_log_delivery __resource_id =
  let __resource_type = "aws_internetmonitor_monitor" in
  let __resource =
    aws_internetmonitor_monitor ?id ?max_city_networks_to_monitor
      ?resources ?status ?tags ?tags_all
      ?traffic_percentage_to_monitor ~monitor_name
      ~health_events_config ~internet_measurements_log_delivery ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_internetmonitor_monitor __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       max_city_networks_to_monitor =
         Prop.computed __resource_type __resource_id
           "max_city_networks_to_monitor";
       monitor_name =
         Prop.computed __resource_type __resource_id "monitor_name";
       resources =
         Prop.computed __resource_type __resource_id "resources";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       traffic_percentage_to_monitor =
         Prop.computed __resource_type __resource_id
           "traffic_percentage_to_monitor";
     }
      : t)
  in
  __resource_attributes
