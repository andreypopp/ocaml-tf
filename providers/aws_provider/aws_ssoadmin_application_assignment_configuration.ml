(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ssoadmin_application_assignment_configuration = {
  application_arn : string;  (** application_arn *)
  assignment_required : bool;  (** assignment_required *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_application_assignment_configuration *)

let aws_ssoadmin_application_assignment_configuration
    ~application_arn ~assignment_required __resource_id =
  let __resource_type =
    "aws_ssoadmin_application_assignment_configuration"
  in
  let __resource = { application_arn; assignment_required } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_application_assignment_configuration
       __resource);
  ()
