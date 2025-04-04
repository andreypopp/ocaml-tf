(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_layer_version = {
  compatible_architectures : string prop list option; [@option]
  compatible_runtimes : string prop list option; [@option]
  description : string prop option; [@option]
  filename : string prop option; [@option]
  id : string prop option; [@option]
  layer_name : string prop;
  license_info : string prop option; [@option]
  s3_bucket : string prop option; [@option]
  s3_key : string prop option; [@option]
  s3_object_version : string prop option; [@option]
  skip_destroy : bool prop option; [@option]
  source_code_hash : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_layer_version) -> ()

let yojson_of_aws_lambda_layer_version =
  (function
   | {
       compatible_architectures = v_compatible_architectures;
       compatible_runtimes = v_compatible_runtimes;
       description = v_description;
       filename = v_filename;
       id = v_id;
       layer_name = v_layer_name;
       license_info = v_license_info;
       s3_bucket = v_s3_bucket;
       s3_key = v_s3_key;
       s3_object_version = v_s3_object_version;
       skip_destroy = v_skip_destroy;
       source_code_hash = v_source_code_hash;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_code_hash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_code_hash", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_object_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_object_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_license_info with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_info", arg in
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
         match v_filename with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filename", arg in
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
         match v_compatible_runtimes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "compatible_runtimes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compatible_architectures with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "compatible_architectures", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lambda_layer_version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_layer_version

[@@@deriving.end]

let aws_lambda_layer_version ?compatible_architectures
    ?compatible_runtimes ?description ?filename ?id ?license_info
    ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?source_code_hash ~layer_name () : aws_lambda_layer_version =
  {
    compatible_architectures;
    compatible_runtimes;
    description;
    filename;
    id;
    layer_name;
    license_info;
    s3_bucket;
    s3_key;
    s3_object_version;
    skip_destroy;
    source_code_hash;
  }

type t = {
  tf_name : string;
  arn : string prop;
  code_sha256 : string prop;
  compatible_architectures : string list prop;
  compatible_runtimes : string list prop;
  created_date : string prop;
  description : string prop;
  filename : string prop;
  id : string prop;
  layer_arn : string prop;
  layer_name : string prop;
  license_info : string prop;
  s3_bucket : string prop;
  s3_key : string prop;
  s3_object_version : string prop;
  signing_job_arn : string prop;
  signing_profile_version_arn : string prop;
  skip_destroy : bool prop;
  source_code_hash : string prop;
  source_code_size : float prop;
  version : string prop;
}

let make ?compatible_architectures ?compatible_runtimes ?description
    ?filename ?id ?license_info ?s3_bucket ?s3_key ?s3_object_version
    ?skip_destroy ?source_code_hash ~layer_name __id =
  let __type = "aws_lambda_layer_version" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       code_sha256 = Prop.computed __type __id "code_sha256";
       compatible_architectures =
         Prop.computed __type __id "compatible_architectures";
       compatible_runtimes =
         Prop.computed __type __id "compatible_runtimes";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       filename = Prop.computed __type __id "filename";
       id = Prop.computed __type __id "id";
       layer_arn = Prop.computed __type __id "layer_arn";
       layer_name = Prop.computed __type __id "layer_name";
       license_info = Prop.computed __type __id "license_info";
       s3_bucket = Prop.computed __type __id "s3_bucket";
       s3_key = Prop.computed __type __id "s3_key";
       s3_object_version =
         Prop.computed __type __id "s3_object_version";
       signing_job_arn = Prop.computed __type __id "signing_job_arn";
       signing_profile_version_arn =
         Prop.computed __type __id "signing_profile_version_arn";
       skip_destroy = Prop.computed __type __id "skip_destroy";
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
        (aws_lambda_layer_version ?compatible_architectures
           ?compatible_runtimes ?description ?filename ?id
           ?license_info ?s3_bucket ?s3_key ?s3_object_version
           ?skip_destroy ?source_code_hash ~layer_name ());
    attrs = __attrs;
  }

let register ?tf_module ?compatible_architectures
    ?compatible_runtimes ?description ?filename ?id ?license_info
    ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?source_code_hash ~layer_name __id =
  let (r : _ Tf_core.resource) =
    make ?compatible_architectures ?compatible_runtimes ?description
      ?filename ?id ?license_info ?s3_bucket ?s3_key
      ?s3_object_version ?skip_destroy ?source_code_hash ~layer_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
