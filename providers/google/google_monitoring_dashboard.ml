(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?project ?timeouts ~dashboard_json __id =
  let __type = "google_monitoring_dashboard" in
  let __attrs =
    ({
       dashboard_json = Prop.computed __type __id "dashboard_json";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_dashboard
        (google_monitoring_dashboard ?id ?project ?timeouts
           ~dashboard_json ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~dashboard_json __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~dashboard_json __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
