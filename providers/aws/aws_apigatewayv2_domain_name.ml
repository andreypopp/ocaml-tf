(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type domain_name_configuration = {
  certificate_arn : string prop;  (** certificate_arn *)
  endpoint_type : string prop;  (** endpoint_type *)
  ownership_verification_certificate_arn : string prop option;
      [@option]
      (** ownership_verification_certificate_arn *)
  security_policy : string prop;  (** security_policy *)
}
[@@deriving yojson_of]
(** domain_name_configuration *)

type mutual_tls_authentication = {
  truststore_uri : string prop;  (** truststore_uri *)
  truststore_version : string prop option; [@option]
      (** truststore_version *)
}
[@@deriving yojson_of]
(** mutual_tls_authentication *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_apigatewayv2_domain_name = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  domain_name_configuration : domain_name_configuration list;
  mutual_tls_authentication : mutual_tls_authentication list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_domain_name *)

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

let aws_apigatewayv2_domain_name ?id ?tags ?tags_all ?timeouts
    ~domain_name ~domain_name_configuration
    ~mutual_tls_authentication () : aws_apigatewayv2_domain_name =
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
  api_mapping_selection_expression : string prop;
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~domain_name
    ~domain_name_configuration ~mutual_tls_authentication __id =
  let __type = "aws_apigatewayv2_domain_name" in
  let __attrs =
    ({
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
        (aws_apigatewayv2_domain_name ?id ?tags ?tags_all ?timeouts
           ~domain_name ~domain_name_configuration
           ~mutual_tls_authentication ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~domain_name
    ~domain_name_configuration ~mutual_tls_authentication __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~domain_name
      ~domain_name_configuration ~mutual_tls_authentication __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
