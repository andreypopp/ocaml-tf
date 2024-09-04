(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type validator = {
  content : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validator) -> ()

let yojson_of_validator =
  (function
   | { content = v_content; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : validator -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validator

[@@@deriving.end]

type aws_appconfig_configuration_profile = {
  application_id : string prop;
  configuration_profile_id : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appconfig_configuration_profile) -> ()

let yojson_of_aws_appconfig_configuration_profile =
  (function
   | {
       application_id = v_application_id;
       configuration_profile_id = v_configuration_profile_id;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_configuration_profile_id
         in
         ("configuration_profile_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_appconfig_configuration_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appconfig_configuration_profile

[@@@deriving.end]

let aws_appconfig_configuration_profile ?id ?tags ~application_id
    ~configuration_profile_id () :
    aws_appconfig_configuration_profile =
  { application_id; configuration_profile_id; id; tags }

type t = {
  tf_name : string;
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  description : string prop;
  id : string prop;
  kms_key_identifier : string prop;
  location_uri : string prop;
  name : string prop;
  retrieval_role_arn : string prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
  validator : validator list prop;
}

let make ?id ?tags ~application_id ~configuration_profile_id __id =
  let __type = "aws_appconfig_configuration_profile" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       configuration_profile_id =
         Prop.computed __type __id "configuration_profile_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key_identifier =
         Prop.computed __type __id "kms_key_identifier";
       location_uri = Prop.computed __type __id "location_uri";
       name = Prop.computed __type __id "name";
       retrieval_role_arn =
         Prop.computed __type __id "retrieval_role_arn";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       validator = Prop.computed __type __id "validator";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_configuration_profile
        (aws_appconfig_configuration_profile ?id ?tags
           ~application_id ~configuration_profile_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~application_id
    ~configuration_profile_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~application_id ~configuration_profile_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
