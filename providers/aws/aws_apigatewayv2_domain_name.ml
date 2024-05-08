(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type domain_name_configuration = {
  certificate_arn : string prop;
  endpoint_type : string prop;
  ownership_verification_certificate_arn : string prop option;
      [@option]
  security_policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : domain_name_configuration) -> ()

let yojson_of_domain_name_configuration =
  (function
   | {
       certificate_arn = v_certificate_arn;
       endpoint_type = v_endpoint_type;
       ownership_verification_certificate_arn =
         v_ownership_verification_certificate_arn;
       security_policy = v_security_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_policy
         in
         ("security_policy", arg) :: bnds
       in
       let bnds =
         match v_ownership_verification_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "ownership_verification_certificate_arn", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_type in
         ("endpoint_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_arn
         in
         ("certificate_arn", arg) :: bnds
       in
       `Assoc bnds
    : domain_name_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_domain_name_configuration

[@@@deriving.end]

type mutual_tls_authentication = {
  truststore_uri : string prop;
  truststore_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mutual_tls_authentication) -> ()

let yojson_of_mutual_tls_authentication =
  (function
   | {
       truststore_uri = v_truststore_uri;
       truststore_version = v_truststore_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_truststore_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "truststore_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_truststore_uri
         in
         ("truststore_uri", arg) :: bnds
       in
       `Assoc bnds
    : mutual_tls_authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mutual_tls_authentication

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_apigatewayv2_domain_name = {
  domain_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  domain_name_configuration : domain_name_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  mutual_tls_authentication : mutual_tls_authentication list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_domain_name) -> ()

let yojson_of_aws_apigatewayv2_domain_name =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       domain_name_configuration = v_domain_name_configuration;
       mutual_tls_authentication = v_mutual_tls_authentication;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_mutual_tls_authentication then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mutual_tls_authentication)
               v_mutual_tls_authentication
           in
           let bnd = "mutual_tls_authentication", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_domain_name_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_domain_name_configuration)
               v_domain_name_configuration
           in
           let bnd = "domain_name_configuration", arg in
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
       `Assoc bnds
    : aws_apigatewayv2_domain_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_domain_name

[@@@deriving.end]

let domain_name_configuration ?ownership_verification_certificate_arn
    ~certificate_arn ~endpoint_type ~security_policy () :
    domain_name_configuration =
  {
    certificate_arn;
    endpoint_type;
    ownership_verification_certificate_arn;
    security_policy;
  }

let mutual_tls_authentication ?truststore_version ~truststore_uri ()
    : mutual_tls_authentication =
  { truststore_uri; truststore_version }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_apigatewayv2_domain_name ?id ?tags ?tags_all
    ?(mutual_tls_authentication = []) ?timeouts ~domain_name
    ~domain_name_configuration () : aws_apigatewayv2_domain_name =
  {
    domain_name;
    id;
    tags;
    tags_all;
    domain_name_configuration;
    mutual_tls_authentication;
    timeouts;
  }

type t = {
  tf_name : string;
  api_mapping_selection_expression : string prop;
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?(mutual_tls_authentication = [])
    ?timeouts ~domain_name ~domain_name_configuration __id =
  let __type = "aws_apigatewayv2_domain_name" in
  let __attrs =
    ({
       tf_name = __id;
       api_mapping_selection_expression =
         Prop.computed __type __id "api_mapping_selection_expression";
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_domain_name
        (aws_apigatewayv2_domain_name ?id ?tags ?tags_all
           ~mutual_tls_authentication ?timeouts ~domain_name
           ~domain_name_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?(mutual_tls_authentication = []) ?timeouts ~domain_name
    ~domain_name_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~mutual_tls_authentication ?timeouts
      ~domain_name ~domain_name_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
