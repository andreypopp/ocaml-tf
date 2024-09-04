(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ownership_settings = { owner_user_profile_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : ownership_settings) -> ()

let yojson_of_ownership_settings =
  (function
   | { owner_user_profile_name = v_owner_user_profile_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_owner_user_profile_name
         in
         ("owner_user_profile_name", arg) :: bnds
       in
       `Assoc bnds
    : ownership_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ownership_settings

[@@@deriving.end]

type space_settings__code_editor_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       space_settings__code_editor_app_settings__default_resource_spec) ->
  ()

let yojson_of_space_settings__code_editor_app_settings__default_resource_spec
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
    : space_settings__code_editor_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_space_settings__code_editor_app_settings__default_resource_spec

[@@@deriving.end]

type space_settings__code_editor_app_settings = {
  default_resource_spec :
    space_settings__code_editor_app_settings__default_resource_spec
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : space_settings__code_editor_app_settings) -> ()

let yojson_of_space_settings__code_editor_app_settings =
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
                yojson_of_space_settings__code_editor_app_settings__default_resource_spec)
               v_default_resource_spec
           in
           let bnd = "default_resource_spec", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : space_settings__code_editor_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_space_settings__code_editor_app_settings

[@@@deriving.end]

type space_settings__custom_file_system__efs_file_system = {
  file_system_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : space_settings__custom_file_system__efs_file_system) -> ()

let yojson_of_space_settings__custom_file_system__efs_file_system =
  (function
   | { file_system_id = v_file_system_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       `Assoc bnds
    : space_settings__custom_file_system__efs_file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_space_settings__custom_file_system__efs_file_system

[@@@deriving.end]

type space_settings__custom_file_system = {
  efs_file_system :
    space_settings__custom_file_system__efs_file_system list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : space_settings__custom_file_system) -> ()

let yojson_of_space_settings__custom_file_system =
  (function
   | { efs_file_system = v_efs_file_system } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_efs_file_system then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_space_settings__custom_file_system__efs_file_system)
               v_efs_file_system
           in
           let bnd = "efs_file_system", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : space_settings__custom_file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_space_settings__custom_file_system

[@@@deriving.end]

type space_settings__jupyter_lab_app_settings__code_repository = {
  repository_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : space_settings__jupyter_lab_app_settings__code_repository) ->
  ()

let yojson_of_space_settings__jupyter_lab_app_settings__code_repository
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
    : space_settings__jupyter_lab_app_settings__code_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_space_settings__jupyter_lab_app_settings__code_repository

[@@@deriving.end]

type space_settings__jupyter_lab_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       space_settings__jupyter_lab_app_settings__default_resource_spec) ->
  ()

let yojson_of_space_settings__jupyter_lab_app_settings__default_resource_spec
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
    : space_settings__jupyter_lab_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_space_settings__jupyter_lab_app_settings__default_resource_spec

[@@@deriving.end]

type space_settings__jupyter_lab_app_settings = {
  code_repository :
    space_settings__jupyter_lab_app_settings__code_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_resource_spec :
    space_settings__jupyter_lab_app_settings__default_resource_spec
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : space_settings__jupyter_lab_app_settings) -> ()

let yojson_of_space_settings__jupyter_lab_app_settings =
  (function
   | {
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
                yojson_of_space_settings__jupyter_lab_app_settings__default_resource_spec)
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
                yojson_of_space_settings__jupyter_lab_app_settings__code_repository)
               v_code_repository
           in
           let bnd = "code_repository", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : space_settings__jupyter_lab_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_space_settings__jupyter_lab_app_settings

[@@@deriving.end]

type space_settings__jupyter_server_app_settings__code_repository = {
  repository_url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       space_settings__jupyter_server_app_settings__code_repository) ->
  ()

let yojson_of_space_settings__jupyter_server_app_settings__code_repository
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
    : space_settings__jupyter_server_app_settings__code_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_space_settings__jupyter_server_app_settings__code_repository

[@@@deriving.end]

type space_settings__jupyter_server_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       space_settings__jupyter_server_app_settings__default_resource_spec) ->
  ()

let yojson_of_space_settings__jupyter_server_app_settings__default_resource_spec
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
    : space_settings__jupyter_server_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_space_settings__jupyter_server_app_settings__default_resource_spec

[@@@deriving.end]

type space_settings__jupyter_server_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  code_repository :
    space_settings__jupyter_server_app_settings__code_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_resource_spec :
    space_settings__jupyter_server_app_settings__default_resource_spec
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : space_settings__jupyter_server_app_settings) -> ()

let yojson_of_space_settings__jupyter_server_app_settings =
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
                yojson_of_space_settings__jupyter_server_app_settings__default_resource_spec)
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
                yojson_of_space_settings__jupyter_server_app_settings__code_repository)
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
    : space_settings__jupyter_server_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_space_settings__jupyter_server_app_settings

[@@@deriving.end]

type space_settings__kernel_gateway_app_settings__custom_image = {
  app_image_config_name : string prop;
  image_name : string prop;
  image_version_number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : space_settings__kernel_gateway_app_settings__custom_image) ->
  ()

let yojson_of_space_settings__kernel_gateway_app_settings__custom_image
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
    : space_settings__kernel_gateway_app_settings__custom_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_space_settings__kernel_gateway_app_settings__custom_image

[@@@deriving.end]

type space_settings__kernel_gateway_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]
  lifecycle_config_arn : string prop option; [@option]
  sagemaker_image_arn : string prop option; [@option]
  sagemaker_image_version_alias : string prop option; [@option]
  sagemaker_image_version_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       space_settings__kernel_gateway_app_settings__default_resource_spec) ->
  ()

let yojson_of_space_settings__kernel_gateway_app_settings__default_resource_spec
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
    : space_settings__kernel_gateway_app_settings__default_resource_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_space_settings__kernel_gateway_app_settings__default_resource_spec

[@@@deriving.end]

type space_settings__kernel_gateway_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
  custom_image :
    space_settings__kernel_gateway_app_settings__custom_image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_resource_spec :
    space_settings__kernel_gateway_app_settings__default_resource_spec
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : space_settings__kernel_gateway_app_settings) -> ()

let yojson_of_space_settings__kernel_gateway_app_settings =
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
                yojson_of_space_settings__kernel_gateway_app_settings__default_resource_spec)
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
                yojson_of_space_settings__kernel_gateway_app_settings__custom_image)
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
    : space_settings__kernel_gateway_app_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_space_settings__kernel_gateway_app_settings

[@@@deriving.end]

type space_settings__space_storage_settings__ebs_storage_settings = {
  ebs_volume_size_in_gb : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       space_settings__space_storage_settings__ebs_storage_settings) ->
  ()

let yojson_of_space_settings__space_storage_settings__ebs_storage_settings
    =
  (function
   | { ebs_volume_size_in_gb = v_ebs_volume_size_in_gb } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_ebs_volume_size_in_gb
         in
         ("ebs_volume_size_in_gb", arg) :: bnds
       in
       `Assoc bnds
    : space_settings__space_storage_settings__ebs_storage_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_space_settings__space_storage_settings__ebs_storage_settings

[@@@deriving.end]

type space_settings__space_storage_settings = {
  ebs_storage_settings :
    space_settings__space_storage_settings__ebs_storage_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : space_settings__space_storage_settings) -> ()

let yojson_of_space_settings__space_storage_settings =
  (function
   | { ebs_storage_settings = v_ebs_storage_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs_storage_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_space_settings__space_storage_settings__ebs_storage_settings)
               v_ebs_storage_settings
           in
           let bnd = "ebs_storage_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : space_settings__space_storage_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_space_settings__space_storage_settings

[@@@deriving.end]

type space_settings = {
  app_type : string prop option; [@option]
  code_editor_app_settings :
    space_settings__code_editor_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_file_system : space_settings__custom_file_system list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  jupyter_lab_app_settings :
    space_settings__jupyter_lab_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  jupyter_server_app_settings :
    space_settings__jupyter_server_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kernel_gateway_app_settings :
    space_settings__kernel_gateway_app_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  space_storage_settings :
    space_settings__space_storage_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : space_settings) -> ()

let yojson_of_space_settings =
  (function
   | {
       app_type = v_app_type;
       code_editor_app_settings = v_code_editor_app_settings;
       custom_file_system = v_custom_file_system;
       jupyter_lab_app_settings = v_jupyter_lab_app_settings;
       jupyter_server_app_settings = v_jupyter_server_app_settings;
       kernel_gateway_app_settings = v_kernel_gateway_app_settings;
       space_storage_settings = v_space_storage_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_space_storage_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_space_settings__space_storage_settings)
               v_space_storage_settings
           in
           let bnd = "space_storage_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kernel_gateway_app_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_space_settings__kernel_gateway_app_settings)
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
                yojson_of_space_settings__jupyter_server_app_settings)
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
                yojson_of_space_settings__jupyter_lab_app_settings)
               v_jupyter_lab_app_settings
           in
           let bnd = "jupyter_lab_app_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_file_system then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_space_settings__custom_file_system)
               v_custom_file_system
           in
           let bnd = "custom_file_system", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_code_editor_app_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_space_settings__code_editor_app_settings)
               v_code_editor_app_settings
           in
           let bnd = "code_editor_app_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_app_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : space_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_space_settings

[@@@deriving.end]

type space_sharing_settings = { sharing_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : space_sharing_settings) -> ()

let yojson_of_space_sharing_settings =
  (function
   | { sharing_type = v_sharing_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sharing_type in
         ("sharing_type", arg) :: bnds
       in
       `Assoc bnds
    : space_sharing_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_space_sharing_settings

[@@@deriving.end]

type aws_sagemaker_space = {
  domain_id : string prop;
  id : string prop option; [@option]
  space_display_name : string prop option; [@option]
  space_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  ownership_settings : ownership_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  space_settings : space_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  space_sharing_settings : space_sharing_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_space) -> ()

let yojson_of_aws_sagemaker_space =
  (function
   | {
       domain_id = v_domain_id;
       id = v_id;
       space_display_name = v_space_display_name;
       space_name = v_space_name;
       tags = v_tags;
       tags_all = v_tags_all;
       ownership_settings = v_ownership_settings;
       space_settings = v_space_settings;
       space_sharing_settings = v_space_sharing_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_space_sharing_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_space_sharing_settings)
               v_space_sharing_settings
           in
           let bnd = "space_sharing_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_space_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_space_settings)
               v_space_settings
           in
           let bnd = "space_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ownership_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ownership_settings)
               v_ownership_settings
           in
           let bnd = "ownership_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_space_name in
         ("space_name", arg) :: bnds
       in
       let bnds =
         match v_space_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "space_display_name", arg in
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
    : aws_sagemaker_space -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_space

[@@@deriving.end]

let ownership_settings ~owner_user_profile_name () :
    ownership_settings =
  { owner_user_profile_name }

let space_settings__code_editor_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    space_settings__code_editor_app_settings__default_resource_spec =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let space_settings__code_editor_app_settings ~default_resource_spec
    () : space_settings__code_editor_app_settings =
  { default_resource_spec }

let space_settings__custom_file_system__efs_file_system
    ~file_system_id () :
    space_settings__custom_file_system__efs_file_system =
  { file_system_id }

let space_settings__custom_file_system ~efs_file_system () :
    space_settings__custom_file_system =
  { efs_file_system }

let space_settings__jupyter_lab_app_settings__code_repository
    ~repository_url () :
    space_settings__jupyter_lab_app_settings__code_repository =
  { repository_url }

let space_settings__jupyter_lab_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    space_settings__jupyter_lab_app_settings__default_resource_spec =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let space_settings__jupyter_lab_app_settings ~code_repository
    ~default_resource_spec () :
    space_settings__jupyter_lab_app_settings =
  { code_repository; default_resource_spec }

let space_settings__jupyter_server_app_settings__code_repository
    ~repository_url () :
    space_settings__jupyter_server_app_settings__code_repository =
  { repository_url }

let space_settings__jupyter_server_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    space_settings__jupyter_server_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let space_settings__jupyter_server_app_settings
    ?lifecycle_config_arns ~code_repository ~default_resource_spec ()
    : space_settings__jupyter_server_app_settings =
  { lifecycle_config_arns; code_repository; default_resource_spec }

let space_settings__kernel_gateway_app_settings__custom_image
    ?image_version_number ~app_image_config_name ~image_name () :
    space_settings__kernel_gateway_app_settings__custom_image =
  { app_image_config_name; image_name; image_version_number }

let space_settings__kernel_gateway_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    space_settings__kernel_gateway_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let space_settings__kernel_gateway_app_settings
    ?lifecycle_config_arns ?(custom_image = [])
    ~default_resource_spec () :
    space_settings__kernel_gateway_app_settings =
  { lifecycle_config_arns; custom_image; default_resource_spec }

let space_settings__space_storage_settings__ebs_storage_settings
    ~ebs_volume_size_in_gb () :
    space_settings__space_storage_settings__ebs_storage_settings =
  { ebs_volume_size_in_gb }

let space_settings__space_storage_settings ~ebs_storage_settings () :
    space_settings__space_storage_settings =
  { ebs_storage_settings }

let space_settings ?app_type ?(code_editor_app_settings = [])
    ?(custom_file_system = []) ?(jupyter_lab_app_settings = [])
    ?(jupyter_server_app_settings = [])
    ?(kernel_gateway_app_settings = [])
    ?(space_storage_settings = []) () : space_settings =
  {
    app_type;
    code_editor_app_settings;
    custom_file_system;
    jupyter_lab_app_settings;
    jupyter_server_app_settings;
    kernel_gateway_app_settings;
    space_storage_settings;
  }

let space_sharing_settings ~sharing_type () : space_sharing_settings
    =
  { sharing_type }

let aws_sagemaker_space ?id ?space_display_name ?tags ?tags_all
    ?(ownership_settings = []) ?(space_settings = [])
    ?(space_sharing_settings = []) ~domain_id ~space_name () :
    aws_sagemaker_space =
  {
    domain_id;
    id;
    space_display_name;
    space_name;
    tags;
    tags_all;
    ownership_settings;
    space_settings;
    space_sharing_settings;
  }

type t = {
  tf_name : string;
  arn : string prop;
  domain_id : string prop;
  home_efs_file_system_uid : string prop;
  id : string prop;
  space_display_name : string prop;
  space_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  url : string prop;
}

let make ?id ?space_display_name ?tags ?tags_all
    ?(ownership_settings = []) ?(space_settings = [])
    ?(space_sharing_settings = []) ~domain_id ~space_name __id =
  let __type = "aws_sagemaker_space" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       domain_id = Prop.computed __type __id "domain_id";
       home_efs_file_system_uid =
         Prop.computed __type __id "home_efs_file_system_uid";
       id = Prop.computed __type __id "id";
       space_display_name =
         Prop.computed __type __id "space_display_name";
       space_name = Prop.computed __type __id "space_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_space
        (aws_sagemaker_space ?id ?space_display_name ?tags ?tags_all
           ~ownership_settings ~space_settings
           ~space_sharing_settings ~domain_id ~space_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?space_display_name ?tags ?tags_all
    ?(ownership_settings = []) ?(space_settings = [])
    ?(space_sharing_settings = []) ~domain_id ~space_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?space_display_name ?tags ?tags_all ~ownership_settings
      ~space_settings ~space_sharing_settings ~domain_id ~space_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
