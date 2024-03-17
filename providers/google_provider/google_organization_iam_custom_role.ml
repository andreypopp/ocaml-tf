(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_organization_iam_custom_role = {
  description : string option; [@option]
      (** A human-readable description for the role. *)
  id : string option; [@option]  (** id *)
  org_id : string;
      (** The numeric ID of the organization in which you want to create a custom role. *)
  permissions : string list;
      (** The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified. *)
  role_id : string;  (** The role id to use for this role. *)
  stage : string option; [@option]
      (** The current launch stage of the role. Defaults to GA. *)
  title : string;  (** A human-readable title for the role. *)
}
[@@deriving yojson_of]
(** google_organization_iam_custom_role *)

let google_organization_iam_custom_role ?description ?id ?stage
    ~org_id ~permissions ~role_id ~title __resource_id =
  let __resource_type = "google_organization_iam_custom_role" in
  let __resource =
    { description; id; org_id; permissions; role_id; stage; title }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_organization_iam_custom_role __resource);
  ()
