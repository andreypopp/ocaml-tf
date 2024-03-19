(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_application_assignment_configuration = {
  application_arn : string prop;  (** application_arn *)
  assignment_required : bool prop;  (** assignment_required *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_application_assignment_configuration *)

let aws_ssoadmin_application_assignment_configuration
    ~application_arn ~assignment_required () :
    aws_ssoadmin_application_assignment_configuration =
  { application_arn; assignment_required }

type t = {
  application_arn : string prop;
  assignment_required : bool prop;
  id : string prop;
}

let register ?tf_module ~application_arn ~assignment_required
    __resource_id =
  let __resource_type =
    "aws_ssoadmin_application_assignment_configuration"
  in
  let __resource =
    aws_ssoadmin_application_assignment_configuration
      ~application_arn ~assignment_required ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_application_assignment_configuration
       __resource);
  let __resource_attributes =
    ({
       application_arn =
         Prop.computed __resource_type __resource_id
           "application_arn";
       assignment_required =
         Prop.computed __resource_type __resource_id
           "assignment_required";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
