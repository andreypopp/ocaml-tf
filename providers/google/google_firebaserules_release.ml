(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_firebaserules_release = {
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore' *)
  project : string prop option; [@option]
      (** The project for the resource *)
  ruleset_name : string prop;
      (** Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_firebaserules_release *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_firebaserules_release ?id ?project ?timeouts ~name
    ~ruleset_name () : google_firebaserules_release =
  { id; name; project; ruleset_name; timeouts }

type t = {
  create_time : string prop;
  disabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  ruleset_name : string prop;
  update_time : string prop;
}

let register ?tf_module ?id ?project ?timeouts ~name ~ruleset_name
    __resource_id =
  let __resource_type = "google_firebaserules_release" in
  let __resource =
    google_firebaserules_release ?id ?project ?timeouts ~name
      ~ruleset_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebaserules_release __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       disabled =
         Prop.computed __resource_type __resource_id "disabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       ruleset_name =
         Prop.computed __resource_type __resource_id "ruleset_name";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
