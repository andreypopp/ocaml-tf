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

type t = {
  certificate_validation_records :
    aws_apprunner_custom_domain_association__certificate_validation_records
    list
    prop;
  dns_target : string prop;
  domain_name : string prop;
  enable_www_subdomain : bool prop;
  id : string prop;
  service_arn : string prop;
  status : string prop;
}

let aws_apprunner_custom_domain_association ?enable_www_subdomain ?id
    ~domain_name ~service_arn __resource_id =
  let __resource_type = "aws_apprunner_custom_domain_association" in
  let __resource =
    ({ domain_name; enable_www_subdomain; id; service_arn }
      : aws_apprunner_custom_domain_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_custom_domain_association __resource);
  let __resource_attributes =
    ({
       certificate_validation_records =
         Prop.computed __resource_type __resource_id
           "certificate_validation_records";
       dns_target =
         Prop.computed __resource_type __resource_id "dns_target";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       enable_www_subdomain =
         Prop.computed __resource_type __resource_id
           "enable_www_subdomain";
       id = Prop.computed __resource_type __resource_id "id";
       service_arn =
         Prop.computed __resource_type __resource_id "service_arn";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
