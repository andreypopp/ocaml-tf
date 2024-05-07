(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type saml_options = unit [@@deriving_inline yojson_of]

let _ = fun (_ : saml_options) -> ()

let yojson_of_saml_options =
  (yojson_of_unit
    : saml_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saml_options

[@@@deriving.end]

type aws_opensearchserverless_security_config = {
  id : string prop;
  saml_options : saml_options;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearchserverless_security_config) -> ()

let yojson_of_aws_opensearchserverless_security_config =
  (function
   | { id = v_id; saml_options = v_saml_options } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_saml_options v_saml_options in
         ("saml_options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_opensearchserverless_security_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearchserverless_security_config

[@@@deriving.end]

let saml_options () = ()

let aws_opensearchserverless_security_config ~id ~saml_options () :
    aws_opensearchserverless_security_config =
  { id; saml_options }

type t = {
  tf_name : string;
  config_version : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_modified_date : string prop;
  type_ : string prop;
}

let make ~id ~saml_options __id =
  let __type = "aws_opensearchserverless_security_config" in
  let __attrs =
    ({
       tf_name = __id;
       config_version = Prop.computed __type __id "config_version";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_modified_date =
         Prop.computed __type __id "last_modified_date";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearchserverless_security_config
        (aws_opensearchserverless_security_config ~id ~saml_options
           ());
    attrs = __attrs;
  }

let register ?tf_module ~id ~saml_options __id =
  let (r : _ Tf_core.resource) = make ~id ~saml_options __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
