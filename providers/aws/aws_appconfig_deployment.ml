(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appconfig_deployment = {
  application_id : string prop;
  configuration_profile_id : string prop;
  configuration_version : string prop;
  deployment_strategy_id : string prop;
  description : string prop option; [@option]
  environment_id : string prop;
  id : string prop option; [@option]
  kms_key_identifier : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appconfig_deployment) -> ()

let yojson_of_aws_appconfig_deployment =
  (function
   | {
       application_id = v_application_id;
       configuration_profile_id = v_configuration_profile_id;
       configuration_version = v_configuration_version;
       deployment_strategy_id = v_deployment_strategy_id;
       description = v_description;
       environment_id = v_environment_id;
       id = v_id;
       kms_key_identifier = v_kms_key_identifier;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           yojson_of_prop yojson_of_string v_environment_id
         in
         ("environment_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_deployment_strategy_id
         in
         ("deployment_strategy_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_configuration_version
         in
         ("configuration_version", arg) :: bnds
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
    : aws_appconfig_deployment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appconfig_deployment

[@@@deriving.end]

let aws_appconfig_deployment ?description ?id ?kms_key_identifier
    ?tags ?tags_all ~application_id ~configuration_profile_id
    ~configuration_version ~deployment_strategy_id ~environment_id ()
    : aws_appconfig_deployment =
  {
    application_id;
    configuration_profile_id;
    configuration_version;
    deployment_strategy_id;
    description;
    environment_id;
    id;
    kms_key_identifier;
    tags;
    tags_all;
  }

type t = {
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  configuration_version : string prop;
  deployment_number : float prop;
  deployment_strategy_id : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  kms_key_arn : string prop;
  kms_key_identifier : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?kms_key_identifier ?tags ?tags_all
    ~application_id ~configuration_profile_id ~configuration_version
    ~deployment_strategy_id ~environment_id __id =
  let __type = "aws_appconfig_deployment" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       configuration_profile_id =
         Prop.computed __type __id "configuration_profile_id";
       configuration_version =
         Prop.computed __type __id "configuration_version";
       deployment_number =
         Prop.computed __type __id "deployment_number";
       deployment_strategy_id =
         Prop.computed __type __id "deployment_strategy_id";
       description = Prop.computed __type __id "description";
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       kms_key_identifier =
         Prop.computed __type __id "kms_key_identifier";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_deployment
        (aws_appconfig_deployment ?description ?id
           ?kms_key_identifier ?tags ?tags_all ~application_id
           ~configuration_profile_id ~configuration_version
           ~deployment_strategy_id ~environment_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kms_key_identifier ?tags
    ?tags_all ~application_id ~configuration_profile_id
    ~configuration_version ~deployment_strategy_id ~environment_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kms_key_identifier ?tags ?tags_all
      ~application_id ~configuration_profile_id
      ~configuration_version ~deployment_strategy_id ~environment_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
