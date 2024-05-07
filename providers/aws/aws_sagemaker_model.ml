(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type container__image_config__repository_auth_config = {
  repository_credentials_provider_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : container__image_config__repository_auth_config) -> ()

let yojson_of_container__image_config__repository_auth_config =
  (function
   | {
       repository_credentials_provider_arn =
         v_repository_credentials_provider_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_repository_credentials_provider_arn
         in
         ("repository_credentials_provider_arn", arg) :: bnds
       in
       `Assoc bnds
    : container__image_config__repository_auth_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__image_config__repository_auth_config

[@@@deriving.end]

type container__image_config = {
  repository_access_mode : string prop;
  repository_auth_config :
    container__image_config__repository_auth_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__image_config) -> ()

let yojson_of_container__image_config =
  (function
   | {
       repository_access_mode = v_repository_access_mode;
       repository_auth_config = v_repository_auth_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_container__image_config__repository_auth_config
             v_repository_auth_config
         in
         ("repository_auth_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_access_mode
         in
         ("repository_access_mode", arg) :: bnds
       in
       `Assoc bnds
    : container__image_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__image_config

[@@@deriving.end]

type container__model_data_source__s3_data_source = {
  compression_type : string prop;
  s3_data_type : string prop;
  s3_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__model_data_source__s3_data_source) -> ()

let yojson_of_container__model_data_source__s3_data_source =
  (function
   | {
       compression_type = v_compression_type;
       s3_data_type = v_s3_data_type;
       s3_uri = v_s3_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_data_type in
         ("s3_data_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_compression_type
         in
         ("compression_type", arg) :: bnds
       in
       `Assoc bnds
    : container__model_data_source__s3_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__model_data_source__s3_data_source

[@@@deriving.end]

type container__model_data_source = {
  s3_data_source : container__model_data_source__s3_data_source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container__model_data_source) -> ()

let yojson_of_container__model_data_source =
  (function
   | { s3_data_source = v_s3_data_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_container__model_data_source__s3_data_source
             v_s3_data_source
         in
         ("s3_data_source", arg) :: bnds
       in
       `Assoc bnds
    : container__model_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container__model_data_source

[@@@deriving.end]

type container = {
  container_hostname : string prop option; [@option]
  environment : (string * string prop) list option; [@option]
  image : string prop option; [@option]
  mode : string prop option; [@option]
  model_data_url : string prop option; [@option]
  model_package_name : string prop option; [@option]
  image_config : container__image_config list;
  model_data_source : container__model_data_source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container) -> ()

let yojson_of_container =
  (function
   | {
       container_hostname = v_container_hostname;
       environment = v_environment;
       image = v_image;
       mode = v_mode;
       model_data_url = v_model_data_url;
       model_package_name = v_model_package_name;
       image_config = v_image_config;
       model_data_source = v_model_data_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_container__model_data_source
             v_model_data_source
         in
         ("model_data_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_container__image_config
             v_image_config
         in
         ("image_config", arg) :: bnds
       in
       let bnds =
         match v_model_package_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "model_package_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_model_data_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "model_data_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment with
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
             let bnd = "environment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_hostname", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container

[@@@deriving.end]

type inference_execution_config = { mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : inference_execution_config) -> ()

let yojson_of_inference_execution_config =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : inference_execution_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inference_execution_config

[@@@deriving.end]

type primary_container__image_config__repository_auth_config = {
  repository_credentials_provider_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : primary_container__image_config__repository_auth_config) ->
  ()

let yojson_of_primary_container__image_config__repository_auth_config
    =
  (function
   | {
       repository_credentials_provider_arn =
         v_repository_credentials_provider_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_repository_credentials_provider_arn
         in
         ("repository_credentials_provider_arn", arg) :: bnds
       in
       `Assoc bnds
    : primary_container__image_config__repository_auth_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_primary_container__image_config__repository_auth_config

[@@@deriving.end]

type primary_container__image_config = {
  repository_access_mode : string prop;
  repository_auth_config :
    primary_container__image_config__repository_auth_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : primary_container__image_config) -> ()

let yojson_of_primary_container__image_config =
  (function
   | {
       repository_access_mode = v_repository_access_mode;
       repository_auth_config = v_repository_auth_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_primary_container__image_config__repository_auth_config
             v_repository_auth_config
         in
         ("repository_auth_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_access_mode
         in
         ("repository_access_mode", arg) :: bnds
       in
       `Assoc bnds
    : primary_container__image_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_primary_container__image_config

[@@@deriving.end]

type primary_container__model_data_source__s3_data_source = {
  compression_type : string prop;
  s3_data_type : string prop;
  s3_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : primary_container__model_data_source__s3_data_source) -> ()

let yojson_of_primary_container__model_data_source__s3_data_source =
  (function
   | {
       compression_type = v_compression_type;
       s3_data_type = v_s3_data_type;
       s3_uri = v_s3_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_data_type in
         ("s3_data_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_compression_type
         in
         ("compression_type", arg) :: bnds
       in
       `Assoc bnds
    : primary_container__model_data_source__s3_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_primary_container__model_data_source__s3_data_source

[@@@deriving.end]

type primary_container__model_data_source = {
  s3_data_source :
    primary_container__model_data_source__s3_data_source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : primary_container__model_data_source) -> ()

let yojson_of_primary_container__model_data_source =
  (function
   | { s3_data_source = v_s3_data_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_primary_container__model_data_source__s3_data_source
             v_s3_data_source
         in
         ("s3_data_source", arg) :: bnds
       in
       `Assoc bnds
    : primary_container__model_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_primary_container__model_data_source

[@@@deriving.end]

type primary_container = {
  container_hostname : string prop option; [@option]
  environment : (string * string prop) list option; [@option]
  image : string prop option; [@option]
  mode : string prop option; [@option]
  model_data_url : string prop option; [@option]
  model_package_name : string prop option; [@option]
  image_config : primary_container__image_config list;
  model_data_source : primary_container__model_data_source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : primary_container) -> ()

let yojson_of_primary_container =
  (function
   | {
       container_hostname = v_container_hostname;
       environment = v_environment;
       image = v_image;
       mode = v_mode;
       model_data_url = v_model_data_url;
       model_package_name = v_model_package_name;
       image_config = v_image_config;
       model_data_source = v_model_data_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_primary_container__model_data_source
             v_model_data_source
         in
         ("model_data_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_primary_container__image_config
             v_image_config
         in
         ("image_config", arg) :: bnds
       in
       let bnds =
         match v_model_package_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "model_package_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_model_data_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "model_data_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment with
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
             let bnd = "environment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_hostname", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : primary_container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_primary_container

[@@@deriving.end]

type vpc_config = {
  security_group_ids : string prop list;
  subnets : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_config) -> ()

let yojson_of_vpc_config =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnets = v_subnets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_subnets
         in
         ("subnets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_ids
         in
         ("security_group_ids", arg) :: bnds
       in
       `Assoc bnds
    : vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_config

[@@@deriving.end]

type aws_sagemaker_model = {
  enable_network_isolation : bool prop option; [@option]
  execution_role_arn : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  container : container list;
  inference_execution_config : inference_execution_config list;
  primary_container : primary_container list;
  vpc_config : vpc_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_model) -> ()

let yojson_of_aws_sagemaker_model =
  (function
   | {
       enable_network_isolation = v_enable_network_isolation;
       execution_role_arn = v_execution_role_arn;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       container = v_container;
       inference_execution_config = v_inference_execution_config;
       primary_container = v_primary_container;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_config v_vpc_config
         in
         ("vpc_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_primary_container
             v_primary_container
         in
         ("primary_container", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_inference_execution_config
             v_inference_execution_config
         in
         ("inference_execution_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_container v_container in
         ("container", arg) :: bnds
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_execution_role_arn
         in
         ("execution_role_arn", arg) :: bnds
       in
       let bnds =
         match v_enable_network_isolation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_network_isolation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_model -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_model

[@@@deriving.end]

let container__image_config__repository_auth_config
    ~repository_credentials_provider_arn () :
    container__image_config__repository_auth_config =
  { repository_credentials_provider_arn }

let container__image_config ?(repository_auth_config = [])
    ~repository_access_mode () : container__image_config =
  { repository_access_mode; repository_auth_config }

let container__model_data_source__s3_data_source ~compression_type
    ~s3_data_type ~s3_uri () :
    container__model_data_source__s3_data_source =
  { compression_type; s3_data_type; s3_uri }

let container__model_data_source ~s3_data_source () :
    container__model_data_source =
  { s3_data_source }

let container ?container_hostname ?environment ?image ?mode
    ?model_data_url ?model_package_name ?(image_config = [])
    ?(model_data_source = []) () : container =
  {
    container_hostname;
    environment;
    image;
    mode;
    model_data_url;
    model_package_name;
    image_config;
    model_data_source;
  }

let inference_execution_config ~mode () : inference_execution_config
    =
  { mode }

let primary_container__image_config__repository_auth_config
    ~repository_credentials_provider_arn () :
    primary_container__image_config__repository_auth_config =
  { repository_credentials_provider_arn }

let primary_container__image_config ?(repository_auth_config = [])
    ~repository_access_mode () : primary_container__image_config =
  { repository_access_mode; repository_auth_config }

let primary_container__model_data_source__s3_data_source
    ~compression_type ~s3_data_type ~s3_uri () :
    primary_container__model_data_source__s3_data_source =
  { compression_type; s3_data_type; s3_uri }

let primary_container__model_data_source ~s3_data_source () :
    primary_container__model_data_source =
  { s3_data_source }

let primary_container ?container_hostname ?environment ?image ?mode
    ?model_data_url ?model_package_name ?(image_config = [])
    ?(model_data_source = []) () : primary_container =
  {
    container_hostname;
    environment;
    image;
    mode;
    model_data_url;
    model_package_name;
    image_config;
    model_data_source;
  }

let vpc_config ~security_group_ids ~subnets () : vpc_config =
  { security_group_ids; subnets }

let aws_sagemaker_model ?enable_network_isolation ?id ?name ?tags
    ?tags_all ?(container = []) ?(inference_execution_config = [])
    ?(primary_container = []) ?(vpc_config = []) ~execution_role_arn
    () : aws_sagemaker_model =
  {
    enable_network_isolation;
    execution_role_arn;
    id;
    name;
    tags;
    tags_all;
    container;
    inference_execution_config;
    primary_container;
    vpc_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  enable_network_isolation : bool prop;
  execution_role_arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?enable_network_isolation ?id ?name ?tags ?tags_all
    ?(container = []) ?(inference_execution_config = [])
    ?(primary_container = []) ?(vpc_config = []) ~execution_role_arn
    __id =
  let __type = "aws_sagemaker_model" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       enable_network_isolation =
         Prop.computed __type __id "enable_network_isolation";
       execution_role_arn =
         Prop.computed __type __id "execution_role_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_model
        (aws_sagemaker_model ?enable_network_isolation ?id ?name
           ?tags ?tags_all ~container ~inference_execution_config
           ~primary_container ~vpc_config ~execution_role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_network_isolation ?id ?name ?tags
    ?tags_all ?(container = []) ?(inference_execution_config = [])
    ?(primary_container = []) ?(vpc_config = []) ~execution_role_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?enable_network_isolation ?id ?name ?tags ?tags_all
      ~container ~inference_execution_config ~primary_container
      ~vpc_config ~execution_role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
