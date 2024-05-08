(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint_configuration = {
  types : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint_configuration) -> ()

let yojson_of_endpoint_configuration =
  (function
   | { types = v_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_types
           in
           let bnd = "types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : endpoint_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint_configuration

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

type aws_api_gateway_domain_name = {
  certificate_arn : string prop option; [@option]
  certificate_body : string prop option; [@option]
  certificate_chain : string prop option; [@option]
  certificate_name : string prop option; [@option]
  certificate_private_key : string prop option; [@option]
  domain_name : string prop;
  id : string prop option; [@option]
  ownership_verification_certificate_arn : string prop option;
      [@option]
  regional_certificate_arn : string prop option; [@option]
  regional_certificate_name : string prop option; [@option]
  security_policy : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  endpoint_configuration : endpoint_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  mutual_tls_authentication : mutual_tls_authentication list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_domain_name) -> ()

let yojson_of_aws_api_gateway_domain_name =
  (function
   | {
       certificate_arn = v_certificate_arn;
       certificate_body = v_certificate_body;
       certificate_chain = v_certificate_chain;
       certificate_name = v_certificate_name;
       certificate_private_key = v_certificate_private_key;
       domain_name = v_domain_name;
       id = v_id;
       ownership_verification_certificate_arn =
         v_ownership_verification_certificate_arn;
       regional_certificate_arn = v_regional_certificate_arn;
       regional_certificate_name = v_regional_certificate_name;
       security_policy = v_security_policy;
       tags = v_tags;
       tags_all = v_tags_all;
       endpoint_configuration = v_endpoint_configuration;
       mutual_tls_authentication = v_mutual_tls_authentication;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         if [] = v_endpoint_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint_configuration)
               v_endpoint_configuration
           in
           let bnd = "endpoint_configuration", arg in
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
         match v_security_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regional_certificate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regional_certificate_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regional_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regional_certificate_arn", arg in
             bnd :: bnds
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
       let bnds =
         match v_certificate_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_private_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_chain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_chain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_domain_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_domain_name

[@@@deriving.end]

let endpoint_configuration ~types () : endpoint_configuration =
  { types }

let mutual_tls_authentication ?truststore_version ~truststore_uri ()
    : mutual_tls_authentication =
  { truststore_uri; truststore_version }

let aws_api_gateway_domain_name ?certificate_arn ?certificate_body
    ?certificate_chain ?certificate_name ?certificate_private_key ?id
    ?ownership_verification_certificate_arn ?regional_certificate_arn
    ?regional_certificate_name ?security_policy ?tags ?tags_all
    ?(endpoint_configuration = []) ?(mutual_tls_authentication = [])
    ~domain_name () : aws_api_gateway_domain_name =
  {
    certificate_arn;
    certificate_body;
    certificate_chain;
    certificate_name;
    certificate_private_key;
    domain_name;
    id;
    ownership_verification_certificate_arn;
    regional_certificate_arn;
    regional_certificate_name;
    security_policy;
    tags;
    tags_all;
    endpoint_configuration;
    mutual_tls_authentication;
  }

type t = {
  tf_name : string;
  arn : string prop;
  certificate_arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  certificate_name : string prop;
  certificate_private_key : string prop;
  certificate_upload_date : string prop;
  cloudfront_domain_name : string prop;
  cloudfront_zone_id : string prop;
  domain_name : string prop;
  id : string prop;
  ownership_verification_certificate_arn : string prop;
  regional_certificate_arn : string prop;
  regional_certificate_name : string prop;
  regional_domain_name : string prop;
  regional_zone_id : string prop;
  security_policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?certificate_arn ?certificate_body ?certificate_chain
    ?certificate_name ?certificate_private_key ?id
    ?ownership_verification_certificate_arn ?regional_certificate_arn
    ?regional_certificate_name ?security_policy ?tags ?tags_all
    ?(endpoint_configuration = []) ?(mutual_tls_authentication = [])
    ~domain_name __id =
  let __type = "aws_api_gateway_domain_name" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       certificate_arn = Prop.computed __type __id "certificate_arn";
       certificate_body =
         Prop.computed __type __id "certificate_body";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       certificate_name =
         Prop.computed __type __id "certificate_name";
       certificate_private_key =
         Prop.computed __type __id "certificate_private_key";
       certificate_upload_date =
         Prop.computed __type __id "certificate_upload_date";
       cloudfront_domain_name =
         Prop.computed __type __id "cloudfront_domain_name";
       cloudfront_zone_id =
         Prop.computed __type __id "cloudfront_zone_id";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       ownership_verification_certificate_arn =
         Prop.computed __type __id
           "ownership_verification_certificate_arn";
       regional_certificate_arn =
         Prop.computed __type __id "regional_certificate_arn";
       regional_certificate_name =
         Prop.computed __type __id "regional_certificate_name";
       regional_domain_name =
         Prop.computed __type __id "regional_domain_name";
       regional_zone_id =
         Prop.computed __type __id "regional_zone_id";
       security_policy = Prop.computed __type __id "security_policy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_domain_name
        (aws_api_gateway_domain_name ?certificate_arn
           ?certificate_body ?certificate_chain ?certificate_name
           ?certificate_private_key ?id
           ?ownership_verification_certificate_arn
           ?regional_certificate_arn ?regional_certificate_name
           ?security_policy ?tags ?tags_all ~endpoint_configuration
           ~mutual_tls_authentication ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_arn ?certificate_body
    ?certificate_chain ?certificate_name ?certificate_private_key ?id
    ?ownership_verification_certificate_arn ?regional_certificate_arn
    ?regional_certificate_name ?security_policy ?tags ?tags_all
    ?(endpoint_configuration = []) ?(mutual_tls_authentication = [])
    ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_arn ?certificate_body ?certificate_chain
      ?certificate_name ?certificate_private_key ?id
      ?ownership_verification_certificate_arn
      ?regional_certificate_arn ?regional_certificate_name
      ?security_policy ?tags ?tags_all ~endpoint_configuration
      ~mutual_tls_authentication ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
