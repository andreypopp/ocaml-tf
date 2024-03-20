(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type validator = {
  content : string prop option; [@option]
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
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : validator -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validator

[@@@deriving.end]

type aws_appconfig_configuration_profile = {
  application_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_identifier : string prop option; [@option]
  location_uri : string prop;
  name : string prop;
  retrieval_role_arn : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  validator : validator list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appconfig_configuration_profile) -> ()

let yojson_of_aws_appconfig_configuration_profile =
  (function
   | {
       application_id = v_application_id;
       description = v_description;
       id = v_id;
       kms_key_identifier = v_kms_key_identifier;
       location_uri = v_location_uri;
       name = v_name;
       retrieval_role_arn = v_retrieval_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       validator = v_validator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_validator v_validator in
         ("validator", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retrieval_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retrieval_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location_uri in
         ("location_uri", arg) :: bnds
       in
       let bnds =
         match v_kms_key_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_identifier", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
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

let validator ?content ~type_ () : validator = { content; type_ }

let aws_appconfig_configuration_profile ?description ?id
    ?kms_key_identifier ?retrieval_role_arn ?tags ?tags_all ?type_
    ~application_id ~location_uri ~name ~validator () :
    aws_appconfig_configuration_profile =
  {
    application_id;
    description;
    id;
    kms_key_identifier;
    location_uri;
    name;
    retrieval_role_arn;
    tags;
    tags_all;
    type_;
    validator;
  }

type t = {
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  description : string prop;
  id : string prop;
  kms_key_identifier : string prop;
  location_uri : string prop;
  name : string prop;
  retrieval_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?description ?id ?kms_key_identifier ?retrieval_role_arn
    ?tags ?tags_all ?type_ ~application_id ~location_uri ~name
    ~validator __id =
  let __type = "aws_appconfig_configuration_profile" in
  let __attrs =
    ({
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
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_configuration_profile
        (aws_appconfig_configuration_profile ?description ?id
           ?kms_key_identifier ?retrieval_role_arn ?tags ?tags_all
           ?type_ ~application_id ~location_uri ~name ~validator ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kms_key_identifier
    ?retrieval_role_arn ?tags ?tags_all ?type_ ~application_id
    ~location_uri ~name ~validator __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kms_key_identifier ?retrieval_role_arn
      ?tags ?tags_all ?type_ ~application_id ~location_uri ~name
      ~validator __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
