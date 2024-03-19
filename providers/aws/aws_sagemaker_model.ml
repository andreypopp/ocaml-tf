(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type container__image_config__repository_auth_config = {
  repository_credentials_provider_arn : string prop;
      (** repository_credentials_provider_arn *)
}
[@@deriving yojson_of]
(** container__image_config__repository_auth_config *)

type container__image_config = {
  repository_access_mode : string prop;
      (** repository_access_mode *)
  repository_auth_config :
    container__image_config__repository_auth_config list;
}
[@@deriving yojson_of]
(** container__image_config *)

type container__model_data_source__s3_data_source = {
  compression_type : string prop;  (** compression_type *)
  s3_data_type : string prop;  (** s3_data_type *)
  s3_uri : string prop;  (** s3_uri *)
}
[@@deriving yojson_of]
(** container__model_data_source__s3_data_source *)

type container__model_data_source = {
  s3_data_source : container__model_data_source__s3_data_source list;
}
[@@deriving yojson_of]
(** container__model_data_source *)

type container = {
  container_hostname : string prop option; [@option]
      (** container_hostname *)
  environment : (string * string prop) list option; [@option]
      (** environment *)
  image : string prop option; [@option]  (** image *)
  mode : string prop option; [@option]  (** mode *)
  model_data_url : string prop option; [@option]
      (** model_data_url *)
  model_package_name : string prop option; [@option]
      (** model_package_name *)
  image_config : container__image_config list;
  model_data_source : container__model_data_source list;
}
[@@deriving yojson_of]
(** container *)

type inference_execution_config = { mode : string prop  (** mode *) }
[@@deriving yojson_of]
(** inference_execution_config *)

type primary_container__image_config__repository_auth_config = {
  repository_credentials_provider_arn : string prop;
      (** repository_credentials_provider_arn *)
}
[@@deriving yojson_of]
(** primary_container__image_config__repository_auth_config *)

type primary_container__image_config = {
  repository_access_mode : string prop;
      (** repository_access_mode *)
  repository_auth_config :
    primary_container__image_config__repository_auth_config list;
}
[@@deriving yojson_of]
(** primary_container__image_config *)

type primary_container__model_data_source__s3_data_source = {
  compression_type : string prop;  (** compression_type *)
  s3_data_type : string prop;  (** s3_data_type *)
  s3_uri : string prop;  (** s3_uri *)
}
[@@deriving yojson_of]
(** primary_container__model_data_source__s3_data_source *)

type primary_container__model_data_source = {
  s3_data_source :
    primary_container__model_data_source__s3_data_source list;
}
[@@deriving yojson_of]
(** primary_container__model_data_source *)

type primary_container = {
  container_hostname : string prop option; [@option]
      (** container_hostname *)
  environment : (string * string prop) list option; [@option]
      (** environment *)
  image : string prop option; [@option]  (** image *)
  mode : string prop option; [@option]  (** mode *)
  model_data_url : string prop option; [@option]
      (** model_data_url *)
  model_package_name : string prop option; [@option]
      (** model_package_name *)
  image_config : primary_container__image_config list;
  model_data_source : primary_container__model_data_source list;
}
[@@deriving yojson_of]
(** primary_container *)

type vpc_config = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** vpc_config *)

type aws_sagemaker_model = {
  enable_network_isolation : bool prop option; [@option]
      (** enable_network_isolation *)
  execution_role_arn : string prop;  (** execution_role_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  container : container list;
  inference_execution_config : inference_execution_config list;
  primary_container : primary_container list;
  vpc_config : vpc_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_model *)

let container__image_config__repository_auth_config
    ~repository_credentials_provider_arn () :
    container__image_config__repository_auth_config =
  { repository_credentials_provider_arn }

let container__image_config ~repository_access_mode
    ~repository_auth_config () : container__image_config =
  { repository_access_mode; repository_auth_config }

let container__model_data_source__s3_data_source ~compression_type
    ~s3_data_type ~s3_uri () :
    container__model_data_source__s3_data_source =
  { compression_type; s3_data_type; s3_uri }

let container__model_data_source ~s3_data_source () :
    container__model_data_source =
  { s3_data_source }

let container ?container_hostname ?environment ?image ?mode
    ?model_data_url ?model_package_name ~image_config
    ~model_data_source () : container =
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

let primary_container__image_config ~repository_access_mode
    ~repository_auth_config () : primary_container__image_config =
  { repository_access_mode; repository_auth_config }

let primary_container__model_data_source__s3_data_source
    ~compression_type ~s3_data_type ~s3_uri () :
    primary_container__model_data_source__s3_data_source =
  { compression_type; s3_data_type; s3_uri }

let primary_container__model_data_source ~s3_data_source () :
    primary_container__model_data_source =
  { s3_data_source }

let primary_container ?container_hostname ?environment ?image ?mode
    ?model_data_url ?model_package_name ~image_config
    ~model_data_source () : primary_container =
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
    ?tags_all ~execution_role_arn ~container
    ~inference_execution_config ~primary_container ~vpc_config () :
    aws_sagemaker_model =
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
  arn : string prop;
  enable_network_isolation : bool prop;
  execution_role_arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?enable_network_isolation ?id ?name ?tags
    ?tags_all ~execution_role_arn ~container
    ~inference_execution_config ~primary_container ~vpc_config
    __resource_id =
  let __resource_type = "aws_sagemaker_model" in
  let __resource =
    aws_sagemaker_model ?enable_network_isolation ?id ?name ?tags
      ?tags_all ~execution_role_arn ~container
      ~inference_execution_config ~primary_container ~vpc_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_model __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       enable_network_isolation =
         Prop.computed __resource_type __resource_id
           "enable_network_isolation";
       execution_role_arn =
         Prop.computed __resource_type __resource_id
           "execution_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
