(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint_configuration = {
  types : string prop list;  (** types *)
}
[@@deriving yojson_of]
(** endpoint_configuration *)

type mutual_tls_authentication = {
  truststore_uri : string prop;  (** truststore_uri *)
  truststore_version : string prop option; [@option]
      (** truststore_version *)
}
[@@deriving yojson_of]
(** mutual_tls_authentication *)

type aws_api_gateway_domain_name = {
  certificate_arn : string prop option; [@option]
      (** certificate_arn *)
  certificate_body : string prop option; [@option]
      (** certificate_body *)
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  certificate_name : string prop option; [@option]
      (** certificate_name *)
  certificate_private_key : string prop option; [@option]
      (** certificate_private_key *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  ownership_verification_certificate_arn : string prop option;
      [@option]
      (** ownership_verification_certificate_arn *)
  regional_certificate_arn : string prop option; [@option]
      (** regional_certificate_arn *)
  regional_certificate_name : string prop option; [@option]
      (** regional_certificate_name *)
  security_policy : string prop option; [@option]
      (** security_policy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  endpoint_configuration : endpoint_configuration list;
  mutual_tls_authentication : mutual_tls_authentication list;
}
[@@deriving yojson_of]
(** aws_api_gateway_domain_name *)

let endpoint_configuration ~types () : endpoint_configuration =
  { types }

let mutual_tls_authentication ?truststore_version ~truststore_uri ()
    : mutual_tls_authentication =
  { truststore_uri; truststore_version }

let aws_api_gateway_domain_name ?certificate_arn ?certificate_body
    ?certificate_chain ?certificate_name ?certificate_private_key ?id
    ?ownership_verification_certificate_arn ?regional_certificate_arn
    ?regional_certificate_name ?security_policy ?tags ?tags_all
    ~domain_name ~endpoint_configuration ~mutual_tls_authentication
    () : aws_api_gateway_domain_name =
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
    ~domain_name ~endpoint_configuration ~mutual_tls_authentication
    __id =
  let __type = "aws_api_gateway_domain_name" in
  let __attrs =
    ({
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
           ?security_policy ?tags ?tags_all ~domain_name
           ~endpoint_configuration ~mutual_tls_authentication ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_arn ?certificate_body
    ?certificate_chain ?certificate_name ?certificate_private_key ?id
    ?ownership_verification_certificate_arn ?regional_certificate_arn
    ?regional_certificate_name ?security_policy ?tags ?tags_all
    ~domain_name ~endpoint_configuration ~mutual_tls_authentication
    __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_arn ?certificate_body ?certificate_chain
      ?certificate_name ?certificate_private_key ?id
      ?ownership_verification_certificate_arn
      ?regional_certificate_arn ?regional_certificate_name
      ?security_policy ?tags ?tags_all ~domain_name
      ~endpoint_configuration ~mutual_tls_authentication __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
