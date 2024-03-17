(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_monitoring_monitored_project__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_monitoring_monitored_project__timeouts *)

type google_monitoring_monitored_project = {
  metrics_scope : string;
      (** Required. The resource name of the existing Metrics Scope that will monitor this project. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER} *)
  name : string;
      (** Immutable. The resource name of the 'MonitoredProject'. On input, the resource name includes the scoping project ID and monitored project ID. On output, it contains the equivalent project numbers. Example: 'locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}' *)
  timeouts : google_monitoring_monitored_project__timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_monitored_project *)

let google_monitoring_monitored_project ?timeouts ~metrics_scope
    ~name __resource_id =
  let __resource_type = "google_monitoring_monitored_project" in
  let __resource = { metrics_scope; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_monitored_project __resource);
  ()
