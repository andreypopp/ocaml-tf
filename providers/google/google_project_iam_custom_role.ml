(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?project ?stage ~permissions ~role_id
    ~title __id =
  let __type = "google_project_iam_custom_role" in
  let __attrs =
    ({
       deleted = Prop.computed __type __id "deleted";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       permissions = Prop.computed __type __id "permissions";
       project = Prop.computed __type __id "project";
       role_id = Prop.computed __type __id "role_id";
       stage = Prop.computed __type __id "stage";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_iam_custom_role
        (google_project_iam_custom_role ?description ?id ?project
           ?stage ~permissions ~role_id ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?stage ~permissions
    ~role_id ~title __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?stage ~permissions ~role_id
      ~title __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
