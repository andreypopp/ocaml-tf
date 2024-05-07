(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sagemaker_studio_lifecycle_config = {
  id : string prop option; [@option]
  studio_lifecycle_config_app_type : string prop;
  studio_lifecycle_config_content : string prop;
  studio_lifecycle_config_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_studio_lifecycle_config) -> ()

let yojson_of_aws_sagemaker_studio_lifecycle_config =
  (function
   | {
       id = v_id;
       studio_lifecycle_config_app_type =
         v_studio_lifecycle_config_app_type;
       studio_lifecycle_config_content =
         v_studio_lifecycle_config_content;
       studio_lifecycle_config_name = v_studio_lifecycle_config_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_studio_lifecycle_config_name
         in
         ("studio_lifecycle_config_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_studio_lifecycle_config_content
         in
         ("studio_lifecycle_config_content", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_studio_lifecycle_config_app_type
         in
         ("studio_lifecycle_config_app_type", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_studio_lifecycle_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_studio_lifecycle_config

[@@@deriving.end]

let aws_sagemaker_studio_lifecycle_config ?id ?tags ?tags_all
    ~studio_lifecycle_config_app_type
    ~studio_lifecycle_config_content ~studio_lifecycle_config_name ()
    : aws_sagemaker_studio_lifecycle_config =
  {
    id;
    studio_lifecycle_config_app_type;
    studio_lifecycle_config_content;
    studio_lifecycle_config_name;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  studio_lifecycle_config_app_type : string prop;
  studio_lifecycle_config_content : string prop;
  studio_lifecycle_config_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~studio_lifecycle_config_app_type
    ~studio_lifecycle_config_content ~studio_lifecycle_config_name
    __id =
  let __type = "aws_sagemaker_studio_lifecycle_config" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       studio_lifecycle_config_app_type =
         Prop.computed __type __id "studio_lifecycle_config_app_type";
       studio_lifecycle_config_content =
         Prop.computed __type __id "studio_lifecycle_config_content";
       studio_lifecycle_config_name =
         Prop.computed __type __id "studio_lifecycle_config_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_studio_lifecycle_config
        (aws_sagemaker_studio_lifecycle_config ?id ?tags ?tags_all
           ~studio_lifecycle_config_app_type
           ~studio_lifecycle_config_content
           ~studio_lifecycle_config_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ~studio_lifecycle_config_app_type
    ~studio_lifecycle_config_content ~studio_lifecycle_config_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~studio_lifecycle_config_app_type
      ~studio_lifecycle_config_content ~studio_lifecycle_config_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
