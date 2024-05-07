(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type content_config = {
  bucket : string prop option; [@option]
  storage_class : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : content_config) -> ()

let yojson_of_content_config =
  (function
   | { bucket = v_bucket; storage_class = v_storage_class } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : content_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_content_config

[@@@deriving.end]

type content_config_permissions = {
  access : string prop list option; [@option]
  grantee : string prop option; [@option]
  grantee_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : content_config_permissions) -> ()

let yojson_of_content_config_permissions =
  (function
   | {
       access = v_access;
       grantee = v_grantee;
       grantee_type = v_grantee_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_grantee_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grantee_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_grantee with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grantee", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "access", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : content_config_permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_content_config_permissions

[@@@deriving.end]

type notifications = {
  completed : string prop option; [@option]
  error : string prop option; [@option]
  progressing : string prop option; [@option]
  warning : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notifications) -> ()

let yojson_of_notifications =
  (function
   | {
       completed = v_completed;
       error = v_error;
       progressing = v_progressing;
       warning = v_warning;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_warning with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "warning", arg in
             bnd :: bnds
       in
       let bnds =
         match v_progressing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "progressing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "error", arg in
             bnd :: bnds
       in
       let bnds =
         match v_completed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "completed", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notifications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notifications

[@@@deriving.end]

type thumbnail_config = {
  bucket : string prop option; [@option]
  storage_class : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : thumbnail_config) -> ()

let yojson_of_thumbnail_config =
  (function
   | { bucket = v_bucket; storage_class = v_storage_class } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : thumbnail_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_thumbnail_config

[@@@deriving.end]

type thumbnail_config_permissions = {
  access : string prop list option; [@option]
  grantee : string prop option; [@option]
  grantee_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : thumbnail_config_permissions) -> ()

let yojson_of_thumbnail_config_permissions =
  (function
   | {
       access = v_access;
       grantee = v_grantee;
       grantee_type = v_grantee_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_grantee_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grantee_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_grantee with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grantee", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "access", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : thumbnail_config_permissions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_thumbnail_config_permissions

[@@@deriving.end]

type aws_elastictranscoder_pipeline = {
  aws_kms_key_arn : string prop option; [@option]
  id : string prop option; [@option]
  input_bucket : string prop;
  name : string prop option; [@option]
  output_bucket : string prop option; [@option]
  role : string prop;
  content_config : content_config list;
  content_config_permissions : content_config_permissions list;
  notifications : notifications list;
  thumbnail_config : thumbnail_config list;
  thumbnail_config_permissions : thumbnail_config_permissions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elastictranscoder_pipeline) -> ()

let yojson_of_aws_elastictranscoder_pipeline =
  (function
   | {
       aws_kms_key_arn = v_aws_kms_key_arn;
       id = v_id;
       input_bucket = v_input_bucket;
       name = v_name;
       output_bucket = v_output_bucket;
       role = v_role;
       content_config = v_content_config;
       content_config_permissions = v_content_config_permissions;
       notifications = v_notifications;
       thumbnail_config = v_thumbnail_config;
       thumbnail_config_permissions = v_thumbnail_config_permissions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_thumbnail_config_permissions
             v_thumbnail_config_permissions
         in
         ("thumbnail_config_permissions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_thumbnail_config
             v_thumbnail_config
         in
         ("thumbnail_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_notifications v_notifications
         in
         ("notifications", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_content_config_permissions
             v_content_config_permissions
         in
         ("content_config_permissions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_content_config v_content_config
         in
         ("content_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         match v_output_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_bucket", arg in
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
         let arg = yojson_of_prop yojson_of_string v_input_bucket in
         ("input_bucket", arg) :: bnds
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
         match v_aws_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_kms_key_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_elastictranscoder_pipeline ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elastictranscoder_pipeline

[@@@deriving.end]

let content_config ?bucket ?storage_class () : content_config =
  { bucket; storage_class }

let content_config_permissions ?access ?grantee ?grantee_type () :
    content_config_permissions =
  { access; grantee; grantee_type }

let notifications ?completed ?error ?progressing ?warning () :
    notifications =
  { completed; error; progressing; warning }

let thumbnail_config ?bucket ?storage_class () : thumbnail_config =
  { bucket; storage_class }

let thumbnail_config_permissions ?access ?grantee ?grantee_type () :
    thumbnail_config_permissions =
  { access; grantee; grantee_type }

let aws_elastictranscoder_pipeline ?aws_kms_key_arn ?id ?name
    ?output_bucket ?(content_config = []) ?(notifications = [])
    ?(thumbnail_config = []) ~input_bucket ~role
    ~content_config_permissions ~thumbnail_config_permissions () :
    aws_elastictranscoder_pipeline =
  {
    aws_kms_key_arn;
    id;
    input_bucket;
    name;
    output_bucket;
    role;
    content_config;
    content_config_permissions;
    notifications;
    thumbnail_config;
    thumbnail_config_permissions;
  }

type t = {
  tf_name : string;
  arn : string prop;
  aws_kms_key_arn : string prop;
  id : string prop;
  input_bucket : string prop;
  name : string prop;
  output_bucket : string prop;
  role : string prop;
}

let make ?aws_kms_key_arn ?id ?name ?output_bucket
    ?(content_config = []) ?(notifications = [])
    ?(thumbnail_config = []) ~input_bucket ~role
    ~content_config_permissions ~thumbnail_config_permissions __id =
  let __type = "aws_elastictranscoder_pipeline" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       aws_kms_key_arn = Prop.computed __type __id "aws_kms_key_arn";
       id = Prop.computed __type __id "id";
       input_bucket = Prop.computed __type __id "input_bucket";
       name = Prop.computed __type __id "name";
       output_bucket = Prop.computed __type __id "output_bucket";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elastictranscoder_pipeline
        (aws_elastictranscoder_pipeline ?aws_kms_key_arn ?id ?name
           ?output_bucket ~content_config ~notifications
           ~thumbnail_config ~input_bucket ~role
           ~content_config_permissions ~thumbnail_config_permissions
           ());
    attrs = __attrs;
  }

let register ?tf_module ?aws_kms_key_arn ?id ?name ?output_bucket
    ?(content_config = []) ?(notifications = [])
    ?(thumbnail_config = []) ~input_bucket ~role
    ~content_config_permissions ~thumbnail_config_permissions __id =
  let (r : _ Tf_core.resource) =
    make ?aws_kms_key_arn ?id ?name ?output_bucket ~content_config
      ~notifications ~thumbnail_config ~input_bucket ~role
      ~content_config_permissions ~thumbnail_config_permissions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
