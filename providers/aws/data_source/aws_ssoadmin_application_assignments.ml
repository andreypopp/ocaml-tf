(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type application_assignments = unit [@@deriving_inline yojson_of]

let _ = fun (_ : application_assignments) -> ()

let yojson_of_application_assignments =
  (yojson_of_unit
    : application_assignments -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_assignments

[@@@deriving.end]

type aws_ssoadmin_application_assignments = {
  application_arn : string prop;
  application_assignments : application_assignments list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_application_assignments) -> ()

let yojson_of_aws_ssoadmin_application_assignments =
  (function
   | {
       application_arn = v_application_arn;
       application_assignments = v_application_assignments;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_application_assignments
             v_application_assignments
         in
         ("application_assignments", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_arn
         in
         ("application_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssoadmin_application_assignments ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_application_assignments

[@@@deriving.end]

let application_assignments () = ()

let aws_ssoadmin_application_assignments
    ?(application_assignments = []) ~application_arn () :
    aws_ssoadmin_application_assignments =
  { application_arn; application_assignments }

type t = {
  tf_name : string;
  application_arn : string prop;
  id : string prop;
}

let make ?(application_assignments = []) ~application_arn __id =
  let __type = "aws_ssoadmin_application_assignments" in
  let __attrs =
    ({
       tf_name = __id;
       application_arn = Prop.computed __type __id "application_arn";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_application_assignments
        (aws_ssoadmin_application_assignments
           ~application_assignments ~application_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?(application_assignments = [])
    ~application_arn __id =
  let (r : _ Tf_core.resource) =
    make ~application_assignments ~application_arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
