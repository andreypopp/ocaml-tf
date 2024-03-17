(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_application_access_scope = {
  application_arn : string prop;  (** application_arn *)
  authorized_targets : string prop list option; [@option]
      (** authorized_targets *)
  scope : string prop;  (** scope *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_application_access_scope *)

let aws_ssoadmin_application_access_scope ?authorized_targets
    ~application_arn ~scope __resource_id =
  let __resource_type = "aws_ssoadmin_application_access_scope" in
  let __resource = { application_arn; authorized_targets; scope } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_application_access_scope __resource);
  ()
