(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appconfig_extension_association = {
  extension_arn : string prop;
  id : string prop option; [@option]
  parameters : (string * string prop) list option; [@option]
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appconfig_extension_association) -> ()

let yojson_of_aws_appconfig_extension_association =
  (function
   | {
       extension_arn = v_extension_arn;
       id = v_id;
       parameters = v_parameters;
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
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_extension_arn in
         ("extension_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_appconfig_extension_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appconfig_extension_association

[@@@deriving.end]

let aws_appconfig_extension_association ?id ?parameters
    ~extension_arn ~resource_arn () :
    aws_appconfig_extension_association =
  { extension_arn; id; parameters; resource_arn }

type t = {
  tf_name : string;
  arn : string prop;
  extension_arn : string prop;
  extension_version : float prop;
  id : string prop;
  parameters : (string * string) list prop;
  resource_arn : string prop;
}

let make ?id ?parameters ~extension_arn ~resource_arn __id =
  let __type = "aws_appconfig_extension_association" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       extension_arn = Prop.computed __type __id "extension_arn";
       extension_version =
         Prop.computed __type __id "extension_version";
       id = Prop.computed __type __id "id";
       parameters = Prop.computed __type __id "parameters";
       resource_arn = Prop.computed __type __id "resource_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_extension_association
        (aws_appconfig_extension_association ?id ?parameters
           ~extension_arn ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parameters ~extension_arn ~resource_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parameters ~extension_arn ~resource_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
