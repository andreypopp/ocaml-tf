(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_monitoring_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_monitoring_group__timeouts *)

type google_monitoring_group = {
  display_name : string;
      (** A user-assigned name for this group, used only for display
purposes. *)
  filter : string;
      (** The filter used to determine which monitored resources
belong to this group. *)
  is_cluster : bool option; [@option]
      (** If true, the members of this group are considered to be a
cluster. The system can perform additional analysis on
groups that are clusters. *)
  parent_name : string option; [@option]
      (** The name of the group's parent, if it has one. The format is
projects/{project_id_or_number}/groups/{group_id}. For
groups with no parent, parentName is the empty string, . *)
  timeouts : google_monitoring_group__timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_group *)

let google_monitoring_group ?is_cluster ?parent_name ?timeouts
    ~display_name ~filter __resource_id =
  let __resource_type = "google_monitoring_group" in
  let __resource =
    { display_name; filter; is_cluster; parent_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_group __resource);
  ()
