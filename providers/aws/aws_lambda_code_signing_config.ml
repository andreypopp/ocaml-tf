(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type allowed_publishers = {
  signing_profile_version_arns : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : allowed_publishers) -> ()

let yojson_of_allowed_publishers =
  (function
   | {
       signing_profile_version_arns = v_signing_profile_version_arns;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_signing_profile_version_arns
         in
         ("signing_profile_version_arns", arg) :: bnds
       in
       `Assoc bnds
    : allowed_publishers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_allowed_publishers

[@@@deriving.end]

type policies = { untrusted_artifact_on_deployment : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : policies) -> ()

let yojson_of_policies =
  (function
   | {
       untrusted_artifact_on_deployment =
         v_untrusted_artifact_on_deployment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_untrusted_artifact_on_deployment
         in
         ("untrusted_artifact_on_deployment", arg) :: bnds
       in
       `Assoc bnds
    : policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policies

[@@@deriving.end]

type aws_lambda_code_signing_config = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  allowed_publishers : allowed_publishers list;
  policies : policies list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_code_signing_config) -> ()

let yojson_of_aws_lambda_code_signing_config =
  (function
   | {
       description = v_description;
       id = v_id;
       allowed_publishers = v_allowed_publishers;
       policies = v_policies;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_policies v_policies in
         ("policies", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_allowed_publishers
             v_allowed_publishers
         in
         ("allowed_publishers", arg) :: bnds
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
       `Assoc bnds
    : aws_lambda_code_signing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_code_signing_config

[@@@deriving.end]

let allowed_publishers ~signing_profile_version_arns () :
    allowed_publishers =
  { signing_profile_version_arns }

let policies ~untrusted_artifact_on_deployment () : policies =
  { untrusted_artifact_on_deployment }

let aws_lambda_code_signing_config ?description ?id ?(policies = [])
    ~allowed_publishers () : aws_lambda_code_signing_config =
  { description; id; allowed_publishers; policies }

type t = {
  arn : string prop;
  config_id : string prop;
  description : string prop;
  id : string prop;
  last_modified : string prop;
}

let make ?description ?id ?(policies = []) ~allowed_publishers __id =
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
        (aws_lambda_code_signing_config ?description ?id ~policies
           ~allowed_publishers ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?(policies = [])
    ~allowed_publishers __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~policies ~allowed_publishers __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
