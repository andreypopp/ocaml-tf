(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_metadata_service_configuration = {
  minimum_instance_metadata_service_version : string prop option;
      [@option]
      (** minimum_instance_metadata_service_version *)
}
[@@deriving yojson_of]
(** instance_metadata_service_configuration *)

type aws_sagemaker_notebook_instance = {
  accelerator_types : string prop list option; [@option]
      (** accelerator_types *)
  additional_code_repositories : string prop list option; [@option]
      (** additional_code_repositories *)
  default_code_repository : string prop option; [@option]
      (** default_code_repository *)
  direct_internet_access : string prop option; [@option]
      (** direct_internet_access *)
  id : string prop option; [@option]  (** id *)
  instance_type : string prop;  (** instance_type *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  lifecycle_config_name : string prop option; [@option]
      (** lifecycle_config_name *)
  name : string prop;  (** name *)
  platform_identifier : string prop option; [@option]
      (** platform_identifier *)
  role_arn : string prop;  (** role_arn *)
  root_access : string prop option; [@option]  (** root_access *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  volume_size : float prop option; [@option]  (** volume_size *)
  instance_metadata_service_configuration :
    instance_metadata_service_configuration list;
}
[@@deriving yojson_of]
(** aws_sagemaker_notebook_instance *)

let instance_metadata_service_configuration
    ?minimum_instance_metadata_service_version () :
    instance_metadata_service_configuration =
  { minimum_instance_metadata_service_version }

let aws_sagemaker_notebook_instance ?accelerator_types
    ?additional_code_repositories ?default_code_repository
    ?direct_internet_access ?id ?kms_key_id ?lifecycle_config_name
    ?platform_identifier ?root_access ?security_groups ?subnet_id
    ?tags ?tags_all ?volume_size ~instance_type ~name ~role_arn
    ~instance_metadata_service_configuration () :
    aws_sagemaker_notebook_instance =
  {
    accelerator_types;
    additional_code_repositories;
    default_code_repository;
    direct_internet_access;
    id;
    instance_type;
    kms_key_id;
    lifecycle_config_name;
    name;
    platform_identifier;
    role_arn;
    root_access;
    security_groups;
    subnet_id;
    tags;
    tags_all;
    volume_size;
    instance_metadata_service_configuration;
  }

type t = {
  accelerator_types : string list prop;
  additional_code_repositories : string list prop;
  arn : string prop;
  default_code_repository : string prop;
  direct_internet_access : string prop;
  id : string prop;
  instance_type : string prop;
  kms_key_id : string prop;
  lifecycle_config_name : string prop;
  name : string prop;
  network_interface_id : string prop;
  platform_identifier : string prop;
  role_arn : string prop;
  root_access : string prop;
  security_groups : string list prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
  volume_size : float prop;
}

let make ?accelerator_types ?additional_code_repositories
    ?default_code_repository ?direct_internet_access ?id ?kms_key_id
    ?lifecycle_config_name ?platform_identifier ?root_access
    ?security_groups ?subnet_id ?tags ?tags_all ?volume_size
    ~instance_type ~name ~role_arn
    ~instance_metadata_service_configuration __id =
  let __type = "aws_sagemaker_notebook_instance" in
  let __attrs =
    ({
       accelerator_types =
         Prop.computed __type __id "accelerator_types";
       additional_code_repositories =
         Prop.computed __type __id "additional_code_repositories";
       arn = Prop.computed __type __id "arn";
       default_code_repository =
         Prop.computed __type __id "default_code_repository";
       direct_internet_access =
         Prop.computed __type __id "direct_internet_access";
       id = Prop.computed __type __id "id";
       instance_type = Prop.computed __type __id "instance_type";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       lifecycle_config_name =
         Prop.computed __type __id "lifecycle_config_name";
       name = Prop.computed __type __id "name";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       platform_identifier =
         Prop.computed __type __id "platform_identifier";
       role_arn = Prop.computed __type __id "role_arn";
       root_access = Prop.computed __type __id "root_access";
       security_groups = Prop.computed __type __id "security_groups";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       url = Prop.computed __type __id "url";
       volume_size = Prop.computed __type __id "volume_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_notebook_instance
        (aws_sagemaker_notebook_instance ?accelerator_types
           ?additional_code_repositories ?default_code_repository
           ?direct_internet_access ?id ?kms_key_id
           ?lifecycle_config_name ?platform_identifier ?root_access
           ?security_groups ?subnet_id ?tags ?tags_all ?volume_size
           ~instance_type ~name ~role_arn
           ~instance_metadata_service_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?accelerator_types
    ?additional_code_repositories ?default_code_repository
    ?direct_internet_access ?id ?kms_key_id ?lifecycle_config_name
    ?platform_identifier ?root_access ?security_groups ?subnet_id
    ?tags ?tags_all ?volume_size ~instance_type ~name ~role_arn
    ~instance_metadata_service_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?accelerator_types ?additional_code_repositories
      ?default_code_repository ?direct_internet_access ?id
      ?kms_key_id ?lifecycle_config_name ?platform_identifier
      ?root_access ?security_groups ?subnet_id ?tags ?tags_all
      ?volume_size ~instance_type ~name ~role_arn
      ~instance_metadata_service_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
