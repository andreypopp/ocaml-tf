(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_licensemanager_grant = {
  allowed_operations : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  id : string prop option; [@option]
  license_arn : string prop;
  name : string prop;
  principal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_licensemanager_grant) -> ()

let yojson_of_aws_licensemanager_grant =
  (function
   | {
       allowed_operations = v_allowed_operations;
       id = v_id;
       license_arn = v_license_arn;
       name = v_name;
       principal = v_principal;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_license_arn in
         ("license_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_allowed_operations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_operations
           in
           let bnd = "allowed_operations", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_licensemanager_grant -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_licensemanager_grant

[@@@deriving.end]

let aws_licensemanager_grant ?id ~allowed_operations ~license_arn
    ~name ~principal () : aws_licensemanager_grant =
  { allowed_operations; id; license_arn; name; principal }

type t = {
  tf_name : string;
  allowed_operations : string list prop;
  arn : string prop;
  home_region : string prop;
  id : string prop;
  license_arn : string prop;
  name : string prop;
  parent_arn : string prop;
  principal : string prop;
  status : string prop;
  version : string prop;
}

let make ?id ~allowed_operations ~license_arn ~name ~principal __id =
  let __type = "aws_licensemanager_grant" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_operations =
         Prop.computed __type __id "allowed_operations";
       arn = Prop.computed __type __id "arn";
       home_region = Prop.computed __type __id "home_region";
       id = Prop.computed __type __id "id";
       license_arn = Prop.computed __type __id "license_arn";
       name = Prop.computed __type __id "name";
       parent_arn = Prop.computed __type __id "parent_arn";
       principal = Prop.computed __type __id "principal";
       status = Prop.computed __type __id "status";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_licensemanager_grant
        (aws_licensemanager_grant ?id ~allowed_operations
           ~license_arn ~name ~principal ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~allowed_operations ~license_arn ~name
    ~principal __id =
  let (r : _ Tf_core.resource) =
    make ?id ~allowed_operations ~license_arn ~name ~principal __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
