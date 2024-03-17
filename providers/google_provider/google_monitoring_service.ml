(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_monitoring_service__basic_service = {
  service_labels : (string * string) list option; [@option]
      (** Labels that specify the resource that emits the monitoring data
which is used for SLO reporting of this 'Service'. *)
  service_type : string option; [@option]
      (** The type of service that this basic service defines, e.g.
APP_ENGINE service type *)
}
[@@deriving yojson_of]
(** A well-known service type, defined by its service type and service labels.
Valid values of service types and services labels are described at
https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli *)

type google_monitoring_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_monitoring_service__timeouts *)

type google_monitoring_service__telemetry = {
  resource_name : string;  (** resource_name *)
}
[@@deriving yojson_of]

type google_monitoring_service = {
  display_name : string option; [@option]
      (** Name used for UI elements listing this Service. *)
  id : string option; [@option]  (** id *)
  project : string option; [@option]  (** project *)
  service_id : string;
      (** An optional service ID to use. If not given, the server will generate a
service ID. *)
  user_labels : (string * string) list option; [@option]
      (** Labels which have been used to annotate the service. Label keys must start
with a letter. Label keys and values may contain lowercase letters,
numbers, underscores, and dashes. Label keys and values have a maximum
length of 63 characters, and must be less than 128 bytes in size. Up to 64
label entries may be stored. For labels which do not have a semantic value,
the empty string may be supplied for the label value. *)
  basic_service : google_monitoring_service__basic_service list;
  timeouts : google_monitoring_service__timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_service *)

let google_monitoring_service ?display_name ?id ?project ?user_labels
    ?timeouts ~service_id ~basic_service __resource_id =
  let __resource_type = "google_monitoring_service" in
  let __resource =
    {
      display_name;
      id;
      project;
      service_id;
      user_labels;
      basic_service;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_service __resource);
  ()
