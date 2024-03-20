(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_layer_version = {
  compatible_architecture : string prop option; [@option]
  compatible_runtime : string prop option; [@option]
  id : string prop option; [@option]
  layer_name : string prop;
  version : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_layer_version) -> ()

let yojson_of_aws_lambda_layer_version =
  (function
   | {
       compatible_architecture = v_compatible_architecture;
       compatible_runtime = v_compatible_runtime;
       id = v_id;
       layer_name = v_layer_name;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_layer_name in
         ("layer_name", arg) :: bnds
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
         match v_compatible_runtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compatible_runtime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compatible_architecture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compatible_architecture", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lambda_layer_version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_layer_version

[@@@deriving.end]

let aws_lambda_layer_version ?compatible_architecture
    ?compatible_runtime ?id ?version ~layer_name () :
    aws_lambda_layer_version =
  {
    compatible_architecture;
    compatible_runtime;
    id;
    layer_name;
    version;
  }

type t = {
  arn : string prop;
  compatible_architecture : string prop;
  compatible_architectures : string list prop;
  compatible_runtime : string prop;
  compatible_runtimes : string list prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  layer_arn : string prop;
  layer_name : string prop;
  license_info : string prop;
  signing_job_arn : string prop;
  signing_profile_version_arn : string prop;
  source_code_hash : string prop;
  source_code_size : float prop;
  version : float prop;
}

let make ?compatible_architecture ?compatible_runtime ?id ?version
    ~layer_name __id =
  let __type = "aws_lambda_layer_version" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       compatible_architecture =
         Prop.computed __type __id "compatible_architecture";
       compatible_architectures =
         Prop.computed __type __id "compatible_architectures";
       compatible_runtime =
         Prop.computed __type __id "compatible_runtime";
       compatible_runtimes =
         Prop.computed __type __id "compatible_runtimes";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       layer_arn = Prop.computed __type __id "layer_arn";
       layer_name = Prop.computed __type __id "layer_name";
       license_info = Prop.computed __type __id "license_info";
       signing_job_arn = Prop.computed __type __id "signing_job_arn";
       signing_profile_version_arn =
         Prop.computed __type __id "signing_profile_version_arn";
       source_code_hash =
         Prop.computed __type __id "source_code_hash";
       source_code_size =
         Prop.computed __type __id "source_code_size";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_layer_version
        (aws_lambda_layer_version ?compatible_architecture
           ?compatible_runtime ?id ?version ~layer_name ());
    attrs = __attrs;
  }

let register ?tf_module ?compatible_architecture ?compatible_runtime
    ?id ?version ~layer_name __id =
  let (r : _ Tf_core.resource) =
    make ?compatible_architecture ?compatible_runtime ?id ?version
      ~layer_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
