(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sagemaker_image_version = {
  base_image : string prop;
  id : string prop option; [@option]
  image_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_image_version) -> ()

let yojson_of_aws_sagemaker_image_version =
  (function
   | {
       base_image = v_base_image;
       id = v_id;
       image_name = v_image_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_name in
         ("image_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_base_image in
         ("base_image", arg) :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_image_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_image_version

[@@@deriving.end]

let aws_sagemaker_image_version ?id ~base_image ~image_name () :
    aws_sagemaker_image_version =
  { base_image; id; image_name }

type t = {
  arn : string prop;
  base_image : string prop;
  container_image : string prop;
  id : string prop;
  image_arn : string prop;
  image_name : string prop;
  version : float prop;
}

let make ?id ~base_image ~image_name __id =
  let __type = "aws_sagemaker_image_version" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       base_image = Prop.computed __type __id "base_image";
       container_image = Prop.computed __type __id "container_image";
       id = Prop.computed __type __id "id";
       image_arn = Prop.computed __type __id "image_arn";
       image_name = Prop.computed __type __id "image_name";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_image_version
        (aws_sagemaker_image_version ?id ~base_image ~image_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~base_image ~image_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~base_image ~image_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
