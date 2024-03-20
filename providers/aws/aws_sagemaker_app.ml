(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type resource_spec = {
  instance_type : string prop option; [@option]  (** instance_type *)
  lifecycle_config_arn : string prop option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string prop option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string prop option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string prop option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** resource_spec *)

type aws_sagemaker_app = {
  app_name : string prop;  (** app_name *)
  app_type : string prop;  (** app_type *)
  domain_id : string prop;  (** domain_id *)
  id : string prop option; [@option]  (** id *)
  space_name : string prop option; [@option]  (** space_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_profile_name : string prop option; [@option]
      (** user_profile_name *)
  resource_spec : resource_spec list;
}
[@@deriving yojson_of]
(** aws_sagemaker_app *)

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
