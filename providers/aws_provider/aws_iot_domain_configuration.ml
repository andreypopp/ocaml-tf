(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iot_domain_configuration__authorizer_config = {
  allow_authorizer_override : bool option; [@option]
      (** allow_authorizer_override *)
  default_authorizer_name : string option; [@option]
      (** default_authorizer_name *)
}
[@@deriving yojson_of]
(** aws_iot_domain_configuration__authorizer_config *)

type aws_iot_domain_configuration__tls_config = {
  security_policy : string option; [@option]  (** security_policy *)
}
[@@deriving yojson_of]
(** aws_iot_domain_configuration__tls_config *)

type aws_iot_domain_configuration = {
  domain_name : string option; [@option]  (** domain_name *)
  name : string;  (** name *)
  server_certificate_arns : string list option; [@option]
      (** server_certificate_arns *)
  service_type : string option; [@option]  (** service_type *)
  status : string option; [@option]  (** status *)
  tags : (string * string) list option; [@option]  (** tags *)
  validation_certificate_arn : string option; [@option]
      (** validation_certificate_arn *)
  authorizer_config :
    aws_iot_domain_configuration__authorizer_config list;
  tls_config : aws_iot_domain_configuration__tls_config list;
}
[@@deriving yojson_of]
(** aws_iot_domain_configuration *)

let aws_iot_domain_configuration ?domain_name
    ?server_certificate_arns ?service_type ?status ?tags
    ?validation_certificate_arn ~name ~authorizer_config ~tls_config
    __resource_id =
  let __resource_type = "aws_iot_domain_configuration" in
  let __resource =
    {
      domain_name;
      name;
      server_certificate_arns;
      service_type;
      status;
      tags;
      validation_certificate_arn;
      authorizer_config;
      tls_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_domain_configuration __resource);
  ()
