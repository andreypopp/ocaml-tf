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

let register ?tf_module ?id ?is_cluster ?parent_name ?project
    ?timeouts ~display_name ~filter __resource_id =
  let __resource_type = "google_monitoring_group" in
  let __resource =
    google_monitoring_group ?id ?is_cluster ?parent_name ?project
      ?timeouts ~display_name ~filter ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_group __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       filter = Prop.computed __resource_type __resource_id "filter";
       id = Prop.computed __resource_type __resource_id "id";
       is_cluster =
         Prop.computed __resource_type __resource_id "is_cluster";
       name = Prop.computed __resource_type __resource_id "name";
       parent_name =
         Prop.computed __resource_type __resource_id "parent_name";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
