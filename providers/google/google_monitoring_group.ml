(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_monitoring_group = {
  display_name : string prop;
      (** A user-assigned name for this group, used only for display
purposes. *)
  filter : string prop;
      (** The filter used to determine which monitored resources
belong to this group. *)
  id : string prop option; [@option]  (** id *)
  is_cluster : bool prop option; [@option]
      (** If true, the members of this group are considered to be a
cluster. The system can perform additional analysis on
groups that are clusters. *)
  parent_name : string prop option; [@option]
      (** The name of the group's parent, if it has one. The format is
projects/{project_id_or_number}/groups/{group_id}. For
groups with no parent, parentName is the empty string, . *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_group *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_monitoring_group ?id ?is_cluster ?parent_name ?project
    ?timeouts ~display_name ~filter () : google_monitoring_group =
  {
    display_name;
    filter;
    id;
    is_cluster;
    parent_name;
    project;
    timeouts;
  }

type t = {
  display_name : string prop;
  filter : string prop;
  id : string prop;
  is_cluster : bool prop;
  name : string prop;
  parent_name : string prop;
  project : string prop;
}

let make ?id ?is_cluster ?parent_name ?project ?timeouts
    ~display_name ~filter __id =
  let __type = "google_monitoring_group" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       is_cluster = Prop.computed __type __id "is_cluster";
       name = Prop.computed __type __id "name";
       parent_name = Prop.computed __type __id "parent_name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_group
        (google_monitoring_group ?id ?is_cluster ?parent_name
           ?project ?timeouts ~display_name ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_cluster ?parent_name ?project
    ?timeouts ~display_name ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_cluster ?parent_name ?project ?timeouts
      ~display_name ~filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
