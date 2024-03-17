(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apprunner_custom_domain_association__certificate_validation_records = {
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type aws_apprunner_custom_domain_association = {
  domain_name : string prop;  (** domain_name *)
  enable_www_subdomain : bool prop option; [@option]
      (** enable_www_subdomain *)
  id : string prop option; [@option]  (** id *)
  service_arn : string prop;  (** service_arn *)
}
[@@deriving yojson_of]
(** aws_apprunner_custom_domain_association *)

let aws_apprunner_custom_domain_association ?enable_www_subdomain ?id
    ~domain_name ~service_arn __resource_id =
  let __resource_type = "aws_apprunner_custom_domain_association" in
  let __resource =
    { domain_name; enable_www_subdomain; id; service_arn }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_custom_domain_association __resource);
  ()
