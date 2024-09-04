(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_metadata_options = {
  http_put_response_hop_limit : float prop;
  http_tokens : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_http_tokens in
         ("http_tokens", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_http_put_response_hop_limit
         in
         ("http_put_response_hop_limit", arg) :: bnds
       in
       `Assoc bnds
    : instance_metadata_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_metadata_options

[@@@deriving.end]

type logging__s3_logs = {
  s3_bucket_name : string prop;
  s3_key_prefix : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_s3_key_prefix in
         ("s3_key_prefix", arg) :: bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_s3_logs then bnds
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
  arn : string prop;
  id : string prop option; [@option]
  resource_tags : string prop Tf_core.assoc option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_imagebuilder_infrastructure_configuration) -> ()

let yojson_of_aws_imagebuilder_infrastructure_configuration =
  (function
   | {
       arn = v_arn;
       id = v_id;
       resource_tags = v_resource_tags;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_resource_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "resource_tags", arg in
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
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_imagebuilder_infrastructure_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_imagebuilder_infrastructure_configuration

[@@@deriving.end]

let aws_imagebuilder_infrastructure_configuration ?id ?resource_tags
    ?tags ~arn () : aws_imagebuilder_infrastructure_configuration =
  { arn; id; resource_tags; tags }

type t = {
  tf_name : string;
  arn : string prop;
  date_created : string prop;
  date_updated : string prop;
  description : string prop;
  id : string prop;
  instance_metadata_options : instance_metadata_options list prop;
  instance_profile_name : string prop;
  instance_types : string list prop;
  key_pair : string prop;
  logging : logging list prop;
  name : string prop;
  resource_tags : string Tf_core.assoc prop;
  security_group_ids : string list prop;
  sns_topic_arn : string prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
  terminate_instance_on_failure : bool prop;
}

let make ?id ?resource_tags ?tags ~arn __id =
  let __type = "aws_imagebuilder_infrastructure_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       date_created = Prop.computed __type __id "date_created";
       date_updated = Prop.computed __type __id "date_updated";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_metadata_options =
         Prop.computed __type __id "instance_metadata_options";
       instance_profile_name =
         Prop.computed __type __id "instance_profile_name";
       instance_types = Prop.computed __type __id "instance_types";
       key_pair = Prop.computed __type __id "key_pair";
       logging = Prop.computed __type __id "logging";
       name = Prop.computed __type __id "name";
       resource_tags = Prop.computed __type __id "resource_tags";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       sns_topic_arn = Prop.computed __type __id "sns_topic_arn";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
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
        (aws_imagebuilder_infrastructure_configuration ?id
           ?resource_tags ?tags ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?resource_tags ?tags ~arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?resource_tags ?tags ~arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
