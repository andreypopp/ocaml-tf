(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_layer_version = {
  compatible_architectures : string prop list option; [@option]
      (** compatible_architectures *)
  compatible_runtimes : string prop list option; [@option]
      (** compatible_runtimes *)
  description : string prop option; [@option]  (** description *)
  filename : string prop option; [@option]  (** filename *)
  id : string prop option; [@option]  (** id *)
  layer_name : string prop;  (** layer_name *)
  license_info : string prop option; [@option]  (** license_info *)
  s3_bucket : string prop option; [@option]  (** s3_bucket *)
  s3_key : string prop option; [@option]  (** s3_key *)
  s3_object_version : string prop option; [@option]
      (** s3_object_version *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  source_code_hash : string prop option; [@option]
      (** source_code_hash *)
}
[@@deriving yojson_of]
(** aws_lambda_layer_version *)

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
  arn : string prop;
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
       arn = Prop.computed __type __id "arn";
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
