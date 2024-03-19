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

type google_scc_mute_config = {
  description : string prop option; [@option]
      (** A description of the mute config. *)
  filter : string prop;
      (** An expression that defines the filter to apply across create/update
events of findings. While creating a filter string, be mindful of
the scope in which the mute configuration is being created. E.g.,
If a filter contains project = X but is created under the
project = Y scope, it might not match any findings. *)
  id : string prop option; [@option]  (** id *)
  mute_config_id : string prop;
      (** Unique identifier provided by the client within the parent scope. *)
  parent : string prop;
      (** Resource name of the new mute configs's parent. Its format is
organizations/[organization_id], folders/[folder_id], or
projects/[project_id]. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_scc_mute_config *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_scc_mute_config ?description ?id ?timeouts ~filter
    ~mute_config_id ~parent () : google_scc_mute_config =
  { description; filter; id; mute_config_id; parent; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  filter : string prop;
  id : string prop;
  most_recent_editor : string prop;
  mute_config_id : string prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

let register ?tf_module ?description ?id ?timeouts ~filter
    ~mute_config_id ~parent __resource_id =
  let __resource_type = "google_scc_mute_config" in
  let __resource =
    google_scc_mute_config ?description ?id ?timeouts ~filter
      ~mute_config_id ~parent ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_scc_mute_config __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       filter = Prop.computed __resource_type __resource_id "filter";
       id = Prop.computed __resource_type __resource_id "id";
       most_recent_editor =
         Prop.computed __resource_type __resource_id
           "most_recent_editor";
       mute_config_id =
         Prop.computed __resource_type __resource_id "mute_config_id";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
