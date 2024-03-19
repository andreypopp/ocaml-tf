(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_organization_iam_custom_role = {
  description : string prop option; [@option]
      (** A human-readable description for the role. *)
  id : string prop option; [@option]  (** id *)
  org_id : string prop;
      (** The numeric ID of the organization in which you want to create a custom role. *)
  permissions : string prop list;
      (** The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified. *)
  role_id : string prop;  (** The role id to use for this role. *)
  stage : string prop option; [@option]
      (** The current launch stage of the role. Defaults to GA. *)
  title : string prop;  (** A human-readable title for the role. *)
}
[@@deriving yojson_of]
(** google_organization_iam_custom_role *)

let google_organization_iam_custom_role ?description ?id ?stage
    ~org_id ~permissions ~role_id ~title () :
    google_organization_iam_custom_role =
  { description; id; org_id; permissions; role_id; stage; title }

type t = {
  deleted : bool prop;
  description : string prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
  permissions : string list prop;
  role_id : string prop;
  stage : string prop;
  title : string prop;
}

let register ?tf_module ?description ?id ?stage ~org_id ~permissions
    ~role_id ~title __resource_id =
  let __resource_type = "google_organization_iam_custom_role" in
  let __resource =
    google_organization_iam_custom_role ?description ?id ?stage
      ~org_id ~permissions ~role_id ~title ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_organization_iam_custom_role __resource);
  let __resource_attributes =
    ({
       deleted =
         Prop.computed __resource_type __resource_id "deleted";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       org_id = Prop.computed __resource_type __resource_id "org_id";
       permissions =
         Prop.computed __resource_type __resource_id "permissions";
       role_id =
         Prop.computed __resource_type __resource_id "role_id";
       stage = Prop.computed __resource_type __resource_id "stage";
       title = Prop.computed __resource_type __resource_id "title";
     }
      : t)
  in
  __resource_attributes
