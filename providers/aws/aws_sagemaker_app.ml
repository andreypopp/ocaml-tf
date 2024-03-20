(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_spec) -> ()

let yojson_of_resource_spec =
  (function
   | {
       instance_type = v_instance_type;
       lifecycle_config_arn = v_lifecycle_config_arn;
       sagemaker_image_arn = v_sagemaker_image_arn;
       sagemaker_image_version_alias =
         v_sagemaker_image_version_alias;
       sagemaker_image_version_arn = v_sagemaker_image_version_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sagemaker_image_version_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sagemaker_image_version_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sagemaker_image_version_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sagemaker_image_version_alias", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sagemaker_image_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sagemaker_image_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lifecycle_config_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lifecycle_config_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resource_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_spec

[@@@deriving.end]

type aws_sagemaker_app = {
  app_name : string prop;
  app_type : string prop;
  domain_id : string prop;
  id : string prop option; [@option]
  space_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  user_profile_name : string prop option; [@option]
  resource_spec : resource_spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_app) -> ()

let yojson_of_aws_sagemaker_app =
  (function
   | {
       app_name = v_app_name;
       app_type = v_app_type;
       domain_id = v_domain_id;
       id = v_id;
       space_name = v_space_name;
       tags = v_tags;
       tags_all = v_tags_all;
       user_profile_name = v_user_profile_name;
       resource_spec = v_resource_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_resource_spec v_resource_spec
         in
         ("resource_spec", arg) :: bnds
       in
       let bnds =
         match v_user_profile_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_profile_name", arg in
             bnd :: bnds
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
         match v_space_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "space_name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_domain_id in
         ("domain_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_type in
         ("app_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_name in
         ("app_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_app

[@@@deriving.end]

let resource_spec ?instance_type ?lifecycle_config_arn
    ?sagemaker_image_arn ?sagemaker_image_version_alias
    ?sagemaker_image_version_arn () : resource_spec =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let aws_sagemaker_app ?id ?space_name ?tags ?tags_all
    ?user_profile_name ~app_name ~app_type ~domain_id ~resource_spec
    () : aws_sagemaker_app =
  {
    app_name;
    app_type;
    domain_id;
    id;
    space_name;
    tags;
    tags_all;
    user_profile_name;
    resource_spec;
  }

type t = {
  app_name : string prop;
  app_type : string prop;
  arn : string prop;
  domain_id : string prop;
  id : string prop;
  space_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_profile_name : string prop;
}

let make ?id ?space_name ?tags ?tags_all ?user_profile_name ~app_name
    ~app_type ~domain_id ~resource_spec __id =
  let __type = "aws_sagemaker_app" in
  let __attrs =
    ({
       app_name = Prop.computed __type __id "app_name";
       app_type = Prop.computed __type __id "app_type";
       arn = Prop.computed __type __id "arn";
       domain_id = Prop.computed __type __id "domain_id";
       id = Prop.computed __type __id "id";
       space_name = Prop.computed __type __id "space_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_profile_name =
         Prop.computed __type __id "user_profile_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_app
        (aws_sagemaker_app ?id ?space_name ?tags ?tags_all
           ?user_profile_name ~app_name ~app_type ~domain_id
           ~resource_spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?space_name ?tags ?tags_all
    ?user_profile_name ~app_name ~app_type ~domain_id ~resource_spec
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?space_name ?tags ?tags_all ?user_profile_name ~app_name
      ~app_type ~domain_id ~resource_spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
