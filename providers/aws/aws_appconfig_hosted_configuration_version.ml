(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appconfig_hosted_configuration_version = {
  application_id : string prop;  (** application_id *)
  configuration_profile_id : string prop;
      (** configuration_profile_id *)
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appconfig_hosted_configuration_version *)

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
