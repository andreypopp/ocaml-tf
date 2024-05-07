(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssoadmin_application_assignment_configuration = {
  application_arn : string prop;
  assignment_required : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_ssoadmin_application_assignment_configuration) -> ()

let yojson_of_aws_ssoadmin_application_assignment_configuration =
  (function
   | {
       application_arn = v_application_arn;
       assignment_required = v_assignment_required;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_assignment_required
         in
         ("assignment_required", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_arn
         in
         ("application_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssoadmin_application_assignment_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_application_assignment_configuration

[@@@deriving.end]

let aws_ssoadmin_application_assignment_configuration
    ~application_arn ~assignment_required () :
    aws_ssoadmin_application_assignment_configuration =
  { application_arn; assignment_required }

type t = {
  tf_name : string;
  application_arn : string prop;
  assignment_required : bool prop;
  id : string prop;
}

let make ~application_arn ~assignment_required __id =
  let __type = "aws_ssoadmin_application_assignment_configuration" in
  let __attrs =
    ({
       tf_name = __id;
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
