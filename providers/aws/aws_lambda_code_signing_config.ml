(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type allowed_publishers = {
  signing_profile_version_arns : string prop list;
      (** signing_profile_version_arns *)
}
[@@deriving yojson_of]
(** allowed_publishers *)

type policies = {
  untrusted_artifact_on_deployment : string prop;
      (** untrusted_artifact_on_deployment *)
}
[@@deriving yojson_of]
(** policies *)

type aws_lambda_code_signing_config = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  allowed_publishers : allowed_publishers list;
  policies : policies list;
}
[@@deriving yojson_of]
(** aws_lambda_code_signing_config *)

let allowed_publishers ~signing_profile_version_arns () :
    allowed_publishers =
  { signing_profile_version_arns }

let policies ~untrusted_artifact_on_deployment () : policies =
  { untrusted_artifact_on_deployment }

let aws_lambda_code_signing_config ?description ?id
    ~allowed_publishers ~policies () : aws_lambda_code_signing_config
    =
  { description; id; allowed_publishers; policies }

type t = {
  arn : string prop;
  config_id : string prop;
  description : string prop;
  id : string prop;
  last_modified : string prop;
}

let make ?description ?id ~allowed_publishers ~policies __id =
  let __type = "aws_lambda_code_signing_config" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       config_id = Prop.computed __type __id "config_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_modified = Prop.computed __type __id "last_modified";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_code_signing_config
        (aws_lambda_code_signing_config ?description ?id
           ~allowed_publishers ~policies ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~allowed_publishers
    ~policies __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~allowed_publishers ~policies __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
