(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type portal_options__sign_in_options = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : portal_options__sign_in_options) -> ()

let yojson_of_portal_options__sign_in_options =
  (yojson_of_unit
    : portal_options__sign_in_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_portal_options__sign_in_options

[@@@deriving.end]

type portal_options = {
  sign_in_options : portal_options__sign_in_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : portal_options) -> ()

let yojson_of_portal_options =
  (function
   | { sign_in_options = v_sign_in_options } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_portal_options__sign_in_options
             v_sign_in_options
         in
         ("sign_in_options", arg) :: bnds
       in
       `Assoc bnds
    : portal_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_portal_options

[@@@deriving.end]

type aws_ssoadmin_application = {
  application_arn : string prop;
  portal_options : portal_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_application) -> ()

let yojson_of_aws_ssoadmin_application =
  (function
   | {
       application_arn = v_application_arn;
       portal_options = v_portal_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_portal_options v_portal_options
         in
         ("portal_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_arn
         in
         ("application_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssoadmin_application -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_application

[@@@deriving.end]

let portal_options__sign_in_options () = ()

let portal_options ?(sign_in_options = []) () : portal_options =
  { sign_in_options }

let aws_ssoadmin_application ?(portal_options = []) ~application_arn
    () : aws_ssoadmin_application =
  { application_arn; portal_options }

type t = {
  application_account : string prop;
  application_arn : string prop;
  application_provider_arn : string prop;
  description : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  status : string prop;
}

let make ?(portal_options = []) ~application_arn __id =
  let __type = "aws_ssoadmin_application" in
  let __attrs =
    ({
       application_account =
         Prop.computed __type __id "application_account";
       application_arn = Prop.computed __type __id "application_arn";
       application_provider_arn =
         Prop.computed __type __id "application_provider_arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_arn = Prop.computed __type __id "instance_arn";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_application
        (aws_ssoadmin_application ~portal_options ~application_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?(portal_options = []) ~application_arn __id
    =
  let (r : _ Tf_core.resource) =
    make ~portal_options ~application_arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
