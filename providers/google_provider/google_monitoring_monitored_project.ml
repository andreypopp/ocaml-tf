(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_monitoring_monitored_project__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_monitoring_monitored_project__timeouts *)

type google_monitoring_monitored_project = {
  id : string prop option; [@option]  (** id *)
  metrics_scope : string prop;
      (** Required. The resource name of the existing Metrics Scope that will monitor this project. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER} *)
  name : string prop;
      (** Immutable. The resource name of the 'MonitoredProject'. On input, the resource name includes the scoping project ID and monitored project ID. On output, it contains the equivalent project numbers. Example: 'locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}' *)
  timeouts : google_monitoring_monitored_project__timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_monitored_project *)

type t = {
  create_time : string prop;
  id : string prop;
  metrics_scope : string prop;
  name : string prop;
}

let google_monitoring_monitored_project ?id ?timeouts ~metrics_scope
    ~name __resource_id =
  let __resource_type = "google_monitoring_monitored_project" in
  let __resource =
    ({ id; metrics_scope; name; timeouts }
      : google_monitoring_monitored_project)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_monitored_project __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       id = Prop.computed __resource_type __resource_id "id";
       metrics_scope =
         Prop.computed __resource_type __resource_id "metrics_scope";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
