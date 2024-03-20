(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sagemaker_prebuilt_ecr_image = {
  dns_suffix : string prop option; [@option]
  id : string prop option; [@option]
  image_tag : string prop option; [@option]
  region : string prop option; [@option]
  repository_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_prebuilt_ecr_image) -> ()

let yojson_of_aws_sagemaker_prebuilt_ecr_image =
  (function
   | {
       dns_suffix = v_dns_suffix;
       id = v_id;
       image_tag = v_image_tag;
       region = v_region;
       repository_name = v_repository_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_tag", arg in
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
         match v_dns_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_suffix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_prebuilt_ecr_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_prebuilt_ecr_image

[@@@deriving.end]

let aws_sagemaker_prebuilt_ecr_image ?dns_suffix ?id ?image_tag
    ?region ~repository_name () : aws_sagemaker_prebuilt_ecr_image =
  { dns_suffix; id; image_tag; region; repository_name }

type t = {
  dns_suffix : string prop;
  id : string prop;
  image_tag : string prop;
  region : string prop;
  registry_id : string prop;
  registry_path : string prop;
  repository_name : string prop;
}

let make ?dns_suffix ?id ?image_tag ?region ~repository_name __id =
  let __type = "aws_sagemaker_prebuilt_ecr_image" in
  let __attrs =
    ({
       dns_suffix = Prop.computed __type __id "dns_suffix";
       id = Prop.computed __type __id "id";
       image_tag = Prop.computed __type __id "image_tag";
       region = Prop.computed __type __id "region";
       registry_id = Prop.computed __type __id "registry_id";
       registry_path = Prop.computed __type __id "registry_path";
       repository_name = Prop.computed __type __id "repository_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_prebuilt_ecr_image
        (aws_sagemaker_prebuilt_ecr_image ?dns_suffix ?id ?image_tag
           ?region ~repository_name ());
    attrs = __attrs;
  }

let register ?tf_module ?dns_suffix ?id ?image_tag ?region
    ~repository_name __id =
  let (r : _ Tf_core.resource) =
    make ?dns_suffix ?id ?image_tag ?region ~repository_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
