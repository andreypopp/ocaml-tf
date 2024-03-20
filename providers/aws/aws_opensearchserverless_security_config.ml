(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type saml_options = {
  group_attribute : string prop option; [@option]
  metadata : string prop;
  session_timeout : float prop option; [@option]
  user_attribute : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saml_options) -> ()

let yojson_of_saml_options =
  (function
   | {
       group_attribute = v_group_attribute;
       metadata = v_metadata;
       session_timeout = v_session_timeout;
       user_attribute = v_user_attribute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_attribute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_attribute", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metadata in
         ("metadata", arg) :: bnds
       in
       let bnds =
         match v_group_attribute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_attribute", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : saml_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saml_options

[@@@deriving.end]

type aws_opensearchserverless_security_config = {
  description : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
  saml_options : saml_options;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearchserverless_security_config) -> ()

let yojson_of_aws_opensearchserverless_security_config =
  (function
   | {
       description = v_description;
       name = v_name;
       type_ = v_type_;
       saml_options = v_saml_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_saml_options v_saml_options in
         ("saml_options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_opensearchserverless_security_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearchserverless_security_config

[@@@deriving.end]

let saml_options ?group_attribute ?session_timeout ?user_attribute
    ~metadata () : saml_options =
  { group_attribute; metadata; session_timeout; user_attribute }

let aws_opensearchserverless_security_config ?description ~name
    ~type_ ~saml_options () :
    aws_opensearchserverless_security_config =
  { description; name; type_; saml_options }

type t = {
  config_version : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let make ?description ~name ~type_ ~saml_options __id =
  let __type = "aws_opensearchserverless_security_config" in
  let __attrs =
    ({
       config_version = Prop.computed __type __id "config_version";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearchserverless_security_config
        (aws_opensearchserverless_security_config ?description ~name
           ~type_ ~saml_options ());
    attrs = __attrs;
  }

let register ?tf_module ?description ~name ~type_ ~saml_options __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ~name ~type_ ~saml_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
