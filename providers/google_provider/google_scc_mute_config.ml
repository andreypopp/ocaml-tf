(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_scc_mute_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_scc_mute_config__timeouts *)

type google_scc_mute_config = {
  description : string option; [@option]
      (** A description of the mute config. *)
  filter : string;
      (** An expression that defines the filter to apply across create/update
events of findings. While creating a filter string, be mindful of
the scope in which the mute configuration is being created. E.g.,
If a filter contains project = X but is created under the
project = Y scope, it might not match any findings. *)
  mute_config_id : string;
      (** Unique identifier provided by the client within the parent scope. *)
  parent : string;
      (** Resource name of the new mute configs's parent. Its format is
organizations/[organization_id], folders/[folder_id], or
projects/[project_id]. *)
  timeouts : google_scc_mute_config__timeouts option;
}
[@@deriving yojson_of]
(** google_scc_mute_config *)

let google_scc_mute_config ?description ?timeouts ~filter
    ~mute_config_id ~parent __resource_id =
  let __resource_type = "google_scc_mute_config" in
  let __resource =
    { description; filter; mute_config_id; parent; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_scc_mute_config __resource);
  ()
