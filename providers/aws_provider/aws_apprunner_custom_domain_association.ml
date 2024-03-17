(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_apprunner_custom_domain_association__certificate_validation_records = {
  name : string;  (** name *)
  status : string;  (** status *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type aws_apprunner_custom_domain_association = {
  domain_name : string;  (** domain_name *)
  enable_www_subdomain : bool option; [@option]
      (** enable_www_subdomain *)
  service_arn : string;  (** service_arn *)
}
[@@deriving yojson_of]
(** aws_apprunner_custom_domain_association *)

let aws_apprunner_custom_domain_association ?enable_www_subdomain
    ~domain_name ~service_arn __resource_id =
  let __resource_type = "aws_apprunner_custom_domain_association" in
  let __resource =
    { domain_name; enable_www_subdomain; service_arn }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_custom_domain_association __resource);
  ()
