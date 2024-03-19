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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_access_policy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_access_policy ?id ?scopes ?timeouts
    ~parent ~title () : google_access_context_manager_access_policy =
  { id; parent; scopes; title; timeouts }

type t = {
  create_time : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  scopes : string list prop;
  title : string prop;
  update_time : string prop;
}

let register ?tf_module ?id ?scopes ?timeouts ~parent ~title
    __resource_id =
  let __resource_type =
    "google_access_context_manager_access_policy"
  in
  let __resource =
    google_access_context_manager_access_policy ?id ?scopes ?timeouts
      ~parent ~title ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_access_policy __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       scopes = Prop.computed __resource_type __resource_id "scopes";
       title = Prop.computed __resource_type __resource_id "title";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
