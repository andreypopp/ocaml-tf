(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dead_letter_config = {
  target_arn : string prop;  (** target_arn *)
}
[@@deriving yojson_of]
(** dead_letter_config *)

type environment = {
  variables : (string * string prop) list option; [@option]
      (** variables *)
}
[@@deriving yojson_of]
(** environment *)

type ephemeral_storage = {
  size : float prop option; [@option]  (** size *)
}
[@@deriving yojson_of]
(** ephemeral_storage *)

type file_system_config = {
  arn : string prop;  (** arn *)
  local_mount_path : string prop;  (** local_mount_path *)
}
[@@deriving yojson_of]
(** file_system_config *)

type image_config = {
  command : string prop list option; [@option]  (** command *)
  entry_point : string prop list option; [@option]
      (** entry_point *)
  working_directory : string prop option; [@option]
      (** working_directory *)
}
[@@deriving yojson_of]
(** image_config *)

type logging_config = {
  application_log_level : string prop option; [@option]
      (** application_log_level *)
  log_format : string prop;  (** log_format *)
  log_group : string prop option; [@option]  (** log_group *)
  system_log_level : string prop option; [@option]
      (** system_log_level *)
}
[@@deriving yojson_of]
(** logging_config *)

type snap_start = { apply_on : string prop  (** apply_on *) }
[@@deriving yojson_of]
(** snap_start *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type tracing_config = { mode : string prop  (** mode *) }
[@@deriving yojson_of]
(** tracing_config *)

type vpc_config = {
  ipv6_allowed_for_dual_stack : bool prop option; [@option]
      (** ipv6_allowed_for_dual_stack *)
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** vpc_config *)

type aws_lambda_function = {
  architectures : string prop list option; [@option]
      (** architectures *)
  code_signing_config_arn : string prop option; [@option]
      (** code_signing_config_arn *)
  description : string prop option; [@option]  (** description *)
  filename : string prop option; [@option]  (** filename *)
  function_name : string prop;  (** function_name *)
  handler : string prop option; [@option]  (** handler *)
  id : string prop option; [@option]  (** id *)
  image_uri : string prop option; [@option]  (** image_uri *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  layers : string prop list option; [@option]  (** layers *)
  memory_size : float prop option; [@option]  (** memory_size *)
  package_type : string prop option; [@option]  (** package_type *)
  publish : bool prop option; [@option]  (** publish *)
  replace_security_groups_on_destroy : bool prop option; [@option]
      (** replace_security_groups_on_destroy *)
  replacement_security_group_ids : string prop list option; [@option]
      (** replacement_security_group_ids *)
  reserved_concurrent_executions : float prop option; [@option]
      (** reserved_concurrent_executions *)
  role : string prop;  (** role *)
  runtime : string prop option; [@option]  (** runtime *)
  s3_bucket : string prop option; [@option]  (** s3_bucket *)
  s3_key : string prop option; [@option]  (** s3_key *)
  s3_object_version : string prop option; [@option]
      (** s3_object_version *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  source_code_hash : string prop option; [@option]
      (** source_code_hash *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeout : float prop option; [@option]  (** timeout *)
  dead_letter_config : dead_letter_config list;
  environment : environment list;
  ephemeral_storage : ephemeral_storage list;
  file_system_config : file_system_config list;
  image_config : image_config list;
  logging_config : logging_config list;
  snap_start : snap_start list;
  timeouts : timeouts option;
  tracing_config : tracing_config list;
  vpc_config : vpc_config list;
}
[@@deriving yojson_of]
(** aws_lambda_function *)

let dead_letter_config ~target_arn () : dead_letter_config =
  { target_arn }

let environment ?variables () : environment = { variables }
let ephemeral_storage ?size () : ephemeral_storage = { size }

let file_system_config ~arn ~local_mount_path () : file_system_config
    =
  { arn; local_mount_path }

let image_config ?command ?entry_point ?working_directory () :
    image_config =
  { command; entry_point; working_directory }

let logging_config ?application_log_level ?log_group
    ?system_log_level ~log_format () : logging_config =
  { application_log_level; log_format; log_group; system_log_level }

let snap_start ~apply_on () : snap_start = { apply_on }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let tracing_config ~mode () : tracing_config = { mode }

let vpc_config ?ipv6_allowed_for_dual_stack ~security_group_ids
    ~subnet_ids () : vpc_config =
  { ipv6_allowed_for_dual_stack; security_group_ids; subnet_ids }

let aws_lambda_function ?architectures ?code_signing_config_arn
    ?description ?filename ?handler ?id ?image_uri ?kms_key_arn
    ?layers ?memory_size ?package_type ?publish
    ?replace_security_groups_on_destroy
    ?replacement_security_group_ids ?reserved_concurrent_executions
    ?runtime ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?source_code_hash ?tags ?tags_all ?timeout ?timeouts
    ~function_name ~role ~dead_letter_config ~environment
    ~ephemeral_storage ~file_system_config ~image_config
    ~logging_config ~snap_start ~tracing_config ~vpc_config () :
    aws_lambda_function =
  {
    architectures;
    code_signing_config_arn;
    description;
    filename;
    function_name;
    handler;
    id;
    image_uri;
    kms_key_arn;
    layers;
    memory_size;
    package_type;
    publish;
    replace_security_groups_on_destroy;
    replacement_security_group_ids;
    reserved_concurrent_executions;
    role;
    runtime;
    s3_bucket;
    s3_key;
    s3_object_version;
    skip_destroy;
    source_code_hash;
    tags;
    tags_all;
    timeout;
    dead_letter_config;
    environment;
    ephemeral_storage;
    file_system_config;
    image_config;
    logging_config;
    snap_start;
    timeouts;
    tracing_config;
    vpc_config;
  }

type t = {
  architectures : string list prop;
  arn : string prop;
  code_signing_config_arn : string prop;
  description : string prop;
  filename : string prop;
  function_name : string prop;
  handler : string prop;
  id : string prop;
  image_uri : string prop;
  invoke_arn : string prop;
  kms_key_arn : string prop;
  last_modified : string prop;
  layers : string list prop;
  memory_size : float prop;
  package_type : string prop;
  publish : bool prop;
  qualified_arn : string prop;
  qualified_invoke_arn : string prop;
  replace_security_groups_on_destroy : bool prop;
  replacement_security_group_ids : string list prop;
  reserved_concurrent_executions : float prop;
  role : string prop;
  runtime : string prop;
  s3_bucket : string prop;
  s3_key : string prop;
  s3_object_version : string prop;
  signing_job_arn : string prop;
  signing_profile_version_arn : string prop;
  skip_destroy : bool prop;
  source_code_hash : string prop;
  source_code_size : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeout : float prop;
  version : string prop;
}

let make ?architectures ?code_signing_config_arn ?description
    ?filename ?handler ?id ?image_uri ?kms_key_arn ?layers
    ?memory_size ?package_type ?publish
    ?replace_security_groups_on_destroy
    ?replacement_security_group_ids ?reserved_concurrent_executions
    ?runtime ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?source_code_hash ?tags ?tags_all ?timeout ?timeouts
    ~function_name ~role ~dead_letter_config ~environment
    ~ephemeral_storage ~file_system_config ~image_config
    ~logging_config ~snap_start ~tracing_config ~vpc_config __id =
  let __type = "aws_lambda_function" in
  let __attrs =
    ({
       architectures = Prop.computed __type __id "architectures";
       arn = Prop.computed __type __id "arn";
       code_signing_config_arn =
         Prop.computed __type __id "code_signing_config_arn";
       description = Prop.computed __type __id "description";
       filename = Prop.computed __type __id "filename";
       function_name = Prop.computed __type __id "function_name";
       handler = Prop.computed __type __id "handler";
       id = Prop.computed __type __id "id";
       image_uri = Prop.computed __type __id "image_uri";
       invoke_arn = Prop.computed __type __id "invoke_arn";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       last_modified = Prop.computed __type __id "last_modified";
       layers = Prop.computed __type __id "layers";
       memory_size = Prop.computed __type __id "memory_size";
       package_type = Prop.computed __type __id "package_type";
       publish = Prop.computed __type __id "publish";
       qualified_arn = Prop.computed __type __id "qualified_arn";
       qualified_invoke_arn =
         Prop.computed __type __id "qualified_invoke_arn";
       replace_security_groups_on_destroy =
         Prop.computed __type __id
           "replace_security_groups_on_destroy";
       replacement_security_group_ids =
         Prop.computed __type __id "replacement_security_group_ids";
       reserved_concurrent_executions =
         Prop.computed __type __id "reserved_concurrent_executions";
       role = Prop.computed __type __id "role";
       runtime = Prop.computed __type __id "runtime";
       s3_bucket = Prop.computed __type __id "s3_bucket";
       s3_key = Prop.computed __type __id "s3_key";
       s3_object_version =
         Prop.computed __type __id "s3_object_version";
       signing_job_arn = Prop.computed __type __id "signing_job_arn";
       signing_profile_version_arn =
         Prop.computed __type __id "signing_profile_version_arn";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       source_code_hash =
         Prop.computed __type __id "source_code_hash";
       source_code_size =
         Prop.computed __type __id "source_code_size";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       timeout = Prop.computed __type __id "timeout";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_function
        (aws_lambda_function ?architectures ?code_signing_config_arn
           ?description ?filename ?handler ?id ?image_uri
           ?kms_key_arn ?layers ?memory_size ?package_type ?publish
           ?replace_security_groups_on_destroy
           ?replacement_security_group_ids
           ?reserved_concurrent_executions ?runtime ?s3_bucket
           ?s3_key ?s3_object_version ?skip_destroy ?source_code_hash
           ?tags ?tags_all ?timeout ?timeouts ~function_name ~role
           ~dead_letter_config ~environment ~ephemeral_storage
           ~file_system_config ~image_config ~logging_config
           ~snap_start ~tracing_config ~vpc_config ());
    attrs = __attrs;
  }

let register ?tf_module ?architectures ?code_signing_config_arn
    ?description ?filename ?handler ?id ?image_uri ?kms_key_arn
    ?layers ?memory_size ?package_type ?publish
    ?replace_security_groups_on_destroy
    ?replacement_security_group_ids ?reserved_concurrent_executions
    ?runtime ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?source_code_hash ?tags ?tags_all ?timeout ?timeouts
    ~function_name ~role ~dead_letter_config ~environment
    ~ephemeral_storage ~file_system_config ~image_config
    ~logging_config ~snap_start ~tracing_config ~vpc_config __id =
  let (r : _ Tf_core.resource) =
    make ?architectures ?code_signing_config_arn ?description
      ?filename ?handler ?id ?image_uri ?kms_key_arn ?layers
      ?memory_size ?package_type ?publish
      ?replace_security_groups_on_destroy
      ?replacement_security_group_ids ?reserved_concurrent_executions
      ?runtime ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
      ?source_code_hash ?tags ?tags_all ?timeout ?timeouts
      ~function_name ~role ~dead_letter_config ~environment
      ~ephemeral_storage ~file_system_config ~image_config
      ~logging_config ~snap_start ~tracing_config ~vpc_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
