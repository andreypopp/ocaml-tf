(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__execute_command_configuration__log_configuration = {
  cloud_watch_encryption_enabled : bool prop option; [@option]
      (** cloud_watch_encryption_enabled *)
  cloud_watch_log_group_name : string prop option; [@option]
      (** cloud_watch_log_group_name *)
  s3_bucket_encryption_enabled : bool prop option; [@option]
      (** s3_bucket_encryption_enabled *)
  s3_bucket_name : string prop option; [@option]
      (** s3_bucket_name *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
}
[@@deriving yojson_of]
(** configuration__execute_command_configuration__log_configuration *)

type configuration__execute_command_configuration = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  logging : string prop option; [@option]  (** logging *)
  log_configuration :
    configuration__execute_command_configuration__log_configuration
    list;
}
[@@deriving yojson_of]
(** configuration__execute_command_configuration *)

type configuration = {
  execute_command_configuration :
    configuration__execute_command_configuration list;
}
[@@deriving yojson_of]
(** configuration *)

type service_connect_defaults = {
  namespace : string prop;  (** namespace *)
}
[@@deriving yojson_of]
(** service_connect_defaults *)

type setting = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** setting *)

type aws_ecs_cluster = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  configuration : configuration list;
  service_connect_defaults : service_connect_defaults list;
  setting : setting list;
}
[@@deriving yojson_of]
(** aws_ecs_cluster *)

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
    ~log_configuration () :
    configuration__execute_command_configuration =
  { kms_key_id; logging; log_configuration }

let configuration ~execute_command_configuration () : configuration =
  { execute_command_configuration }

let service_connect_defaults ~namespace () : service_connect_defaults
    =
  { namespace }

let setting ~name ~value () : setting = { name; value }

let aws_ecs_cluster ?id ?tags ?tags_all ~name ~configuration
    ~service_connect_defaults ~setting () : aws_ecs_cluster =
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
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~name ~configuration
    ~service_connect_defaults ~setting __id =
  let __type = "aws_ecs_cluster" in
  let __attrs =
    ({
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
        (aws_ecs_cluster ?id ?tags ?tags_all ~name ~configuration
           ~service_connect_defaults ~setting ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~configuration
    ~service_connect_defaults ~setting __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~configuration
      ~service_connect_defaults ~setting __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
