(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type user_settings__canvas_app_settings__direct_deploy_settings = {
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : user_settings__canvas_app_settings__direct_deploy_settings) ->
  ()

let yojson_of_user_settings__canvas_app_settings__direct_deploy_settings
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
    : user_settings__canvas_app_settings__direct_deploy_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__canvas_app_settings__direct_deploy_settings

[@@@deriving.end]

type user_settings__canvas_app_settings__identity_provider_oauth_settings = {
  data_source_name : string prop option; [@option]
  secret_arn : string prop;
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__canvas_app_settings__identity_provider_oauth_settings) ->
  ()

let yojson_of_user_settings__canvas_app_settings__identity_provider_oauth_settings
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
    : user_settings__canvas_app_settings__identity_provider_oauth_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__canvas_app_settings__identity_provider_oauth_settings

[@@@deriving.end]

type user_settings__canvas_app_settings__kendra_settings = {
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : user_settings__canvas_app_settings__kendra_settings) -> ()

let yojson_of_user_settings__canvas_app_settings__kendra_settings =
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
    : user_settings__canvas_app_settings__kendra_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__canvas_app_settings__kendra_settings

[@@@deriving.end]

type user_settings__canvas_app_settings__model_register_settings = {
  cross_account_model_register_role_arn : string prop option;
      [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__canvas_app_settings__model_register_settings) ->
  ()

let yojson_of_user_settings__canvas_app_settings__model_register_settings
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
    : user_settings__canvas_app_settings__model_register_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__canvas_app_settings__model_register_settings

[@@@deriving.end]

type user_settings__canvas_app_settings__time_series_forecasting_settings = {
  amazon_forecast_role_arn : string prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__canvas_app_settings__time_series_forecasting_settings) ->
  ()

let yojson_of_user_settings__canvas_app_settings__time_series_forecasting_settings
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
    : user_settings__canvas_app_settings__time_series_forecasting_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__canvas_app_settings__time_series_forecasting_settings

[@@@deriving.end]

type user_settings__canvas_app_settings__workspace_settings = {
  s3_artifact_path : string prop option; [@option]
  s3_kms_key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : user_settings__canvas_app_settings__workspace_settings) ->
  ()

let yojson_of_user_settings__canvas_app_settings__workspace_settings
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
    : user_settings__canvas_app_settings__workspace_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__canvas_app_settings__workspace_settings

[@@@deriving.end]

type user_settings__canvas_app_settings = {
  direct_deploy_settings :
    user_settings__canvas_app_settings__direct_deploy_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity_provider_oauth_settings :
    user_settings__canvas_app_settings__identity_provider_oauth_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kendra_settings :
    user_settings__canvas_app_settings__kendra_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  model_register_settings :
    user_settings__canvas_app_settings__model_register_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  time_series_forecasting_settings :
    user_settings__canvas_app_settings__time_series_forecasting_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workspace_settings :
    user_settings__canvas_app_settings__workspace_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings__canvas_app_settings) -> ()

let yojson_of_user_settings__canvas_app_settings =
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
         if Stdlib.( = ) [] v_workspace_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__canvas_app_settings__workspace_settings)
               v_workspace_settings
           in
           let bnd = "workspace_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_time_series_forecasting_settings then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__canvas_app_settings__time_series_forecasting_settings)
               v_time_series_forecasting_settings
           in
           let bnd = "time_series_forecasting_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_model_register_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__canvas_app_settings__model_register_settings)
               v_model_register_settings
           in
           let bnd = "model_register_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kendra_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__canvas_app_settings__kendra_settings)
               v_kendra_settings
           in
           let bnd = "kendra_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_provider_oauth_settings then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__canvas_app_settings__identity_provider_oauth_settings)
               v_identity_provider_oauth_settings
           in
           let bnd = "identity_provider_oauth_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_direct_deploy_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__canvas_app_settings__direct_deploy_settings)
               v_direct_deploy_settings
           in
           let bnd = "direct_deploy_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : user_settings__canvas_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__canvas_app_settings

[@@@deriving.end]

type user_settings__code_editor_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__code_editor_app_settings__default_resource_spec) ->
  ()

let yojson_of_user_settings__code_editor_app_settings__default_resource_spec
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
    : user_settings__code_editor_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__code_editor_app_settings__default_resource_spec

[@@@deriving.end]

type user_settings__code_editor_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  default_resource_spec :
    user_settings__code_editor_app_settings__default_resource_spec
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings__code_editor_app_settings) -> ()

let yojson_of_user_settings__code_editor_app_settings =
  (function
   | {
       lifecycle_config_arns = v_lifecycle_config_arns;
       default_resource_spec = v_default_resource_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_default_resource_spec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__code_editor_app_settings__default_resource_spec)
               v_default_resource_spec
           in
           let bnd = "default_resource_spec", arg in
           bnd :: bnds
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
    : user_settings__code_editor_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__code_editor_app_settings

[@@@deriving.end]

type user_settings__custom_file_system_config__efs_file_system_config = {
  file_system_id : string prop;
  file_system_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__custom_file_system_config__efs_file_system_config) ->
  ()

let yojson_of_user_settings__custom_file_system_config__efs_file_system_config
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
         match v_file_system_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       `Assoc bnds
    : user_settings__custom_file_system_config__efs_file_system_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__custom_file_system_config__efs_file_system_config

[@@@deriving.end]

type user_settings__custom_file_system_config = {
  efs_file_system_config :
    user_settings__custom_file_system_config__efs_file_system_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings__custom_file_system_config) -> ()

let yojson_of_user_settings__custom_file_system_config =
  (function
   | { efs_file_system_config = v_efs_file_system_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_efs_file_system_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__custom_file_system_config__efs_file_system_config)
               v_efs_file_system_config
           in
           let bnd = "efs_file_system_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : user_settings__custom_file_system_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__custom_file_system_config

[@@@deriving.end]

type user_settings__custom_posix_user_config = {
  gid : float prop;
  uid : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings__custom_posix_user_config) -> ()

let yojson_of_user_settings__custom_posix_user_config =
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
    : user_settings__custom_posix_user_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__custom_posix_user_config

[@@@deriving.end]

type user_settings__jupyter_lab_app_settings__code_repository = {
  repository_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : user_settings__jupyter_lab_app_settings__code_repository) ->
  ()

let yojson_of_user_settings__jupyter_lab_app_settings__code_repository
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
    : user_settings__jupyter_lab_app_settings__code_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__jupyter_lab_app_settings__code_repository

[@@@deriving.end]

type user_settings__jupyter_lab_app_settings__custom_image = {
  app_image_config_name : string prop;
  image_name : string prop;
  image_version_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : user_settings__jupyter_lab_app_settings__custom_image) ->
  ()

let yojson_of_user_settings__jupyter_lab_app_settings__custom_image =
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
    : user_settings__jupyter_lab_app_settings__custom_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__jupyter_lab_app_settings__custom_image

[@@@deriving.end]

type user_settings__jupyter_lab_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__jupyter_lab_app_settings__default_resource_spec) ->
  ()

let yojson_of_user_settings__jupyter_lab_app_settings__default_resource_spec
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
    : user_settings__jupyter_lab_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__jupyter_lab_app_settings__default_resource_spec

[@@@deriving.end]

type user_settings__jupyter_lab_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  code_repository :
    user_settings__jupyter_lab_app_settings__code_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_image :
    user_settings__jupyter_lab_app_settings__custom_image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_resource_spec :
    user_settings__jupyter_lab_app_settings__default_resource_spec
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings__jupyter_lab_app_settings) -> ()

let yojson_of_user_settings__jupyter_lab_app_settings =
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
         if Stdlib.( = ) [] v_default_resource_spec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__jupyter_lab_app_settings__default_resource_spec)
               v_default_resource_spec
           in
           let bnd = "default_resource_spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_image then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__jupyter_lab_app_settings__custom_image)
               v_custom_image
           in
           let bnd = "custom_image", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_code_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__jupyter_lab_app_settings__code_repository)
               v_code_repository
           in
           let bnd = "code_repository", arg in
           bnd :: bnds
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
    : user_settings__jupyter_lab_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__jupyter_lab_app_settings

[@@@deriving.end]

type user_settings__jupyter_server_app_settings__code_repository = {
  repository_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__jupyter_server_app_settings__code_repository) ->
  ()

let yojson_of_user_settings__jupyter_server_app_settings__code_repository
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
    : user_settings__jupyter_server_app_settings__code_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__jupyter_server_app_settings__code_repository

[@@@deriving.end]

type user_settings__jupyter_server_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__jupyter_server_app_settings__default_resource_spec) ->
  ()

let yojson_of_user_settings__jupyter_server_app_settings__default_resource_spec
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
    : user_settings__jupyter_server_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__jupyter_server_app_settings__default_resource_spec

[@@@deriving.end]

type user_settings__jupyter_server_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  code_repository :
    user_settings__jupyter_server_app_settings__code_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_resource_spec :
    user_settings__jupyter_server_app_settings__default_resource_spec
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings__jupyter_server_app_settings) -> ()

let yojson_of_user_settings__jupyter_server_app_settings =
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
         if Stdlib.( = ) [] v_default_resource_spec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__jupyter_server_app_settings__default_resource_spec)
               v_default_resource_spec
           in
           let bnd = "default_resource_spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_code_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__jupyter_server_app_settings__code_repository)
               v_code_repository
           in
           let bnd = "code_repository", arg in
           bnd :: bnds
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
    : user_settings__jupyter_server_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__jupyter_server_app_settings

[@@@deriving.end]

type user_settings__kernel_gateway_app_settings__custom_image = {
  app_image_config_name : string prop;
  image_name : string prop;
  image_version_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : user_settings__kernel_gateway_app_settings__custom_image) ->
  ()

let yojson_of_user_settings__kernel_gateway_app_settings__custom_image
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
    : user_settings__kernel_gateway_app_settings__custom_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__kernel_gateway_app_settings__custom_image

[@@@deriving.end]

type user_settings__kernel_gateway_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__kernel_gateway_app_settings__default_resource_spec) ->
  ()

let yojson_of_user_settings__kernel_gateway_app_settings__default_resource_spec
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
    : user_settings__kernel_gateway_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__kernel_gateway_app_settings__default_resource_spec

[@@@deriving.end]

type user_settings__kernel_gateway_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  custom_image :
    user_settings__kernel_gateway_app_settings__custom_image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_resource_spec :
    user_settings__kernel_gateway_app_settings__default_resource_spec
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings__kernel_gateway_app_settings) -> ()

let yojson_of_user_settings__kernel_gateway_app_settings =
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
         if Stdlib.( = ) [] v_default_resource_spec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__kernel_gateway_app_settings__default_resource_spec)
               v_default_resource_spec
           in
           let bnd = "default_resource_spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_image then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__kernel_gateway_app_settings__custom_image)
               v_custom_image
           in
           let bnd = "custom_image", arg in
           bnd :: bnds
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
    : user_settings__kernel_gateway_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__kernel_gateway_app_settings

[@@@deriving.end]

type user_settings__r_session_app_settings__custom_image = {
  app_image_config_name : string prop;
  image_name : string prop;
  image_version_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : user_settings__r_session_app_settings__custom_image) -> ()

let yojson_of_user_settings__r_session_app_settings__custom_image =
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
    : user_settings__r_session_app_settings__custom_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__r_session_app_settings__custom_image

[@@@deriving.end]

type user_settings__r_session_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__r_session_app_settings__default_resource_spec) ->
  ()

let yojson_of_user_settings__r_session_app_settings__default_resource_spec
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
    : user_settings__r_session_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__r_session_app_settings__default_resource_spec

[@@@deriving.end]

type user_settings__r_session_app_settings = {
  custom_image :
    user_settings__r_session_app_settings__custom_image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_resource_spec :
    user_settings__r_session_app_settings__default_resource_spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings__r_session_app_settings) -> ()

let yojson_of_user_settings__r_session_app_settings =
  (function
   | {
       custom_image = v_custom_image;
       default_resource_spec = v_default_resource_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_default_resource_spec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__r_session_app_settings__default_resource_spec)
               v_default_resource_spec
           in
           let bnd = "default_resource_spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_image then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__r_session_app_settings__custom_image)
               v_custom_image
           in
           let bnd = "custom_image", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : user_settings__r_session_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__r_session_app_settings

[@@@deriving.end]

type user_settings__r_studio_server_pro_app_settings = {
  access_status : string prop option; [@option]
  user_group : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : user_settings__r_studio_server_pro_app_settings) -> ()

let yojson_of_user_settings__r_studio_server_pro_app_settings =
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
    : user_settings__r_studio_server_pro_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__r_studio_server_pro_app_settings

[@@@deriving.end]

type user_settings__sharing_settings = {
  notebook_output_option : string prop option; [@option]
  s3_kms_key_id : string prop option; [@option]
  s3_output_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings__sharing_settings) -> ()

let yojson_of_user_settings__sharing_settings =
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
    : user_settings__sharing_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__sharing_settings

[@@@deriving.end]

type user_settings__space_storage_settings__default_ebs_storage_settings = {
  default_ebs_volume_size_in_gb : float prop;
  maximum_ebs_volume_size_in_gb : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__space_storage_settings__default_ebs_storage_settings) ->
  ()

let yojson_of_user_settings__space_storage_settings__default_ebs_storage_settings
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
    : user_settings__space_storage_settings__default_ebs_storage_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__space_storage_settings__default_ebs_storage_settings

[@@@deriving.end]

type user_settings__space_storage_settings = {
  default_ebs_storage_settings :
    user_settings__space_storage_settings__default_ebs_storage_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings__space_storage_settings) -> ()

let yojson_of_user_settings__space_storage_settings =
  (function
   | {
       default_ebs_storage_settings = v_default_ebs_storage_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_default_ebs_storage_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__space_storage_settings__default_ebs_storage_settings)
               v_default_ebs_storage_settings
           in
           let bnd = "default_ebs_storage_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : user_settings__space_storage_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__space_storage_settings

[@@@deriving.end]

type user_settings__tensor_board_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       user_settings__tensor_board_app_settings__default_resource_spec) ->
  ()

let yojson_of_user_settings__tensor_board_app_settings__default_resource_spec
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
    : user_settings__tensor_board_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_user_settings__tensor_board_app_settings__default_resource_spec

[@@@deriving.end]

type user_settings__tensor_board_app_settings = {
  default_resource_spec :
    user_settings__tensor_board_app_settings__default_resource_spec
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings__tensor_board_app_settings) -> ()

let yojson_of_user_settings__tensor_board_app_settings =
  (function
   | { default_resource_spec = v_default_resource_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_default_resource_spec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__tensor_board_app_settings__default_resource_spec)
               v_default_resource_spec
           in
           let bnd = "default_resource_spec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : user_settings__tensor_board_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings__tensor_board_app_settings

[@@@deriving.end]

type user_settings = {
  default_landing_uri : string prop option; [@option]
  execution_role : string prop;
  security_groups : string prop list option; [@option]
  studio_web_portal : string prop option; [@option]
  canvas_app_settings : user_settings__canvas_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  code_editor_app_settings :
    user_settings__code_editor_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_file_system_config :
    user_settings__custom_file_system_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_posix_user_config :
    user_settings__custom_posix_user_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  jupyter_lab_app_settings :
    user_settings__jupyter_lab_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  jupyter_server_app_settings :
    user_settings__jupyter_server_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kernel_gateway_app_settings :
    user_settings__kernel_gateway_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  r_session_app_settings :
    user_settings__r_session_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  r_studio_server_pro_app_settings :
    user_settings__r_studio_server_pro_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sharing_settings : user_settings__sharing_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  space_storage_settings :
    user_settings__space_storage_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tensor_board_app_settings :
    user_settings__tensor_board_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings) -> ()

let yojson_of_user_settings =
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
         if Stdlib.( = ) [] v_tensor_board_app_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__tensor_board_app_settings)
               v_tensor_board_app_settings
           in
           let bnd = "tensor_board_app_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_space_storage_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__space_storage_settings)
               v_space_storage_settings
           in
           let bnd = "space_storage_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sharing_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__sharing_settings)
               v_sharing_settings
           in
           let bnd = "sharing_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_r_studio_server_pro_app_settings then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__r_studio_server_pro_app_settings)
               v_r_studio_server_pro_app_settings
           in
           let bnd = "r_studio_server_pro_app_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_r_session_app_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__r_session_app_settings)
               v_r_session_app_settings
           in
           let bnd = "r_session_app_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kernel_gateway_app_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__kernel_gateway_app_settings)
               v_kernel_gateway_app_settings
           in
           let bnd = "kernel_gateway_app_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_jupyter_server_app_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__jupyter_server_app_settings)
               v_jupyter_server_app_settings
           in
           let bnd = "jupyter_server_app_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_jupyter_lab_app_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__jupyter_lab_app_settings)
               v_jupyter_lab_app_settings
           in
           let bnd = "jupyter_lab_app_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_posix_user_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__custom_posix_user_config)
               v_custom_posix_user_config
           in
           let bnd = "custom_posix_user_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_file_system_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__custom_file_system_config)
               v_custom_file_system_config
           in
           let bnd = "custom_file_system_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_code_editor_app_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__code_editor_app_settings)
               v_code_editor_app_settings
           in
           let bnd = "code_editor_app_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_canvas_app_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_settings__canvas_app_settings)
               v_canvas_app_settings
           in
           let bnd = "canvas_app_settings", arg in
           bnd :: bnds
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
    : user_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings

[@@@deriving.end]

type aws_sagemaker_user_profile = {
  domain_id : string prop;
  id : string prop option; [@option]
  single_sign_on_user_identifier : string prop option; [@option]
  single_sign_on_user_value : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  user_profile_name : string prop;
  user_settings : user_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_user_profile) -> ()

let yojson_of_aws_sagemaker_user_profile =
  (function
   | {
       domain_id = v_domain_id;
       id = v_id;
       single_sign_on_user_identifier =
         v_single_sign_on_user_identifier;
       single_sign_on_user_value = v_single_sign_on_user_value;
       tags = v_tags;
       tags_all = v_tags_all;
       user_profile_name = v_user_profile_name;
       user_settings = v_user_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_user_settings) v_user_settings
           in
           let bnd = "user_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_user_profile_name
         in
         ("user_profile_name", arg) :: bnds
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
         match v_single_sign_on_user_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "single_sign_on_user_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_single_sign_on_user_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "single_sign_on_user_identifier", arg in
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
       `Assoc bnds
    : aws_sagemaker_user_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_user_profile

[@@@deriving.end]

let user_settings__canvas_app_settings__direct_deploy_settings
    ?status () :
    user_settings__canvas_app_settings__direct_deploy_settings =
  { status }

let user_settings__canvas_app_settings__identity_provider_oauth_settings
    ?data_source_name ?status ~secret_arn () :
    user_settings__canvas_app_settings__identity_provider_oauth_settings
    =
  { data_source_name; secret_arn; status }

let user_settings__canvas_app_settings__kendra_settings ?status () :
    user_settings__canvas_app_settings__kendra_settings =
  { status }

let user_settings__canvas_app_settings__model_register_settings
    ?cross_account_model_register_role_arn ?status () :
    user_settings__canvas_app_settings__model_register_settings =
  { cross_account_model_register_role_arn; status }

let user_settings__canvas_app_settings__time_series_forecasting_settings
    ?amazon_forecast_role_arn ?status () :
    user_settings__canvas_app_settings__time_series_forecasting_settings
    =
  { amazon_forecast_role_arn; status }

let user_settings__canvas_app_settings__workspace_settings
    ?s3_artifact_path ?s3_kms_key_id () :
    user_settings__canvas_app_settings__workspace_settings =
  { s3_artifact_path; s3_kms_key_id }

let user_settings__canvas_app_settings ?(direct_deploy_settings = [])
    ?(identity_provider_oauth_settings = []) ?(kendra_settings = [])
    ?(model_register_settings = [])
    ?(time_series_forecasting_settings = [])
    ?(workspace_settings = []) () :
    user_settings__canvas_app_settings =
  {
    direct_deploy_settings;
    identity_provider_oauth_settings;
    kendra_settings;
    model_register_settings;
    time_series_forecasting_settings;
    workspace_settings;
  }

let user_settings__code_editor_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    user_settings__code_editor_app_settings__default_resource_spec =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let user_settings__code_editor_app_settings ?lifecycle_config_arns
    ?(default_resource_spec = []) () :
    user_settings__code_editor_app_settings =
  { lifecycle_config_arns; default_resource_spec }

let user_settings__custom_file_system_config__efs_file_system_config
    ?file_system_path ~file_system_id () :
    user_settings__custom_file_system_config__efs_file_system_config
    =
  { file_system_id; file_system_path }

let user_settings__custom_file_system_config
    ?(efs_file_system_config = []) () :
    user_settings__custom_file_system_config =
  { efs_file_system_config }

let user_settings__custom_posix_user_config ~gid ~uid () :
    user_settings__custom_posix_user_config =
  { gid; uid }

let user_settings__jupyter_lab_app_settings__code_repository
    ~repository_url () :
    user_settings__jupyter_lab_app_settings__code_repository =
  { repository_url }

let user_settings__jupyter_lab_app_settings__custom_image
    ?image_version_number ~app_image_config_name ~image_name () :
    user_settings__jupyter_lab_app_settings__custom_image =
  { app_image_config_name; image_name; image_version_number }

let user_settings__jupyter_lab_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    user_settings__jupyter_lab_app_settings__default_resource_spec =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let user_settings__jupyter_lab_app_settings ?lifecycle_config_arns
    ?(custom_image = []) ?(default_resource_spec = [])
    ~code_repository () : user_settings__jupyter_lab_app_settings =
  {
    lifecycle_config_arns;
    code_repository;
    custom_image;
    default_resource_spec;
  }

let user_settings__jupyter_server_app_settings__code_repository
    ~repository_url () :
    user_settings__jupyter_server_app_settings__code_repository =
  { repository_url }

let user_settings__jupyter_server_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    user_settings__jupyter_server_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let user_settings__jupyter_server_app_settings ?lifecycle_config_arns
    ?(default_resource_spec = []) ~code_repository () :
    user_settings__jupyter_server_app_settings =
  { lifecycle_config_arns; code_repository; default_resource_spec }

let user_settings__kernel_gateway_app_settings__custom_image
    ?image_version_number ~app_image_config_name ~image_name () :
    user_settings__kernel_gateway_app_settings__custom_image =
  { app_image_config_name; image_name; image_version_number }

let user_settings__kernel_gateway_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    user_settings__kernel_gateway_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let user_settings__kernel_gateway_app_settings ?lifecycle_config_arns
    ?(custom_image = []) ?(default_resource_spec = []) () :
    user_settings__kernel_gateway_app_settings =
  { lifecycle_config_arns; custom_image; default_resource_spec }

let user_settings__r_session_app_settings__custom_image
    ?image_version_number ~app_image_config_name ~image_name () :
    user_settings__r_session_app_settings__custom_image =
  { app_image_config_name; image_name; image_version_number }

let user_settings__r_session_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    user_settings__r_session_app_settings__default_resource_spec =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let user_settings__r_session_app_settings ?(custom_image = [])
    ?(default_resource_spec = []) () :
    user_settings__r_session_app_settings =
  { custom_image; default_resource_spec }

let user_settings__r_studio_server_pro_app_settings ?access_status
    ?user_group () : user_settings__r_studio_server_pro_app_settings
    =
  { access_status; user_group }

let user_settings__sharing_settings ?notebook_output_option
    ?s3_kms_key_id ?s3_output_path () :
    user_settings__sharing_settings =
  { notebook_output_option; s3_kms_key_id; s3_output_path }

let user_settings__space_storage_settings__default_ebs_storage_settings
    ~default_ebs_volume_size_in_gb ~maximum_ebs_volume_size_in_gb ()
    :
    user_settings__space_storage_settings__default_ebs_storage_settings
    =
  { default_ebs_volume_size_in_gb; maximum_ebs_volume_size_in_gb }

let user_settings__space_storage_settings
    ?(default_ebs_storage_settings = []) () :
    user_settings__space_storage_settings =
  { default_ebs_storage_settings }

let user_settings__tensor_board_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    user_settings__tensor_board_app_settings__default_resource_spec =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let user_settings__tensor_board_app_settings
    ?(default_resource_spec = []) () :
    user_settings__tensor_board_app_settings =
  { default_resource_spec }

let user_settings ?default_landing_uri ?security_groups
    ?studio_web_portal ?(canvas_app_settings = [])
    ?(code_editor_app_settings = [])
    ?(custom_file_system_config = [])
    ?(custom_posix_user_config = []) ?(jupyter_lab_app_settings = [])
    ?(jupyter_server_app_settings = [])
    ?(kernel_gateway_app_settings = [])
    ?(r_session_app_settings = [])
    ?(r_studio_server_pro_app_settings = []) ?(sharing_settings = [])
    ?(space_storage_settings = []) ?(tensor_board_app_settings = [])
    ~execution_role () : user_settings =
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

let aws_sagemaker_user_profile ?id ?single_sign_on_user_identifier
    ?single_sign_on_user_value ?tags ?tags_all ?(user_settings = [])
    ~domain_id ~user_profile_name () : aws_sagemaker_user_profile =
  {
    domain_id;
    id;
    single_sign_on_user_identifier;
    single_sign_on_user_value;
    tags;
    tags_all;
    user_profile_name;
    user_settings;
  }

type t = {
  tf_name : string;
  arn : string prop;
  domain_id : string prop;
  home_efs_file_system_uid : string prop;
  id : string prop;
  single_sign_on_user_identifier : string prop;
  single_sign_on_user_value : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_profile_name : string prop;
}

let make ?id ?single_sign_on_user_identifier
    ?single_sign_on_user_value ?tags ?tags_all ?(user_settings = [])
    ~domain_id ~user_profile_name __id =
  let __type = "aws_sagemaker_user_profile" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       domain_id = Prop.computed __type __id "domain_id";
       home_efs_file_system_uid =
         Prop.computed __type __id "home_efs_file_system_uid";
       id = Prop.computed __type __id "id";
       single_sign_on_user_identifier =
         Prop.computed __type __id "single_sign_on_user_identifier";
       single_sign_on_user_value =
         Prop.computed __type __id "single_sign_on_user_value";
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
      yojson_of_aws_sagemaker_user_profile
        (aws_sagemaker_user_profile ?id
           ?single_sign_on_user_identifier ?single_sign_on_user_value
           ?tags ?tags_all ~user_settings ~domain_id
           ~user_profile_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?single_sign_on_user_identifier
    ?single_sign_on_user_value ?tags ?tags_all ?(user_settings = [])
    ~domain_id ~user_profile_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?single_sign_on_user_identifier
      ?single_sign_on_user_value ?tags ?tags_all ~user_settings
      ~domain_id ~user_profile_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
