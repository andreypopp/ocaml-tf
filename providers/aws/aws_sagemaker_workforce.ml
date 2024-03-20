(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cognito_config = {
  client_id : string prop;  (** client_id *)
  user_pool : string prop;  (** user_pool *)
}
[@@deriving yojson_of]
(** cognito_config *)

type oidc_config = {
  authorization_endpoint : string prop;
      (** authorization_endpoint *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  issuer : string prop;  (** issuer *)
  jwks_uri : string prop;  (** jwks_uri *)
  logout_endpoint : string prop;  (** logout_endpoint *)
  token_endpoint : string prop;  (** token_endpoint *)
  user_info_endpoint : string prop;  (** user_info_endpoint *)
}
[@@deriving yojson_of]
(** oidc_config *)

type source_ip_config = { cidrs : string prop list  (** cidrs *) }
[@@deriving yojson_of]
(** source_ip_config *)

type workforce_vpc_config = {
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnets : string prop list option; [@option]  (** subnets *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
}
[@@deriving yojson_of]
(** workforce_vpc_config *)

type aws_sagemaker_workforce = {
  id : string prop option; [@option]  (** id *)
  workforce_name : string prop;  (** workforce_name *)
  cognito_config : cognito_config list;
  oidc_config : oidc_config list;
  source_ip_config : source_ip_config list;
  workforce_vpc_config : workforce_vpc_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_workforce *)

let cognito_config ~client_id ~user_pool () : cognito_config =
  { client_id; user_pool }

let oidc_config ~authorization_endpoint ~client_id ~client_secret
    ~issuer ~jwks_uri ~logout_endpoint ~token_endpoint
    ~user_info_endpoint () : oidc_config =
  {
    authorization_endpoint;
    client_id;
    client_secret;
    issuer;
    jwks_uri;
    logout_endpoint;
    token_endpoint;
    user_info_endpoint;
  }

let source_ip_config ~cidrs () : source_ip_config = { cidrs }

let workforce_vpc_config ?security_group_ids ?subnets ?vpc_id () :
    workforce_vpc_config =
  { security_group_ids; subnets; vpc_id }

let aws_sagemaker_workforce ?id ~workforce_name ~cognito_config
    ~oidc_config ~source_ip_config ~workforce_vpc_config () :
    aws_sagemaker_workforce =
  {
    id;
    workforce_name;
    cognito_config;
    oidc_config;
    source_ip_config;
    workforce_vpc_config;
  }

type t = {
  arn : string prop;
  id : string prop;
  subdomain : string prop;
  workforce_name : string prop;
}

let make ?id ~workforce_name ~cognito_config ~oidc_config
    ~source_ip_config ~workforce_vpc_config __id =
  let __type = "aws_sagemaker_workforce" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       subdomain = Prop.computed __type __id "subdomain";
       workforce_name = Prop.computed __type __id "workforce_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_workforce
        (aws_sagemaker_workforce ?id ~workforce_name ~cognito_config
           ~oidc_config ~source_ip_config ~workforce_vpc_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~workforce_name ~cognito_config
    ~oidc_config ~source_ip_config ~workforce_vpc_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ~workforce_name ~cognito_config ~oidc_config
      ~source_ip_config ~workforce_vpc_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
