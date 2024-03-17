(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_project_iam_custom_role = {
  description : string option; [@option]
      (** A human-readable description for the role. *)
  permissions : string list;
      (** The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified. *)
  role_id : string;
      (** The camel case role id to use for this role. Cannot contain - characters. *)
  stage : string option; [@option]
      (** The current launch stage of the role. Defaults to GA. *)
  title : string;  (** A human-readable title for the role. *)
}
[@@deriving yojson_of]
(** google_project_iam_custom_role *)

let google_project_iam_custom_role ?description ?stage ~permissions
    ~role_id ~title __resource_id =
  let __resource_type = "google_project_iam_custom_role" in
  let __resource =
    { description; permissions; role_id; stage; title }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_project_iam_custom_role __resource);
  ()
