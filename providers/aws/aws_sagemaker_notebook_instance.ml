(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_metadata_service_configuration = {
  minimum_instance_metadata_service_version : string prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_metadata_service_configuration) -> ()

let yojson_of_instance_metadata_service_configuration =
  (function
   | {
       minimum_instance_metadata_service_version =
         v_minimum_instance_metadata_service_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_minimum_instance_metadata_service_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "minimum_instance_metadata_service_version", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_metadata_service_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_metadata_service_configuration

[@@@deriving.end]

type aws_sagemaker_notebook_instance = {
  accelerator_types : string prop list option; [@option]
  additional_code_repositories : string prop list option; [@option]
  default_code_repository : string prop option; [@option]
  direct_internet_access : string prop option; [@option]
  id : string prop option; [@option]
  instance_type : string prop;
  kms_key_id : string prop option; [@option]
  lifecycle_config_name : string prop option; [@option]
  name : string prop;
  platform_identifier : string prop option; [@option]
  role_arn : string prop;
  root_access : string prop option; [@option]
  security_groups : string prop list option; [@option]
  subnet_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  volume_size : float prop option; [@option]
  instance_metadata_service_configuration :
    instance_metadata_service_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_notebook_instance) -> ()

let yojson_of_aws_sagemaker_notebook_instance =
  (function
   | {
       accelerator_types = v_accelerator_types;
       additional_code_repositories = v_additional_code_repositories;
       default_code_repository = v_default_code_repository;
       direct_internet_access = v_direct_internet_access;
       id = v_id;
       instance_type = v_instance_type;
       kms_key_id = v_kms_key_id;
       lifecycle_config_name = v_lifecycle_config_name;
       name = v_name;
       platform_identifier = v_platform_identifier;
       role_arn = v_role_arn;
       root_access = v_root_access;
       security_groups = v_security_groups;
       subnet_id = v_subnet_id;
       tags = v_tags;
       tags_all = v_tags_all;
       volume_size = v_volume_size;
       instance_metadata_service_configuration =
         v_instance_metadata_service_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_instance_metadata_service_configuration
             v_instance_metadata_service_configuration
         in
         ("instance_metadata_service_configuration", arg) :: bnds
       in
       let bnds =
         match v_volume_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_size", arg in
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_root_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_access", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_platform_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_lifecycle_config_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lifecycle_config_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
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
         match v_direct_internet_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "direct_internet_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_code_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_code_repository", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_code_repositories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "additional_code_repositories", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "accelerator_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_notebook_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_notebook_instance

[@@@deriving.end]

let instance_metadata_service_configuration
    ?minimum_instance_metadata_service_version () :
    instance_metadata_service_configuration =
  { minimum_instance_metadata_service_version }

let aws_sagemaker_notebook_instance ?accelerator_types
    ?additional_code_repositories ?default_code_repository
    ?direct_internet_access ?id ?kms_key_id ?lifecycle_config_name
    ?platform_identifier ?root_access ?security_groups ?subnet_id
    ?tags ?tags_all ?volume_size
    ?(instance_metadata_service_configuration = []) ~instance_type
    ~name ~role_arn () : aws_sagemaker_notebook_instance =
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
    ?(instance_metadata_service_configuration = []) ~instance_type
    ~name ~role_arn __id =
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
           ~instance_metadata_service_configuration ~instance_type
           ~name ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?accelerator_types
    ?additional_code_repositories ?default_code_repository
    ?direct_internet_access ?id ?kms_key_id ?lifecycle_config_name
    ?platform_identifier ?root_access ?security_groups ?subnet_id
    ?tags ?tags_all ?volume_size
    ?(instance_metadata_service_configuration = []) ~instance_type
    ~name ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?accelerator_types ?additional_code_repositories
      ?default_code_repository ?direct_internet_access ?id
      ?kms_key_id ?lifecycle_config_name ?platform_identifier
      ?root_access ?security_groups ?subnet_id ?tags ?tags_all
      ?volume_size ~instance_metadata_service_configuration
      ~instance_type ~name ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
