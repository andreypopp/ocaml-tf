(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__execute_command_configuration__log_configuration = {
  cloud_watch_encryption_enabled : bool prop option; [@option]
  cloud_watch_log_group_name : string prop option; [@option]
  s3_bucket_encryption_enabled : bool prop option; [@option]
  s3_bucket_name : string prop option; [@option]
  s3_key_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__execute_command_configuration__log_configuration) ->
  ()

let yojson_of_configuration__execute_command_configuration__log_configuration
    =
  (function
   | {
       cloud_watch_encryption_enabled =
         v_cloud_watch_encryption_enabled;
       cloud_watch_log_group_name = v_cloud_watch_log_group_name;
       s3_bucket_encryption_enabled = v_s3_bucket_encryption_enabled;
       s3_bucket_name = v_s3_bucket_name;
       s3_key_prefix = v_s3_key_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_bucket_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_bucket_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "s3_bucket_encryption_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_watch_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_watch_log_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_watch_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cloud_watch_encryption_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__execute_command_configuration__log_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__execute_command_configuration__log_configuration

[@@@deriving.end]

type configuration__execute_command_configuration = {
  kms_key_id : string prop option; [@option]
  logging : string prop option; [@option]
  log_configuration :
    configuration__execute_command_configuration__log_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__execute_command_configuration) -> ()

let yojson_of_configuration__execute_command_configuration =
  (function
   | {
       kms_key_id = v_kms_key_id;
       logging = v_logging;
       log_configuration = v_log_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_log_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__execute_command_configuration__log_configuration)
               v_log_configuration
           in
           let bnd = "log_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging", arg in
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
       `Assoc bnds
    : configuration__execute_command_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__execute_command_configuration

[@@@deriving.end]

type configuration__managed_storage_configuration = {
  fargate_ephemeral_storage_kms_key_id : string prop option;
      [@option]
  kms_key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__managed_storage_configuration) -> ()

let yojson_of_configuration__managed_storage_configuration =
  (function
   | {
       fargate_ephemeral_storage_kms_key_id =
         v_fargate_ephemeral_storage_kms_key_id;
       kms_key_id = v_kms_key_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_fargate_ephemeral_storage_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fargate_ephemeral_storage_kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__managed_storage_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__managed_storage_configuration

[@@@deriving.end]

type configuration = {
  execute_command_configuration :
    configuration__execute_command_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  managed_storage_configuration :
    configuration__managed_storage_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       execute_command_configuration =
         v_execute_command_configuration;
       managed_storage_configuration =
         v_managed_storage_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_managed_storage_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__managed_storage_configuration)
               v_managed_storage_configuration
           in
           let bnd = "managed_storage_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_execute_command_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__execute_command_configuration)
               v_execute_command_configuration
           in
           let bnd = "execute_command_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type service_connect_defaults = { namespace : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : service_connect_defaults) -> ()

let yojson_of_service_connect_defaults =
  (function
   | { namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       `Assoc bnds
    : service_connect_defaults -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_connect_defaults

[@@@deriving.end]

type setting = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : setting) -> ()

let yojson_of_setting =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_setting

[@@@deriving.end]

type aws_ecs_cluster = {
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  configuration : configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_connect_defaults : service_connect_defaults list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  setting : setting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_cluster) -> ()

let yojson_of_aws_ecs_cluster =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       configuration = v_configuration;
       service_connect_defaults = v_service_connect_defaults;
       setting = v_setting;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_setting then bnds
         else
           let arg = (yojson_of_list yojson_of_setting) v_setting in
           let bnd = "setting", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_service_connect_defaults then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_connect_defaults)
               v_service_connect_defaults
           in
           let bnd = "service_connect_defaults", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configuration) v_configuration
           in
           let bnd = "configuration", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ecs_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_cluster

[@@@deriving.end]

let configuration__execute_command_configuration__log_configuration
    ?cloud_watch_encryption_enabled ?cloud_watch_log_group_name
    ?s3_bucket_encryption_enabled ?s3_bucket_name ?s3_key_prefix () :
    configuration__execute_command_configuration__log_configuration =
  {
    cloud_watch_encryption_enabled;
    cloud_watch_log_group_name;
    s3_bucket_encryption_enabled;
    s3_bucket_name;
    s3_key_prefix;
  }

let configuration__execute_command_configuration ?kms_key_id ?logging
    ?(log_configuration = []) () :
    configuration__execute_command_configuration =
  { kms_key_id; logging; log_configuration }

let configuration__managed_storage_configuration
    ?fargate_ephemeral_storage_kms_key_id ?kms_key_id () :
    configuration__managed_storage_configuration =
  { fargate_ephemeral_storage_kms_key_id; kms_key_id }

let configuration ?(execute_command_configuration = [])
    ?(managed_storage_configuration = []) () : configuration =
  { execute_command_configuration; managed_storage_configuration }

let service_connect_defaults ~namespace () : service_connect_defaults
    =
  { namespace }

let setting ~name ~value () : setting = { name; value }

let aws_ecs_cluster ?id ?tags ?tags_all ?(configuration = [])
    ?(service_connect_defaults = []) ~name ~setting () :
    aws_ecs_cluster =
  {
    id;
    name;
    tags;
    tags_all;
    configuration;
    service_connect_defaults;
    setting;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?tags ?tags_all ?(configuration = [])
    ?(service_connect_defaults = []) ~name ~setting __id =
  let __type = "aws_ecs_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
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
      yojson_of_aws_ecs_cluster
        (aws_ecs_cluster ?id ?tags ?tags_all ~configuration
           ~service_connect_defaults ~name ~setting ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?(configuration = [])
    ?(service_connect_defaults = []) ~name ~setting __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~configuration ~service_connect_defaults
      ~name ~setting __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
