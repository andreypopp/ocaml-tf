(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_project_iam_custom_role = {
  description : string prop option; [@option]
      (** A human-readable description for the role. *)
  id : string prop option; [@option]  (** id *)
  permissions : string prop list;
      (** The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified. *)
  project : string prop option; [@option]
      (** The project that the service account will be created in. Defaults to the provider project configuration. *)
  role_id : string prop;
      (** The camel case role id to use for this role. Cannot contain - characters. *)
  stage : string prop option; [@option]
      (** The current launch stage of the role. Defaults to GA. *)
  title : string prop;  (** A human-readable title for the role. *)
}
[@@deriving yojson_of]
(** google_project_iam_custom_role *)

let google_project_iam_custom_role ?description ?id ?project ?stage
    ~permissions ~role_id ~title () : google_project_iam_custom_role
    =
  { description; id; permissions; project; role_id; stage; title }

type t = {
  deleted : bool prop;
  description : string prop;
  id : string prop;
  name : string prop;
  permissions : string list prop;
  project : string prop;
  role_id : string prop;
  stage : string prop;
  title : string prop;
}

let register ?tf_module ?description ?id ?project ?stage ~permissions
    ~role_id ~title __resource_id =
  let __resource_type = "google_project_iam_custom_role" in
  let __resource =
    google_project_iam_custom_role ?description ?id ?project ?stage
      ~permissions ~role_id ~title ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_project_iam_custom_role __resource);
  let __resource_attributes =
    ({
       deleted =
         Prop.computed __resource_type __resource_id "deleted";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       permissions =
         Prop.computed __resource_type __resource_id "permissions";
       project =
         Prop.computed __resource_type __resource_id "project";
       role_id =
         Prop.computed __resource_type __resource_id "role_id";
       stage = Prop.computed __resource_type __resource_id "stage";
       title = Prop.computed __resource_type __resource_id "title";
     }
      : t)
  in
  __resource_attributes
