(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudcontrolapi_resource = {
  id : string prop option; [@option]
  identifier : string prop;
  role_arn : string prop option; [@option]
  type_name : string prop;
  type_version_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudcontrolapi_resource) -> ()

let yojson_of_aws_cloudcontrolapi_resource =
  (function
   | {
       id = v_id;
       identifier = v_identifier;
       role_arn = v_role_arn;
       type_name = v_type_name;
       type_version_id = v_type_version_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_version_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_version_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_name in
         ("type_name", arg) :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identifier in
         ("identifier", arg) :: bnds
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
    : aws_cloudcontrolapi_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudcontrolapi_resource

[@@@deriving.end]

let aws_cloudcontrolapi_resource ?id ?role_arn ?type_version_id
    ~identifier ~type_name () : aws_cloudcontrolapi_resource =
  { id; identifier; role_arn; type_name; type_version_id }

type t = {
  id : string prop;
  identifier : string prop;
  properties : string prop;
  role_arn : string prop;
  type_name : string prop;
  type_version_id : string prop;
}

let make ?id ?role_arn ?type_version_id ~identifier ~type_name __id =
  let __type = "aws_cloudcontrolapi_resource" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       properties = Prop.computed __type __id "properties";
       role_arn = Prop.computed __type __id "role_arn";
       type_name = Prop.computed __type __id "type_name";
       type_version_id = Prop.computed __type __id "type_version_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudcontrolapi_resource
        (aws_cloudcontrolapi_resource ?id ?role_arn ?type_version_id
           ~identifier ~type_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?role_arn ?type_version_id ~identifier
    ~type_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?role_arn ?type_version_id ~identifier ~type_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
