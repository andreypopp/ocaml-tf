(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sagemaker_studio_lifecycle_config = {
  id : string prop option; [@option]  (** id *)
  studio_lifecycle_config_app_type : string prop;
      (** studio_lifecycle_config_app_type *)
  studio_lifecycle_config_content : string prop;
      (** studio_lifecycle_config_content *)
  studio_lifecycle_config_name : string prop;
      (** studio_lifecycle_config_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_sagemaker_studio_lifecycle_config *)

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
