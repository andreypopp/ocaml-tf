(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssoadmin_application_assignment = {
  application_arn : string prop;
  principal_id : string prop;
  principal_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_application_assignment) -> ()

let yojson_of_aws_ssoadmin_application_assignment =
  (function
   | {
       application_arn = v_application_arn;
       principal_id = v_principal_id;
       principal_type = v_principal_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_principal_type
         in
         ("principal_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_arn
         in
         ("application_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssoadmin_application_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_application_assignment

[@@@deriving.end]

let aws_ssoadmin_application_assignment ~application_arn
    ~principal_id ~principal_type () :
    aws_ssoadmin_application_assignment =
  { application_arn; principal_id; principal_type }

type t = {
  tf_name : string;
  application_arn : string prop;
  id : string prop;
  principal_id : string prop;
  principal_type : string prop;
}

let make ~application_arn ~principal_id ~principal_type __id =
  let __type = "aws_ssoadmin_application_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       application_arn = Prop.computed __type __id "application_arn";
       id = Prop.computed __type __id "id";
       principal_id = Prop.computed __type __id "principal_id";
       principal_type = Prop.computed __type __id "principal_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_application_assignment
        (aws_ssoadmin_application_assignment ~application_arn
           ~principal_id ~principal_type ());
    attrs = __attrs;
  }

let register ?tf_module ~application_arn ~principal_id
    ~principal_type __id =
  let (r : _ Tf_core.resource) =
    make ~application_arn ~principal_id ~principal_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
