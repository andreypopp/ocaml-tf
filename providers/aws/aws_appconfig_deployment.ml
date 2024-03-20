(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appconfig_deployment = {
  application_id : string prop;  (** application_id *)
  configuration_profile_id : string prop;
      (** configuration_profile_id *)
  configuration_version : string prop;  (** configuration_version *)
  deployment_strategy_id : string prop;
      (** deployment_strategy_id *)
  description : string prop option; [@option]  (** description *)
  environment_id : string prop;  (** environment_id *)
  id : string prop option; [@option]  (** id *)
  kms_key_identifier : string prop option; [@option]
      (** kms_key_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_appconfig_deployment *)

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
