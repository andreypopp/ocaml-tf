(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_monitoring_dashboard__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_monitoring_dashboard__timeouts *)

type google_monitoring_dashboard = {
  dashboard_json : string;
      (** The JSON representation of a dashboard, following the format at https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards. *)
  timeouts : google_monitoring_dashboard__timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_dashboard *)

let google_monitoring_dashboard ?timeouts ~dashboard_json
    __resource_id =
  let __resource_type = "google_monitoring_dashboard" in
  let __resource = { dashboard_json; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_dashboard __resource);
  ()
