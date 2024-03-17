(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_access_context_manager_access_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_access_context_manager_access_policy__timeouts *)

type google_access_context_manager_access_policy = {
  id : string prop option; [@option]  (** id *)
  parent : string prop;
      (** The parent of this AccessPolicy in the Cloud Resource Hierarchy.
Format: organizations/{organization_id} *)
  scopes : string prop list option; [@option]
      (** Folder or project on which this policy is applicable.
Format: folders/{{folder_id}} or projects/{{project_id}} *)
  title : string prop;
      (** Human readable title. Does not affect behavior. *)
  timeouts :
    google_access_context_manager_access_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_access_policy *)

let google_access_context_manager_access_policy ?id ?scopes ?timeouts
    ~parent ~title __resource_id =
  let __resource_type =
    "google_access_context_manager_access_policy"
  in
  let __resource = { id; parent; scopes; title; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_access_policy __resource);
  ()
