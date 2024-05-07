(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_space_settings__jupyter_server_app_settings__code_repository = {
  repository_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_space_settings__jupyter_server_app_settings__code_repository) ->
  ()

let yojson_of_default_space_settings__jupyter_server_app_settings__code_repository
    =
  (function
   | { repository_url = v_repository_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_url
         in
         ("repository_url", arg) :: bnds
       in
       `Assoc bnds
    : default_space_settings__jupyter_server_app_settings__code_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_space_settings__jupyter_server_app_settings__code_repository

[@@@deriving.end]

type default_space_settings__jupyter_server_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_space_settings__jupyter_server_app_settings__default_resource_spec) ->
  ()

let yojson_of_default_space_settings__jupyter_server_app_settings__default_resource_spec
    =
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
    : default_space_settings__jupyter_server_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_space_settings__jupyter_server_app_settings__default_resource_spec

[@@@deriving.end]

type default_space_settings__jupyter_server_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  code_repository :
    default_space_settings__jupyter_server_app_settings__code_repository
    list;
  default_resource_spec :
    default_space_settings__jupyter_server_app_settings__default_resource_spec
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_space_settings__jupyter_server_app_settings) -> ()

let yojson_of_default_space_settings__jupyter_server_app_settings =
  (function
   | {
       lifecycle_config_arns = v_lifecycle_config_arns;
       code_repository = v_code_repository;
       default_resource_spec = v_default_resource_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_space_settings__jupyter_server_app_settings__default_resource_spec
             v_default_resource_spec
         in
         ("default_resource_spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_space_settings__jupyter_server_app_settings__code_repository
             v_code_repository
         in
         ("code_repository", arg) :: bnds
       in
       let bnds =
         match v_lifecycle_config_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "lifecycle_config_arns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_space_settings__jupyter_server_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_space_settings__jupyter_server_app_settings

[@@@deriving.end]

type default_space_settings__kernel_gateway_app_settings__custom_image = {
  app_image_config_name : string prop;
  image_name : string prop;
  image_version_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_space_settings__kernel_gateway_app_settings__custom_image) ->
  ()

let yojson_of_default_space_settings__kernel_gateway_app_settings__custom_image
    =
  (function
   | {
       app_image_config_name = v_app_image_config_name;
       image_name = v_image_name;
       image_version_number = v_image_version_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_image_version_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "image_version_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_name in
         ("image_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_image_config_name
         in
         ("app_image_config_name", arg) :: bnds
       in
       `Assoc bnds
    : default_space_settings__kernel_gateway_app_settings__custom_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_space_settings__kernel_gateway_app_settings__custom_image

[@@@deriving.end]

type default_space_settings__kernel_gateway_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_space_settings__kernel_gateway_app_settings__default_resource_spec) ->
  ()

let yojson_of_default_space_settings__kernel_gateway_app_settings__default_resource_spec
    =
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
    : default_space_settings__kernel_gateway_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_space_settings__kernel_gateway_app_settings__default_resource_spec

[@@@deriving.end]

type default_space_settings__kernel_gateway_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  custom_image :
    default_space_settings__kernel_gateway_app_settings__custom_image
    list;
  default_resource_spec :
    default_space_settings__kernel_gateway_app_settings__default_resource_spec
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_space_settings__kernel_gateway_app_settings) -> ()

let yojson_of_default_space_settings__kernel_gateway_app_settings =
  (function
   | {
       lifecycle_config_arns = v_lifecycle_config_arns;
       custom_image = v_custom_image;
       default_resource_spec = v_default_resource_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_space_settings__kernel_gateway_app_settings__default_resource_spec
             v_default_resource_spec
         in
         ("default_resource_spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_space_settings__kernel_gateway_app_settings__custom_image
             v_custom_image
         in
         ("custom_image", arg) :: bnds
       in
       let bnds =
         match v_lifecycle_config_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "lifecycle_config_arns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_space_settings__kernel_gateway_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_space_settings__kernel_gateway_app_settings

[@@@deriving.end]

type default_space_settings = {
  execution_role : string prop;
  security_groups : string prop list option; [@option]
  jupyter_server_app_settings :
    default_space_settings__jupyter_server_app_settings list;
  kernel_gateway_app_settings :
    default_space_settings__kernel_gateway_app_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_space_settings) -> ()

let yojson_of_default_space_settings =
  (function
   | {
       execution_role = v_execution_role;
       security_groups = v_security_groups;
       jupyter_server_app_settings = v_jupyter_server_app_settings;
       kernel_gateway_app_settings = v_kernel_gateway_app_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_space_settings__kernel_gateway_app_settings
             v_kernel_gateway_app_settings
         in
         ("kernel_gateway_app_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_space_settings__jupyter_server_app_settings
             v_jupyter_server_app_settings
         in
         ("jupyter_server_app_settings", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_execution_role
         in
         ("execution_role", arg) :: bnds
       in
       `Assoc bnds
    : default_space_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_space_settings

[@@@deriving.end]

type default_user_settings__canvas_app_settings__direct_deploy_settings = {
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__canvas_app_settings__direct_deploy_settings) ->
  ()

let yojson_of_default_user_settings__canvas_app_settings__direct_deploy_settings
    =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__canvas_app_settings__direct_deploy_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__canvas_app_settings__direct_deploy_settings

[@@@deriving.end]

type default_user_settings__canvas_app_settings__identity_provider_oauth_settings = {
  data_source_name : string prop option; [@option]
  secret_arn : string prop;
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__canvas_app_settings__identity_provider_oauth_settings) ->
  ()

let yojson_of_default_user_settings__canvas_app_settings__identity_provider_oauth_settings
    =
  (function
   | {
       data_source_name = v_data_source_name;
       secret_arn = v_secret_arn;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_arn in
         ("secret_arn", arg) :: bnds
       in
       let bnds =
         match v_data_source_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_source_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__canvas_app_settings__identity_provider_oauth_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__canvas_app_settings__identity_provider_oauth_settings

[@@@deriving.end]

type default_user_settings__canvas_app_settings__kendra_settings = {
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__canvas_app_settings__kendra_settings) ->
  ()

let yojson_of_default_user_settings__canvas_app_settings__kendra_settings
    =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__canvas_app_settings__kendra_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__canvas_app_settings__kendra_settings

[@@@deriving.end]

type default_user_settings__canvas_app_settings__model_register_settings = {
  cross_account_model_register_role_arn : string prop option;
      [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__canvas_app_settings__model_register_settings) ->
  ()

let yojson_of_default_user_settings__canvas_app_settings__model_register_settings
    =
  (function
   | {
       cross_account_model_register_role_arn =
         v_cross_account_model_register_role_arn;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_account_model_register_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "cross_account_model_register_role_arn", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__canvas_app_settings__model_register_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__canvas_app_settings__model_register_settings

[@@@deriving.end]

type default_user_settings__canvas_app_settings__time_series_forecasting_settings = {
  amazon_forecast_role_arn : string prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__canvas_app_settings__time_series_forecasting_settings) ->
  ()

let yojson_of_default_user_settings__canvas_app_settings__time_series_forecasting_settings
    =
  (function
   | {
       amazon_forecast_role_arn = v_amazon_forecast_role_arn;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_amazon_forecast_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "amazon_forecast_role_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__canvas_app_settings__time_series_forecasting_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__canvas_app_settings__time_series_forecasting_settings

[@@@deriving.end]

type default_user_settings__canvas_app_settings__workspace_settings = {
  s3_artifact_path : string prop option; [@option]
  s3_kms_key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__canvas_app_settings__workspace_settings) ->
  ()

let yojson_of_default_user_settings__canvas_app_settings__workspace_settings
    =
  (function
   | {
       s3_artifact_path = v_s3_artifact_path;
       s3_kms_key_id = v_s3_kms_key_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_artifact_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_artifact_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__canvas_app_settings__workspace_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__canvas_app_settings__workspace_settings

[@@@deriving.end]

type default_user_settings__canvas_app_settings = {
  direct_deploy_settings :
    default_user_settings__canvas_app_settings__direct_deploy_settings
    list;
  identity_provider_oauth_settings :
    default_user_settings__canvas_app_settings__identity_provider_oauth_settings
    list;
  kendra_settings :
    default_user_settings__canvas_app_settings__kendra_settings list;
  model_register_settings :
    default_user_settings__canvas_app_settings__model_register_settings
    list;
  time_series_forecasting_settings :
    default_user_settings__canvas_app_settings__time_series_forecasting_settings
    list;
  workspace_settings :
    default_user_settings__canvas_app_settings__workspace_settings
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_user_settings__canvas_app_settings) -> ()

let yojson_of_default_user_settings__canvas_app_settings =
  (function
   | {
       direct_deploy_settings = v_direct_deploy_settings;
       identity_provider_oauth_settings =
         v_identity_provider_oauth_settings;
       kendra_settings = v_kendra_settings;
       model_register_settings = v_model_register_settings;
       time_series_forecasting_settings =
         v_time_series_forecasting_settings;
       workspace_settings = v_workspace_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__canvas_app_settings__workspace_settings
             v_workspace_settings
         in
         ("workspace_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__canvas_app_settings__time_series_forecasting_settings
             v_time_series_forecasting_settings
         in
         ("time_series_forecasting_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__canvas_app_settings__model_register_settings
             v_model_register_settings
         in
         ("model_register_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__canvas_app_settings__kendra_settings
             v_kendra_settings
         in
         ("kendra_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__canvas_app_settings__identity_provider_oauth_settings
             v_identity_provider_oauth_settings
         in
         ("identity_provider_oauth_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__canvas_app_settings__direct_deploy_settings
             v_direct_deploy_settings
         in
         ("direct_deploy_settings", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__canvas_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings__canvas_app_settings

[@@@deriving.end]

type default_user_settings__code_editor_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__code_editor_app_settings__default_resource_spec) ->
  ()

let yojson_of_default_user_settings__code_editor_app_settings__default_resource_spec
    =
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
    : default_user_settings__code_editor_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__code_editor_app_settings__default_resource_spec

[@@@deriving.end]

type default_user_settings__code_editor_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  default_resource_spec :
    default_user_settings__code_editor_app_settings__default_resource_spec
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_user_settings__code_editor_app_settings) -> ()

let yojson_of_default_user_settings__code_editor_app_settings =
  (function
   | {
       lifecycle_config_arns = v_lifecycle_config_arns;
       default_resource_spec = v_default_resource_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__code_editor_app_settings__default_resource_spec
             v_default_resource_spec
         in
         ("default_resource_spec", arg) :: bnds
       in
       let bnds =
         match v_lifecycle_config_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "lifecycle_config_arns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__code_editor_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings__code_editor_app_settings

[@@@deriving.end]

type default_user_settings__custom_file_system_config__efs_file_system_config = {
  file_system_id : string prop;
  file_system_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__custom_file_system_config__efs_file_system_config) ->
  ()

let yojson_of_default_user_settings__custom_file_system_config__efs_file_system_config
    =
  (function
   | {
       file_system_id = v_file_system_id;
       file_system_path = v_file_system_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_system_path
         in
         ("file_system_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__custom_file_system_config__efs_file_system_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__custom_file_system_config__efs_file_system_config

[@@@deriving.end]

type default_user_settings__custom_file_system_config = {
  efs_file_system_config :
    default_user_settings__custom_file_system_config__efs_file_system_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_user_settings__custom_file_system_config) -> ()

let yojson_of_default_user_settings__custom_file_system_config =
  (function
   | { efs_file_system_config = v_efs_file_system_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__custom_file_system_config__efs_file_system_config
             v_efs_file_system_config
         in
         ("efs_file_system_config", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__custom_file_system_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings__custom_file_system_config

[@@@deriving.end]

type default_user_settings__custom_posix_user_config = {
  gid : float prop;
  uid : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_user_settings__custom_posix_user_config) -> ()

let yojson_of_default_user_settings__custom_posix_user_config =
  (function
   | { gid = v_gid; uid = v_uid } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_uid in
         ("uid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_gid in
         ("gid", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__custom_posix_user_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings__custom_posix_user_config

[@@@deriving.end]

type default_user_settings__jupyter_lab_app_settings__code_repository = {
  repository_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__jupyter_lab_app_settings__code_repository) ->
  ()

let yojson_of_default_user_settings__jupyter_lab_app_settings__code_repository
    =
  (function
   | { repository_url = v_repository_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_url
         in
         ("repository_url", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__jupyter_lab_app_settings__code_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__jupyter_lab_app_settings__code_repository

[@@@deriving.end]

type default_user_settings__jupyter_lab_app_settings__custom_image = {
  app_image_config_name : string prop;
  image_name : string prop;
  image_version_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__jupyter_lab_app_settings__custom_image) ->
  ()

let yojson_of_default_user_settings__jupyter_lab_app_settings__custom_image
    =
  (function
   | {
       app_image_config_name = v_app_image_config_name;
       image_name = v_image_name;
       image_version_number = v_image_version_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_image_version_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "image_version_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_name in
         ("image_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_image_config_name
         in
         ("app_image_config_name", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__jupyter_lab_app_settings__custom_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__jupyter_lab_app_settings__custom_image

[@@@deriving.end]

type default_user_settings__jupyter_lab_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__jupyter_lab_app_settings__default_resource_spec) ->
  ()

let yojson_of_default_user_settings__jupyter_lab_app_settings__default_resource_spec
    =
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
    : default_user_settings__jupyter_lab_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__jupyter_lab_app_settings__default_resource_spec

[@@@deriving.end]

type default_user_settings__jupyter_lab_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  code_repository :
    default_user_settings__jupyter_lab_app_settings__code_repository
    list;
  custom_image :
    default_user_settings__jupyter_lab_app_settings__custom_image
    list;
  default_resource_spec :
    default_user_settings__jupyter_lab_app_settings__default_resource_spec
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_user_settings__jupyter_lab_app_settings) -> ()

let yojson_of_default_user_settings__jupyter_lab_app_settings =
  (function
   | {
       lifecycle_config_arns = v_lifecycle_config_arns;
       code_repository = v_code_repository;
       custom_image = v_custom_image;
       default_resource_spec = v_default_resource_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__jupyter_lab_app_settings__default_resource_spec
             v_default_resource_spec
         in
         ("default_resource_spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__jupyter_lab_app_settings__custom_image
             v_custom_image
         in
         ("custom_image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__jupyter_lab_app_settings__code_repository
             v_code_repository
         in
         ("code_repository", arg) :: bnds
       in
       let bnds =
         match v_lifecycle_config_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "lifecycle_config_arns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__jupyter_lab_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings__jupyter_lab_app_settings

[@@@deriving.end]

type default_user_settings__jupyter_server_app_settings__code_repository = {
  repository_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__jupyter_server_app_settings__code_repository) ->
  ()

let yojson_of_default_user_settings__jupyter_server_app_settings__code_repository
    =
  (function
   | { repository_url = v_repository_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_url
         in
         ("repository_url", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__jupyter_server_app_settings__code_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__jupyter_server_app_settings__code_repository

[@@@deriving.end]

type default_user_settings__jupyter_server_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__jupyter_server_app_settings__default_resource_spec) ->
  ()

let yojson_of_default_user_settings__jupyter_server_app_settings__default_resource_spec
    =
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
    : default_user_settings__jupyter_server_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__jupyter_server_app_settings__default_resource_spec

[@@@deriving.end]

type default_user_settings__jupyter_server_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  code_repository :
    default_user_settings__jupyter_server_app_settings__code_repository
    list;
  default_resource_spec :
    default_user_settings__jupyter_server_app_settings__default_resource_spec
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_user_settings__jupyter_server_app_settings) -> ()

let yojson_of_default_user_settings__jupyter_server_app_settings =
  (function
   | {
       lifecycle_config_arns = v_lifecycle_config_arns;
       code_repository = v_code_repository;
       default_resource_spec = v_default_resource_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__jupyter_server_app_settings__default_resource_spec
             v_default_resource_spec
         in
         ("default_resource_spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__jupyter_server_app_settings__code_repository
             v_code_repository
         in
         ("code_repository", arg) :: bnds
       in
       let bnds =
         match v_lifecycle_config_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "lifecycle_config_arns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__jupyter_server_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings__jupyter_server_app_settings

[@@@deriving.end]

type default_user_settings__kernel_gateway_app_settings__custom_image = {
  app_image_config_name : string prop;
  image_name : string prop;
  image_version_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__kernel_gateway_app_settings__custom_image) ->
  ()

let yojson_of_default_user_settings__kernel_gateway_app_settings__custom_image
    =
  (function
   | {
       app_image_config_name = v_app_image_config_name;
       image_name = v_image_name;
       image_version_number = v_image_version_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_image_version_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "image_version_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_name in
         ("image_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_image_config_name
         in
         ("app_image_config_name", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__kernel_gateway_app_settings__custom_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__kernel_gateway_app_settings__custom_image

[@@@deriving.end]

type default_user_settings__kernel_gateway_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__kernel_gateway_app_settings__default_resource_spec) ->
  ()

let yojson_of_default_user_settings__kernel_gateway_app_settings__default_resource_spec
    =
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
    : default_user_settings__kernel_gateway_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__kernel_gateway_app_settings__default_resource_spec

[@@@deriving.end]

type default_user_settings__kernel_gateway_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  custom_image :
    default_user_settings__kernel_gateway_app_settings__custom_image
    list;
  default_resource_spec :
    default_user_settings__kernel_gateway_app_settings__default_resource_spec
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_user_settings__kernel_gateway_app_settings) -> ()

let yojson_of_default_user_settings__kernel_gateway_app_settings =
  (function
   | {
       lifecycle_config_arns = v_lifecycle_config_arns;
       custom_image = v_custom_image;
       default_resource_spec = v_default_resource_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__kernel_gateway_app_settings__default_resource_spec
             v_default_resource_spec
         in
         ("default_resource_spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__kernel_gateway_app_settings__custom_image
             v_custom_image
         in
         ("custom_image", arg) :: bnds
       in
       let bnds =
         match v_lifecycle_config_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "lifecycle_config_arns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__kernel_gateway_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings__kernel_gateway_app_settings

[@@@deriving.end]

type default_user_settings__r_session_app_settings__custom_image = {
  app_image_config_name : string prop;
  image_name : string prop;
  image_version_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__r_session_app_settings__custom_image) ->
  ()

let yojson_of_default_user_settings__r_session_app_settings__custom_image
    =
  (function
   | {
       app_image_config_name = v_app_image_config_name;
       image_name = v_image_name;
       image_version_number = v_image_version_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_image_version_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "image_version_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_name in
         ("image_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_image_config_name
         in
         ("app_image_config_name", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__r_session_app_settings__custom_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__r_session_app_settings__custom_image

[@@@deriving.end]

type default_user_settings__r_session_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__r_session_app_settings__default_resource_spec) ->
  ()

let yojson_of_default_user_settings__r_session_app_settings__default_resource_spec
    =
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
    : default_user_settings__r_session_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__r_session_app_settings__default_resource_spec

[@@@deriving.end]

type default_user_settings__r_session_app_settings = {
  custom_image :
    default_user_settings__r_session_app_settings__custom_image list;
  default_resource_spec :
    default_user_settings__r_session_app_settings__default_resource_spec
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_user_settings__r_session_app_settings) -> ()

let yojson_of_default_user_settings__r_session_app_settings =
  (function
   | {
       custom_image = v_custom_image;
       default_resource_spec = v_default_resource_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__r_session_app_settings__default_resource_spec
             v_default_resource_spec
         in
         ("default_resource_spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__r_session_app_settings__custom_image
             v_custom_image
         in
         ("custom_image", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__r_session_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings__r_session_app_settings

[@@@deriving.end]

type default_user_settings__r_studio_server_pro_app_settings = {
  access_status : string prop option; [@option]
  user_group : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_user_settings__r_studio_server_pro_app_settings) ->
  ()

let yojson_of_default_user_settings__r_studio_server_pro_app_settings
    =
  (function
   | { access_status = v_access_status; user_group = v_user_group }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__r_studio_server_pro_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__r_studio_server_pro_app_settings

[@@@deriving.end]

type default_user_settings__sharing_settings = {
  notebook_output_option : string prop option; [@option]
  s3_kms_key_id : string prop option; [@option]
  s3_output_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_user_settings__sharing_settings) -> ()

let yojson_of_default_user_settings__sharing_settings =
  (function
   | {
       notebook_output_option = v_notebook_output_option;
       s3_kms_key_id = v_s3_kms_key_id;
       s3_output_path = v_s3_output_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_output_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_output_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notebook_output_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notebook_output_option", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings__sharing_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings__sharing_settings

[@@@deriving.end]

type default_user_settings__space_storage_settings__default_ebs_storage_settings = {
  default_ebs_volume_size_in_gb : float prop;
  maximum_ebs_volume_size_in_gb : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__space_storage_settings__default_ebs_storage_settings) ->
  ()

let yojson_of_default_user_settings__space_storage_settings__default_ebs_storage_settings
    =
  (function
   | {
       default_ebs_volume_size_in_gb =
         v_default_ebs_volume_size_in_gb;
       maximum_ebs_volume_size_in_gb =
         v_maximum_ebs_volume_size_in_gb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_maximum_ebs_volume_size_in_gb
         in
         ("maximum_ebs_volume_size_in_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_default_ebs_volume_size_in_gb
         in
         ("default_ebs_volume_size_in_gb", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__space_storage_settings__default_ebs_storage_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__space_storage_settings__default_ebs_storage_settings

[@@@deriving.end]

type default_user_settings__space_storage_settings = {
  default_ebs_storage_settings :
    default_user_settings__space_storage_settings__default_ebs_storage_settings
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_user_settings__space_storage_settings) -> ()

let yojson_of_default_user_settings__space_storage_settings =
  (function
   | {
       default_ebs_storage_settings = v_default_ebs_storage_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__space_storage_settings__default_ebs_storage_settings
             v_default_ebs_storage_settings
         in
         ("default_ebs_storage_settings", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__space_storage_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings__space_storage_settings

[@@@deriving.end]

type default_user_settings__tensor_board_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_user_settings__tensor_board_app_settings__default_resource_spec) ->
  ()

let yojson_of_default_user_settings__tensor_board_app_settings__default_resource_spec
    =
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
    : default_user_settings__tensor_board_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_user_settings__tensor_board_app_settings__default_resource_spec

[@@@deriving.end]

type default_user_settings__tensor_board_app_settings = {
  default_resource_spec :
    default_user_settings__tensor_board_app_settings__default_resource_spec
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_user_settings__tensor_board_app_settings) -> ()

let yojson_of_default_user_settings__tensor_board_app_settings =
  (function
   | { default_resource_spec = v_default_resource_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__tensor_board_app_settings__default_resource_spec
             v_default_resource_spec
         in
         ("default_resource_spec", arg) :: bnds
       in
       `Assoc bnds
    : default_user_settings__tensor_board_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings__tensor_board_app_settings

[@@@deriving.end]

type default_user_settings = {
  default_landing_uri : string prop option; [@option]
  execution_role : string prop;
  security_groups : string prop list option; [@option]
  studio_web_portal : string prop option; [@option]
  canvas_app_settings :
    default_user_settings__canvas_app_settings list;
  code_editor_app_settings :
    default_user_settings__code_editor_app_settings list;
  custom_file_system_config :
    default_user_settings__custom_file_system_config list;
  custom_posix_user_config :
    default_user_settings__custom_posix_user_config list;
  jupyter_lab_app_settings :
    default_user_settings__jupyter_lab_app_settings list;
  jupyter_server_app_settings :
    default_user_settings__jupyter_server_app_settings list;
  kernel_gateway_app_settings :
    default_user_settings__kernel_gateway_app_settings list;
  r_session_app_settings :
    default_user_settings__r_session_app_settings list;
  r_studio_server_pro_app_settings :
    default_user_settings__r_studio_server_pro_app_settings list;
  sharing_settings : default_user_settings__sharing_settings list;
  space_storage_settings :
    default_user_settings__space_storage_settings list;
  tensor_board_app_settings :
    default_user_settings__tensor_board_app_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_user_settings) -> ()

let yojson_of_default_user_settings =
  (function
   | {
       default_landing_uri = v_default_landing_uri;
       execution_role = v_execution_role;
       security_groups = v_security_groups;
       studio_web_portal = v_studio_web_portal;
       canvas_app_settings = v_canvas_app_settings;
       code_editor_app_settings = v_code_editor_app_settings;
       custom_file_system_config = v_custom_file_system_config;
       custom_posix_user_config = v_custom_posix_user_config;
       jupyter_lab_app_settings = v_jupyter_lab_app_settings;
       jupyter_server_app_settings = v_jupyter_server_app_settings;
       kernel_gateway_app_settings = v_kernel_gateway_app_settings;
       r_session_app_settings = v_r_session_app_settings;
       r_studio_server_pro_app_settings =
         v_r_studio_server_pro_app_settings;
       sharing_settings = v_sharing_settings;
       space_storage_settings = v_space_storage_settings;
       tensor_board_app_settings = v_tensor_board_app_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__tensor_board_app_settings
             v_tensor_board_app_settings
         in
         ("tensor_board_app_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__space_storage_settings
             v_space_storage_settings
         in
         ("space_storage_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__sharing_settings
             v_sharing_settings
         in
         ("sharing_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__r_studio_server_pro_app_settings
             v_r_studio_server_pro_app_settings
         in
         ("r_studio_server_pro_app_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__r_session_app_settings
             v_r_session_app_settings
         in
         ("r_session_app_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__kernel_gateway_app_settings
             v_kernel_gateway_app_settings
         in
         ("kernel_gateway_app_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__jupyter_server_app_settings
             v_jupyter_server_app_settings
         in
         ("jupyter_server_app_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__jupyter_lab_app_settings
             v_jupyter_lab_app_settings
         in
         ("jupyter_lab_app_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__custom_posix_user_config
             v_custom_posix_user_config
         in
         ("custom_posix_user_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__custom_file_system_config
             v_custom_file_system_config
         in
         ("custom_file_system_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__code_editor_app_settings
             v_code_editor_app_settings
         in
         ("code_editor_app_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_user_settings__canvas_app_settings
             v_canvas_app_settings
         in
         ("canvas_app_settings", arg) :: bnds
       in
       let bnds =
         match v_studio_web_portal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "studio_web_portal", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_execution_role
         in
         ("execution_role", arg) :: bnds
       in
       let bnds =
         match v_default_landing_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_landing_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_user_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_user_settings

[@@@deriving.end]

type domain_settings__r_studio_server_pro_domain_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       domain_settings__r_studio_server_pro_domain_settings__default_resource_spec) ->
  ()

let yojson_of_domain_settings__r_studio_server_pro_domain_settings__default_resource_spec
    =
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
    : domain_settings__r_studio_server_pro_domain_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_domain_settings__r_studio_server_pro_domain_settings__default_resource_spec

[@@@deriving.end]

type domain_settings__r_studio_server_pro_domain_settings = {
  domain_execution_role_arn : string prop;
  r_studio_connect_url : string prop option; [@option]
  r_studio_package_manager_url : string prop option; [@option]
  default_resource_spec :
    domain_settings__r_studio_server_pro_domain_settings__default_resource_spec
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : domain_settings__r_studio_server_pro_domain_settings) -> ()

let yojson_of_domain_settings__r_studio_server_pro_domain_settings =
  (function
   | {
       domain_execution_role_arn = v_domain_execution_role_arn;
       r_studio_connect_url = v_r_studio_connect_url;
       r_studio_package_manager_url = v_r_studio_package_manager_url;
       default_resource_spec = v_default_resource_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_domain_settings__r_studio_server_pro_domain_settings__default_resource_spec
             v_default_resource_spec
         in
         ("default_resource_spec", arg) :: bnds
       in
       let bnds =
         match v_r_studio_package_manager_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "r_studio_package_manager_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_r_studio_connect_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "r_studio_connect_url", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_domain_execution_role_arn
         in
         ("domain_execution_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : domain_settings__r_studio_server_pro_domain_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_domain_settings__r_studio_server_pro_domain_settings

[@@@deriving.end]

type domain_settings = {
  execution_role_identity_config : string prop option; [@option]
  security_group_ids : string prop list option; [@option]
  r_studio_server_pro_domain_settings :
    domain_settings__r_studio_server_pro_domain_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : domain_settings) -> ()

let yojson_of_domain_settings =
  (function
   | {
       execution_role_identity_config =
         v_execution_role_identity_config;
       security_group_ids = v_security_group_ids;
       r_studio_server_pro_domain_settings =
         v_r_studio_server_pro_domain_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_domain_settings__r_studio_server_pro_domain_settings
             v_r_studio_server_pro_domain_settings
         in
         ("r_studio_server_pro_domain_settings", arg) :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_execution_role_identity_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_role_identity_config", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : domain_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_domain_settings

[@@@deriving.end]

type retention_policy = {
  home_efs_file_system : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_policy) -> ()

let yojson_of_retention_policy =
  (function
   | { home_efs_file_system = v_home_efs_file_system } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_home_efs_file_system with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "home_efs_file_system", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_policy

[@@@deriving.end]

type aws_sagemaker_domain = {
  app_network_access_type : string prop option; [@option]
  app_security_group_management : string prop option; [@option]
  auth_mode : string prop;
  domain_name : string prop;
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  subnet_ids : string prop list;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc_id : string prop;
  default_space_settings : default_space_settings list;
  default_user_settings : default_user_settings list;
  domain_settings : domain_settings list;
  retention_policy : retention_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_domain) -> ()

let yojson_of_aws_sagemaker_domain =
  (function
   | {
       app_network_access_type = v_app_network_access_type;
       app_security_group_management =
         v_app_security_group_management;
       auth_mode = v_auth_mode;
       domain_name = v_domain_name;
       id = v_id;
       kms_key_id = v_kms_key_id;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_id = v_vpc_id;
       default_space_settings = v_default_space_settings;
       default_user_settings = v_default_user_settings;
       domain_settings = v_domain_settings;
       retention_policy = v_retention_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_retention_policy
             v_retention_policy
         in
         ("retention_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_domain_settings v_domain_settings
         in
         ("domain_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_user_settings
             v_default_user_settings
         in
         ("default_user_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_space_settings
             v_default_space_settings
         in
         ("default_space_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
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
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_mode in
         ("auth_mode", arg) :: bnds
       in
       let bnds =
         match v_app_security_group_management with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_security_group_management", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_network_access_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_network_access_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_domain

[@@@deriving.end]

let default_space_settings__jupyter_server_app_settings__code_repository
    ~repository_url () :
    default_space_settings__jupyter_server_app_settings__code_repository
    =
  { repository_url }

let default_space_settings__jupyter_server_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    default_space_settings__jupyter_server_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let default_space_settings__jupyter_server_app_settings
    ?lifecycle_config_arns ?(default_resource_spec = [])
    ~code_repository () :
    default_space_settings__jupyter_server_app_settings =
  { lifecycle_config_arns; code_repository; default_resource_spec }

let default_space_settings__kernel_gateway_app_settings__custom_image
    ?image_version_number ~app_image_config_name ~image_name () :
    default_space_settings__kernel_gateway_app_settings__custom_image
    =
  { app_image_config_name; image_name; image_version_number }

let default_space_settings__kernel_gateway_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    default_space_settings__kernel_gateway_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let default_space_settings__kernel_gateway_app_settings
    ?lifecycle_config_arns ?(custom_image = [])
    ?(default_resource_spec = []) () :
    default_space_settings__kernel_gateway_app_settings =
  { lifecycle_config_arns; custom_image; default_resource_spec }

let default_space_settings ?security_groups
    ?(jupyter_server_app_settings = [])
    ?(kernel_gateway_app_settings = []) ~execution_role () :
    default_space_settings =
  {
    execution_role;
    security_groups;
    jupyter_server_app_settings;
    kernel_gateway_app_settings;
  }

let default_user_settings__canvas_app_settings__direct_deploy_settings
    ?status () :
    default_user_settings__canvas_app_settings__direct_deploy_settings
    =
  { status }

let default_user_settings__canvas_app_settings__identity_provider_oauth_settings
    ?data_source_name ?status ~secret_arn () :
    default_user_settings__canvas_app_settings__identity_provider_oauth_settings
    =
  { data_source_name; secret_arn; status }

let default_user_settings__canvas_app_settings__kendra_settings
    ?status () :
    default_user_settings__canvas_app_settings__kendra_settings =
  { status }

let default_user_settings__canvas_app_settings__model_register_settings
    ?cross_account_model_register_role_arn ?status () :
    default_user_settings__canvas_app_settings__model_register_settings
    =
  { cross_account_model_register_role_arn; status }

let default_user_settings__canvas_app_settings__time_series_forecasting_settings
    ?amazon_forecast_role_arn ?status () :
    default_user_settings__canvas_app_settings__time_series_forecasting_settings
    =
  { amazon_forecast_role_arn; status }

let default_user_settings__canvas_app_settings__workspace_settings
    ?s3_artifact_path ?s3_kms_key_id () :
    default_user_settings__canvas_app_settings__workspace_settings =
  { s3_artifact_path; s3_kms_key_id }

let default_user_settings__canvas_app_settings
    ?(direct_deploy_settings = [])
    ?(identity_provider_oauth_settings = []) ?(kendra_settings = [])
    ?(model_register_settings = [])
    ?(time_series_forecasting_settings = [])
    ?(workspace_settings = []) () :
    default_user_settings__canvas_app_settings =
  {
    direct_deploy_settings;
    identity_provider_oauth_settings;
    kendra_settings;
    model_register_settings;
    time_series_forecasting_settings;
    workspace_settings;
  }

let default_user_settings__code_editor_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    default_user_settings__code_editor_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let default_user_settings__code_editor_app_settings
    ?lifecycle_config_arns ?(default_resource_spec = []) () :
    default_user_settings__code_editor_app_settings =
  { lifecycle_config_arns; default_resource_spec }

let default_user_settings__custom_file_system_config__efs_file_system_config
    ~file_system_id ~file_system_path () :
    default_user_settings__custom_file_system_config__efs_file_system_config
    =
  { file_system_id; file_system_path }

let default_user_settings__custom_file_system_config
    ?(efs_file_system_config = []) () :
    default_user_settings__custom_file_system_config =
  { efs_file_system_config }

let default_user_settings__custom_posix_user_config ~gid ~uid () :
    default_user_settings__custom_posix_user_config =
  { gid; uid }

let default_user_settings__jupyter_lab_app_settings__code_repository
    ~repository_url () :
    default_user_settings__jupyter_lab_app_settings__code_repository
    =
  { repository_url }

let default_user_settings__jupyter_lab_app_settings__custom_image
    ?image_version_number ~app_image_config_name ~image_name () :
    default_user_settings__jupyter_lab_app_settings__custom_image =
  { app_image_config_name; image_name; image_version_number }

let default_user_settings__jupyter_lab_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    default_user_settings__jupyter_lab_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let default_user_settings__jupyter_lab_app_settings
    ?lifecycle_config_arns ?(custom_image = [])
    ?(default_resource_spec = []) ~code_repository () :
    default_user_settings__jupyter_lab_app_settings =
  {
    lifecycle_config_arns;
    code_repository;
    custom_image;
    default_resource_spec;
  }

let default_user_settings__jupyter_server_app_settings__code_repository
    ~repository_url () :
    default_user_settings__jupyter_server_app_settings__code_repository
    =
  { repository_url }

let default_user_settings__jupyter_server_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    default_user_settings__jupyter_server_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let default_user_settings__jupyter_server_app_settings
    ?lifecycle_config_arns ?(default_resource_spec = [])
    ~code_repository () :
    default_user_settings__jupyter_server_app_settings =
  { lifecycle_config_arns; code_repository; default_resource_spec }

let default_user_settings__kernel_gateway_app_settings__custom_image
    ?image_version_number ~app_image_config_name ~image_name () :
    default_user_settings__kernel_gateway_app_settings__custom_image
    =
  { app_image_config_name; image_name; image_version_number }

let default_user_settings__kernel_gateway_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    default_user_settings__kernel_gateway_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let default_user_settings__kernel_gateway_app_settings
    ?lifecycle_config_arns ?(custom_image = [])
    ?(default_resource_spec = []) () :
    default_user_settings__kernel_gateway_app_settings =
  { lifecycle_config_arns; custom_image; default_resource_spec }

let default_user_settings__r_session_app_settings__custom_image
    ?image_version_number ~app_image_config_name ~image_name () :
    default_user_settings__r_session_app_settings__custom_image =
  { app_image_config_name; image_name; image_version_number }

let default_user_settings__r_session_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    default_user_settings__r_session_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let default_user_settings__r_session_app_settings
    ?(custom_image = []) ?(default_resource_spec = []) () :
    default_user_settings__r_session_app_settings =
  { custom_image; default_resource_spec }

let default_user_settings__r_studio_server_pro_app_settings
    ?access_status ?user_group () :
    default_user_settings__r_studio_server_pro_app_settings =
  { access_status; user_group }

let default_user_settings__sharing_settings ?notebook_output_option
    ?s3_kms_key_id ?s3_output_path () :
    default_user_settings__sharing_settings =
  { notebook_output_option; s3_kms_key_id; s3_output_path }

let default_user_settings__space_storage_settings__default_ebs_storage_settings
    ~default_ebs_volume_size_in_gb ~maximum_ebs_volume_size_in_gb ()
    :
    default_user_settings__space_storage_settings__default_ebs_storage_settings
    =
  { default_ebs_volume_size_in_gb; maximum_ebs_volume_size_in_gb }

let default_user_settings__space_storage_settings
    ?(default_ebs_storage_settings = []) () :
    default_user_settings__space_storage_settings =
  { default_ebs_storage_settings }

let default_user_settings__tensor_board_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    default_user_settings__tensor_board_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let default_user_settings__tensor_board_app_settings
    ?(default_resource_spec = []) () :
    default_user_settings__tensor_board_app_settings =
  { default_resource_spec }

let default_user_settings ?default_landing_uri ?security_groups
    ?studio_web_portal ?(canvas_app_settings = [])
    ?(code_editor_app_settings = [])
    ?(custom_file_system_config = [])
    ?(custom_posix_user_config = []) ?(jupyter_lab_app_settings = [])
    ?(jupyter_server_app_settings = [])
    ?(kernel_gateway_app_settings = [])
    ?(r_session_app_settings = [])
    ?(r_studio_server_pro_app_settings = []) ?(sharing_settings = [])
    ?(space_storage_settings = []) ?(tensor_board_app_settings = [])
    ~execution_role () : default_user_settings =
  {
    default_landing_uri;
    execution_role;
    security_groups;
    studio_web_portal;
    canvas_app_settings;
    code_editor_app_settings;
    custom_file_system_config;
    custom_posix_user_config;
    jupyter_lab_app_settings;
    jupyter_server_app_settings;
    kernel_gateway_app_settings;
    r_session_app_settings;
    r_studio_server_pro_app_settings;
    sharing_settings;
    space_storage_settings;
    tensor_board_app_settings;
  }

let domain_settings__r_studio_server_pro_domain_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    domain_settings__r_studio_server_pro_domain_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let domain_settings__r_studio_server_pro_domain_settings
    ?r_studio_connect_url ?r_studio_package_manager_url
    ?(default_resource_spec = []) ~domain_execution_role_arn () :
    domain_settings__r_studio_server_pro_domain_settings =
  {
    domain_execution_role_arn;
    r_studio_connect_url;
    r_studio_package_manager_url;
    default_resource_spec;
  }

let domain_settings ?execution_role_identity_config
    ?security_group_ids ?(r_studio_server_pro_domain_settings = [])
    () : domain_settings =
  {
    execution_role_identity_config;
    security_group_ids;
    r_studio_server_pro_domain_settings;
  }

let retention_policy ?home_efs_file_system () : retention_policy =
  { home_efs_file_system }

let aws_sagemaker_domain ?app_network_access_type
    ?app_security_group_management ?id ?kms_key_id ?tags ?tags_all
    ?(default_space_settings = []) ?(domain_settings = [])
    ?(retention_policy = []) ~auth_mode ~domain_name ~subnet_ids
    ~vpc_id ~default_user_settings () : aws_sagemaker_domain =
  {
    app_network_access_type;
    app_security_group_management;
    auth_mode;
    domain_name;
    id;
    kms_key_id;
    subnet_ids;
    tags;
    tags_all;
    vpc_id;
    default_space_settings;
    default_user_settings;
    domain_settings;
    retention_policy;
  }

type t = {
  tf_name : string;
  app_network_access_type : string prop;
  app_security_group_management : string prop;
  arn : string prop;
  auth_mode : string prop;
  domain_name : string prop;
  home_efs_file_system_id : string prop;
  id : string prop;
  kms_key_id : string prop;
  security_group_id_for_domain_boundary : string prop;
  single_sign_on_application_arn : string prop;
  single_sign_on_managed_application_instance_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
  vpc_id : string prop;
}

let make ?app_network_access_type ?app_security_group_management ?id
    ?kms_key_id ?tags ?tags_all ?(default_space_settings = [])
    ?(domain_settings = []) ?(retention_policy = []) ~auth_mode
    ~domain_name ~subnet_ids ~vpc_id ~default_user_settings __id =
  let __type = "aws_sagemaker_domain" in
  let __attrs =
    ({
       tf_name = __id;
       app_network_access_type =
         Prop.computed __type __id "app_network_access_type";
       app_security_group_management =
         Prop.computed __type __id "app_security_group_management";
       arn = Prop.computed __type __id "arn";
       auth_mode = Prop.computed __type __id "auth_mode";
       domain_name = Prop.computed __type __id "domain_name";
       home_efs_file_system_id =
         Prop.computed __type __id "home_efs_file_system_id";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       security_group_id_for_domain_boundary =
         Prop.computed __type __id
           "security_group_id_for_domain_boundary";
       single_sign_on_application_arn =
         Prop.computed __type __id "single_sign_on_application_arn";
       single_sign_on_managed_application_instance_id =
         Prop.computed __type __id
           "single_sign_on_managed_application_instance_id";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       url = Prop.computed __type __id "url";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_domain
        (aws_sagemaker_domain ?app_network_access_type
           ?app_security_group_management ?id ?kms_key_id ?tags
           ?tags_all ~default_space_settings ~domain_settings
           ~retention_policy ~auth_mode ~domain_name ~subnet_ids
           ~vpc_id ~default_user_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?app_network_access_type
    ?app_security_group_management ?id ?kms_key_id ?tags ?tags_all
    ?(default_space_settings = []) ?(domain_settings = [])
    ?(retention_policy = []) ~auth_mode ~domain_name ~subnet_ids
    ~vpc_id ~default_user_settings __id =
  let (r : _ Tf_core.resource) =
    make ?app_network_access_type ?app_security_group_management ?id
      ?kms_key_id ?tags ?tags_all ~default_space_settings
      ~domain_settings ~retention_policy ~auth_mode ~domain_name
      ~subnet_ids ~vpc_id ~default_user_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
