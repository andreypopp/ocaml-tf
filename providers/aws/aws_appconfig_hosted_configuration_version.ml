(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appconfig_hosted_configuration_version = {
  application_id : string prop;
  configuration_profile_id : string prop;
  content : string prop;
  content_type : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appconfig_hosted_configuration_version) -> ()

let yojson_of_aws_appconfig_hosted_configuration_version =
  (function
   | {
       application_id = v_application_id;
       configuration_profile_id = v_configuration_profile_id;
       content = v_content;
       content_type = v_content_type;
       description = v_description;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
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
    : aws_appconfig_hosted_configuration_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appconfig_hosted_configuration_version

[@@@deriving.end]

let aws_appconfig_hosted_configuration_version ?description ?id
    ~application_id ~configuration_profile_id ~content ~content_type
    () : aws_appconfig_hosted_configuration_version =
  {
    application_id;
    configuration_profile_id;
    content;
    content_type;
    description;
    id;
  }

type t = {
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  content : string prop;
  content_type : string prop;
  description : string prop;
  id : string prop;
  version_number : float prop;
}

let make ?description ?id ~application_id ~configuration_profile_id
    ~content ~content_type __id =
  let __type = "aws_appconfig_hosted_configuration_version" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       configuration_profile_id =
         Prop.computed __type __id "configuration_profile_id";
       content = Prop.computed __type __id "content";
       content_type = Prop.computed __type __id "content_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       version_number = Prop.computed __type __id "version_number";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_hosted_configuration_version
        (aws_appconfig_hosted_configuration_version ?description ?id
           ~application_id ~configuration_profile_id ~content
           ~content_type ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~application_id
    ~configuration_profile_id ~content ~content_type __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~application_id ~configuration_profile_id
      ~content ~content_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
