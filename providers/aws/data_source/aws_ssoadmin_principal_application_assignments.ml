(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type application_assignments = unit [@@deriving_inline yojson_of]

let _ = fun (_ : application_assignments) -> ()

let yojson_of_application_assignments =
  (yojson_of_unit
    : application_assignments -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_assignments

[@@@deriving.end]

type aws_ssoadmin_principal_application_assignments = {
  instance_arn : string prop;
  principal_id : string prop;
  principal_type : string prop;
  application_assignments : application_assignments list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_ssoadmin_principal_application_assignments) -> ()

let yojson_of_aws_ssoadmin_principal_application_assignments =
  (function
   | {
       instance_arn = v_instance_arn;
       principal_id = v_principal_id;
       principal_type = v_principal_type;
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
           yojson_of_prop yojson_of_string v_principal_type
         in
         ("principal_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_arn in
         ("instance_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssoadmin_principal_application_assignments ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_principal_application_assignments

[@@@deriving.end]

let application_assignments () = ()

let aws_ssoadmin_principal_application_assignments ~instance_arn
    ~principal_id ~principal_type ~application_assignments () :
    aws_ssoadmin_principal_application_assignments =
  {
    instance_arn;
    principal_id;
    principal_type;
    application_assignments;
  }

type t = {
  id : string prop;
  instance_arn : string prop;
  principal_id : string prop;
  principal_type : string prop;
}

let make ~instance_arn ~principal_id ~principal_type
    ~application_assignments __id =
  let __type = "aws_ssoadmin_principal_application_assignments" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_arn = Prop.computed __type __id "instance_arn";
       principal_id = Prop.computed __type __id "principal_id";
       principal_type = Prop.computed __type __id "principal_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_principal_application_assignments
        (aws_ssoadmin_principal_application_assignments ~instance_arn
           ~principal_id ~principal_type ~application_assignments ());
    attrs = __attrs;
  }

let register ?tf_module ~instance_arn ~principal_id ~principal_type
    ~application_assignments __id =
  let (r : _ Tf_core.resource) =
    make ~instance_arn ~principal_id ~principal_type
      ~application_assignments __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
