(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authorizer_config = {
  allow_authorizer_override : bool prop option; [@option]
  default_authorizer_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authorizer_config) -> ()

let yojson_of_authorizer_config =
  (function
   | {
       allow_authorizer_override = v_allow_authorizer_override;
       default_authorizer_name = v_default_authorizer_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_default_authorizer_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_authorizer_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_authorizer_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_authorizer_override", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : authorizer_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorizer_config

[@@@deriving.end]

type tls_config = { security_policy : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : tls_config) -> ()

let yojson_of_tls_config =
  (function
   | { security_policy = v_security_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_security_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tls_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tls_config

[@@@deriving.end]

type aws_iot_domain_configuration = {
  domain_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  server_certificate_arns : string prop list option; [@option]
  service_type : string prop option; [@option]
  status : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  validation_certificate_arn : string prop option; [@option]
  authorizer_config : authorizer_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tls_config : tls_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_domain_configuration) -> ()

let yojson_of_aws_iot_domain_configuration =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       name = v_name;
       server_certificate_arns = v_server_certificate_arns;
       service_type = v_service_type;
       status = v_status;
       tags = v_tags;
       tags_all = v_tags_all;
       validation_certificate_arn = v_validation_certificate_arn;
       authorizer_config = v_authorizer_config;
       tls_config = v_tls_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tls_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tls_config) v_tls_config
           in
           let bnd = "tls_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authorizer_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authorizer_config)
               v_authorizer_config
           in
           let bnd = "authorizer_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_validation_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "validation_certificate_arn", arg in
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
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_certificate_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "server_certificate_arns", arg in
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
       let bnds =
         match v_domain_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iot_domain_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_domain_configuration

[@@@deriving.end]

let authorizer_config ?allow_authorizer_override
    ?default_authorizer_name () : authorizer_config =
  { allow_authorizer_override; default_authorizer_name }

let tls_config ?security_policy () : tls_config = { security_policy }

let aws_iot_domain_configuration ?domain_name ?id
    ?server_certificate_arns ?service_type ?status ?tags ?tags_all
    ?validation_certificate_arn ?(authorizer_config = [])
    ?(tls_config = []) ~name () : aws_iot_domain_configuration =
  {
    domain_name;
    id;
    name;
    server_certificate_arns;
    service_type;
    status;
    tags;
    tags_all;
    validation_certificate_arn;
    authorizer_config;
    tls_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  domain_name : string prop;
  domain_type : string prop;
  id : string prop;
  name : string prop;
  server_certificate_arns : string list prop;
  service_type : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  validation_certificate_arn : string prop;
}

let make ?domain_name ?id ?server_certificate_arns ?service_type
    ?status ?tags ?tags_all ?validation_certificate_arn
    ?(authorizer_config = []) ?(tls_config = []) ~name __id =
  let __type = "aws_iot_domain_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       domain_type = Prop.computed __type __id "domain_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       server_certificate_arns =
         Prop.computed __type __id "server_certificate_arns";
       service_type = Prop.computed __type __id "service_type";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       validation_certificate_arn =
         Prop.computed __type __id "validation_certificate_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_domain_configuration
        (aws_iot_domain_configuration ?domain_name ?id
           ?server_certificate_arns ?service_type ?status ?tags
           ?tags_all ?validation_certificate_arn ~authorizer_config
           ~tls_config ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_name ?id ?server_certificate_arns
    ?service_type ?status ?tags ?tags_all ?validation_certificate_arn
    ?(authorizer_config = []) ?(tls_config = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?domain_name ?id ?server_certificate_arns ?service_type
      ?status ?tags ?tags_all ?validation_certificate_arn
      ~authorizer_config ~tls_config ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
