(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ~application_arn ~assignment_required __id =
  let __type = "aws_ssoadmin_application_assignment_configuration" in
  let __attrs =
    ({
       application_arn = Prop.computed __type __id "application_arn";
       assignment_required =
         Prop.computed __type __id "assignment_required";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_application_assignment_configuration
        (aws_ssoadmin_application_assignment_configuration
           ~application_arn ~assignment_required ());
    attrs = __attrs;
  }

let register ?tf_module ~application_arn ~assignment_required __id =
  let (r : _ Tf_core.resource) =
    make ~application_arn ~assignment_required __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
