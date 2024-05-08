(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type application_providers__display_data = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : application_providers__display_data) -> ()

let yojson_of_application_providers__display_data =
  (yojson_of_unit
    : application_providers__display_data ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_providers__display_data

[@@@deriving.end]

type application_providers = {
  display_data : application_providers__display_data list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : application_providers) -> ()

let yojson_of_application_providers =
  (function
   | { display_data = v_display_data } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_display_data then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_application_providers__display_data)
               v_display_data
           in
           let bnd = "display_data", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : application_providers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_providers

[@@@deriving.end]

type aws_ssoadmin_application_providers = {
  application_providers : application_providers list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_application_providers) -> ()

let yojson_of_aws_ssoadmin_application_providers =
  (function
   | { application_providers = v_application_providers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_application_providers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_application_providers)
               v_application_providers
           in
           let bnd = "application_providers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_ssoadmin_application_providers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_application_providers

[@@@deriving.end]

let application_providers__display_data () = ()

let application_providers ?(display_data = []) () :
    application_providers =
  { display_data }

let aws_ssoadmin_application_providers ?(application_providers = [])
    () : aws_ssoadmin_application_providers =
  { application_providers }

type t = { tf_name : string; id : string prop }

let make ?(application_providers = []) __id =
  let __type = "aws_ssoadmin_application_providers" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_application_providers
        (aws_ssoadmin_application_providers ~application_providers ());
    attrs = __attrs;
  }

let register ?tf_module ?(application_providers = []) __id =
  let (r : _ Tf_core.resource) = make ~application_providers __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
