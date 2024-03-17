(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_monitoring_custom_service__telemetry = {
  resource_name : string option; [@option]
      (** The full name of the resource that defines this service.
Formatted as described in
https://cloud.google.com/apis/design/resource_names. *)
}
[@@deriving yojson_of]
(** Configuration for how to query telemetry on a Service. *)

type google_monitoring_custom_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_monitoring_custom_service__timeouts *)

type google_monitoring_custom_service = {
  display_name : string option; [@option]
      (** Name used for UI elements listing this Service. *)
  id : string option; [@option]  (** id *)
  project : string option; [@option]  (** project *)
  service_id : string option; [@option]
      (** An optional service ID to use. If not given, the server will generate a
service ID. *)
  user_labels : (string * string) list option; [@option]
      (** Labels which have been used to annotate the service. Label keys must start
with a letter. Label keys and values may contain lowercase letters,
numbers, underscores, and dashes. Label keys and values have a maximum
length of 63 characters, and must be less than 128 bytes in size. Up to 64
label entries may be stored. For labels which do not have a semantic value,
the empty string may be supplied for the label value. *)
  telemetry : google_monitoring_custom_service__telemetry list;
  timeouts : google_monitoring_custom_service__timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_custom_service *)

let google_monitoring_custom_service ?display_name ?id ?project
    ?service_id ?user_labels ?timeouts ~telemetry __resource_id =
  let __resource_type = "google_monitoring_custom_service" in
  let __resource =
    {
      display_name;
      id;
      project;
      service_id;
      user_labels;
      telemetry;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_custom_service __resource);
  ()
