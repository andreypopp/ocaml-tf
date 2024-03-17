(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_domain_configuration__authorizer_config = {
  allow_authorizer_override : bool prop option; [@option]
      (** allow_authorizer_override *)
  default_authorizer_name : string prop option; [@option]
      (** default_authorizer_name *)
}
[@@deriving yojson_of]
(** aws_iot_domain_configuration__authorizer_config *)

type aws_iot_domain_configuration__tls_config = {
  security_policy : string prop option; [@option]
      (** security_policy *)
}
[@@deriving yojson_of]
(** aws_iot_domain_configuration__tls_config *)

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
  authorizer_config :
    aws_iot_domain_configuration__authorizer_config list;
  tls_config : aws_iot_domain_configuration__tls_config list;
}
[@@deriving yojson_of]
(** aws_iot_domain_configuration *)

let aws_iot_domain_configuration ?domain_name ?id
    ?server_certificate_arns ?service_type ?status ?tags ?tags_all
    ?validation_certificate_arn ~name ~authorizer_config ~tls_config
    __resource_id =
  let __resource_type = "aws_iot_domain_configuration" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_domain_configuration __resource);
  ()
