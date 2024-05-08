(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_metadata_options = {
  http_put_response_hop_limit : float prop option; [@option]
  http_tokens : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_metadata_options) -> ()

let yojson_of_instance_metadata_options =
  (function
   | {
       http_put_response_hop_limit = v_http_put_response_hop_limit;
       http_tokens = v_http_tokens;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_http_tokens with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_tokens", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_put_response_hop_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_put_response_hop_limit", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_metadata_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_metadata_options

[@@@deriving.end]

type logging__s3_logs = {
  s3_bucket_name : string prop;
  s3_key_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging__s3_logs) -> ()

let yojson_of_logging__s3_logs =
  (function
   | {
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
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : logging__s3_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging__s3_logs

[@@@deriving.end]

type logging = {
  s3_logs : logging__s3_logs list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging) -> ()

let yojson_of_logging =
  (function
   | { s3_logs = v_s3_logs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_s3_logs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logging__s3_logs) v_s3_logs
           in
           let bnd = "s3_logs", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging

[@@@deriving.end]

type aws_imagebuilder_infrastructure_configuration = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  instance_profile_name : string prop;
  instance_types : string prop list option; [@option]
  key_pair : string prop option; [@option]
  name : string prop;
  resource_tags : (string * string prop) list option; [@option]
  security_group_ids : string prop list option; [@option]
  sns_topic_arn : string prop option; [@option]
  subnet_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  terminate_instance_on_failure : bool prop option; [@option]
  instance_metadata_options : instance_metadata_options list;
      [@default []] [@yojson_drop_default ( = )]
  logging : logging list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_infrastructure_configuration) -> ()

let yojson_of_aws_imagebuilder_infrastructure_configuration =
  (function
   | {
       description = v_description;
       id = v_id;
       instance_profile_name = v_instance_profile_name;
       instance_types = v_instance_types;
       key_pair = v_key_pair;
       name = v_name;
       resource_tags = v_resource_tags;
       security_group_ids = v_security_group_ids;
       sns_topic_arn = v_sns_topic_arn;
       subnet_id = v_subnet_id;
       tags = v_tags;
       tags_all = v_tags_all;
       terminate_instance_on_failure =
         v_terminate_instance_on_failure;
       instance_metadata_options = v_instance_metadata_options;
       logging = v_logging;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_logging then bnds
         else
           let arg = (yojson_of_list yojson_of_logging) v_logging in
           let bnd = "logging", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_instance_metadata_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_metadata_options)
               v_instance_metadata_options
           in
           let bnd = "instance_metadata_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_terminate_instance_on_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "terminate_instance_on_failure", arg in
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
         match v_sns_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sns_topic_arn", arg in
             bnd :: bnds
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
         match v_resource_tags with
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
             let bnd = "resource_tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_key_pair with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_pair", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instance_types", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_profile_name
         in
         ("instance_profile_name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_imagebuilder_infrastructure_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_infrastructure_configuration

[@@@deriving.end]

let instance_metadata_options ?http_put_response_hop_limit
    ?http_tokens () : instance_metadata_options =
  { http_put_response_hop_limit; http_tokens }

let logging__s3_logs ?s3_key_prefix ~s3_bucket_name () :
    logging__s3_logs =
  { s3_bucket_name; s3_key_prefix }

let logging ~s3_logs () : logging = { s3_logs }

let aws_imagebuilder_infrastructure_configuration ?description ?id
    ?instance_types ?key_pair ?resource_tags ?security_group_ids
    ?sns_topic_arn ?subnet_id ?tags ?tags_all
    ?terminate_instance_on_failure ?(instance_metadata_options = [])
    ?(logging = []) ~instance_profile_name ~name () :
    aws_imagebuilder_infrastructure_configuration =
  {
    description;
    id;
    instance_profile_name;
    instance_types;
    key_pair;
    name;
    resource_tags;
    security_group_ids;
    sns_topic_arn;
    subnet_id;
    tags;
    tags_all;
    terminate_instance_on_failure;
    instance_metadata_options;
    logging;
  }

type t = {
  tf_name : string;
  arn : string prop;
  date_created : string prop;
  date_updated : string prop;
  description : string prop;
  id : string prop;
  instance_profile_name : string prop;
  instance_types : string list prop;
  key_pair : string prop;
  name : string prop;
  resource_tags : (string * string) list prop;
  security_group_ids : string list prop;
  sns_topic_arn : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  terminate_instance_on_failure : bool prop;
}

let make ?description ?id ?instance_types ?key_pair ?resource_tags
    ?security_group_ids ?sns_topic_arn ?subnet_id ?tags ?tags_all
    ?terminate_instance_on_failure ?(instance_metadata_options = [])
    ?(logging = []) ~instance_profile_name ~name __id =
  let __type = "aws_imagebuilder_infrastructure_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       date_created = Prop.computed __type __id "date_created";
       date_updated = Prop.computed __type __id "date_updated";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_profile_name =
         Prop.computed __type __id "instance_profile_name";
       instance_types = Prop.computed __type __id "instance_types";
       key_pair = Prop.computed __type __id "key_pair";
       name = Prop.computed __type __id "name";
       resource_tags = Prop.computed __type __id "resource_tags";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       sns_topic_arn = Prop.computed __type __id "sns_topic_arn";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       terminate_instance_on_failure =
         Prop.computed __type __id "terminate_instance_on_failure";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_infrastructure_configuration
        (aws_imagebuilder_infrastructure_configuration ?description
           ?id ?instance_types ?key_pair ?resource_tags
           ?security_group_ids ?sns_topic_arn ?subnet_id ?tags
           ?tags_all ?terminate_instance_on_failure
           ~instance_metadata_options ~logging ~instance_profile_name
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?instance_types ?key_pair
    ?resource_tags ?security_group_ids ?sns_topic_arn ?subnet_id
    ?tags ?tags_all ?terminate_instance_on_failure
    ?(instance_metadata_options = []) ?(logging = [])
    ~instance_profile_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?instance_types ?key_pair ?resource_tags
      ?security_group_ids ?sns_topic_arn ?subnet_id ?tags ?tags_all
      ?terminate_instance_on_failure ~instance_metadata_options
      ~logging ~instance_profile_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
