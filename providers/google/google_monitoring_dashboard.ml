(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_monitoring_dashboard = {
  dashboard_json : string prop;
      (** The JSON representation of a dashboard, following the format at https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_dashboard *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_monitoring_dashboard ?id ?project ?timeouts
    ~dashboard_json () : google_monitoring_dashboard =
  { dashboard_json; id; project; timeouts }

type t = {
  dashboard_json : string prop;
  id : string prop;
  project : string prop;
}

let register ?tf_module ?id ?project ?timeouts ~dashboard_json
    __resource_id =
  let __resource_type = "google_monitoring_dashboard" in
  let __resource =
    google_monitoring_dashboard ?id ?project ?timeouts
      ~dashboard_json ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_dashboard __resource);
  let __resource_attributes =
    ({
       dashboard_json =
         Prop.computed __resource_type __resource_id "dashboard_json";
       id = Prop.computed __resource_type __resource_id "id";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
