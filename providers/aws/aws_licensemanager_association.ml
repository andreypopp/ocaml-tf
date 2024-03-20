(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_licensemanager_association = {
  id : string prop option; [@option]
  license_configuration_arn : string prop;
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_licensemanager_association) -> ()

let yojson_of_aws_licensemanager_association =
  (function
   | {
       id = v_id;
       license_configuration_arn = v_license_configuration_arn;
       resource_arn = v_resource_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_license_configuration_arn
         in
         ("license_configuration_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_licensemanager_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_licensemanager_association

[@@@deriving.end]

let aws_licensemanager_association ?id ~license_configuration_arn
    ~resource_arn () : aws_licensemanager_association =
  { id; license_configuration_arn; resource_arn }

type t = {
  id : string prop;
  license_configuration_arn : string prop;
  resource_arn : string prop;
}

let make ?id ~license_configuration_arn ~resource_arn __id =
  let __type = "aws_licensemanager_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       license_configuration_arn =
         Prop.computed __type __id "license_configuration_arn";
       resource_arn = Prop.computed __type __id "resource_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_licensemanager_association
        (aws_licensemanager_association ?id
           ~license_configuration_arn ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~license_configuration_arn ~resource_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~license_configuration_arn ~resource_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
