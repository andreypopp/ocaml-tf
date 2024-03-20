(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authorizer_config = {
  allow_authorizer_override : bool prop option; [@option]
      (** allow_authorizer_override *)
  default_authorizer_name : string prop option; [@option]
      (** default_authorizer_name *)
}
[@@deriving yojson_of]
(** authorizer_config *)

type tls_config = {
  security_policy : string prop option; [@option]
      (** security_policy *)
}
[@@deriving yojson_of]
(** tls_config *)

type aws_iot_domain_configuration = {
  domain_name : string prop option; [@option]  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  server_certificate_arns : string prop list option; [@option]
      (** server_certificate_arns *)
  service_type : string prop option; [@option]  (** service_type *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  validation_certificate_arn : string prop option; [@option]
      (** validation_certificate_arn *)
  authorizer_config : authorizer_config list;
  tls_config : tls_config list;
}
[@@deriving yojson_of]
(** aws_iot_domain_configuration *)

let authorizer_config ?allow_authorizer_override
    ?default_authorizer_name () : authorizer_config =
  { allow_authorizer_override; default_authorizer_name }

let tls_config ?security_policy () : tls_config = { security_policy }

let aws_iot_domain_configuration ?domain_name ?id
    ?server_certificate_arns ?service_type ?status ?tags ?tags_all
    ?validation_certificate_arn ~name ~authorizer_config ~tls_config
    () : aws_iot_domain_configuration =
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
    ?status ?tags ?tags_all ?validation_certificate_arn ~name
    ~authorizer_config ~tls_config __id =
  let __type = "aws_iot_domain_configuration" in
  let __attrs =
    ({
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
           ?tags_all ?validation_certificate_arn ~name
           ~authorizer_config ~tls_config ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_name ?id ?server_certificate_arns
    ?service_type ?status ?tags ?tags_all ?validation_certificate_arn
    ~name ~authorizer_config ~tls_config __id =
  let (r : _ Tf_core.resource) =
    make ?domain_name ?id ?server_certificate_arns ?service_type
      ?status ?tags ?tags_all ?validation_certificate_arn ~name
      ~authorizer_config ~tls_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
