(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type certificate_validation_records = {
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
    ~domain_name ~service_arn () :
    aws_apprunner_custom_domain_association =
  { domain_name; enable_www_subdomain; id; service_arn }

type t = {
  certificate_validation_records :
    certificate_validation_records list prop;
  dns_target : string prop;
  domain_name : string prop;
  enable_www_subdomain : bool prop;
  id : string prop;
  service_arn : string prop;
  status : string prop;
}

let make ?enable_www_subdomain ?id ~domain_name ~service_arn __id =
  let __type = "aws_apprunner_custom_domain_association" in
  let __attrs =
    ({
       certificate_validation_records =
         Prop.computed __type __id "certificate_validation_records";
       dns_target = Prop.computed __type __id "dns_target";
       domain_name = Prop.computed __type __id "domain_name";
       enable_www_subdomain =
         Prop.computed __type __id "enable_www_subdomain";
       id = Prop.computed __type __id "id";
       service_arn = Prop.computed __type __id "service_arn";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_custom_domain_association
        (aws_apprunner_custom_domain_association
           ?enable_www_subdomain ?id ~domain_name ~service_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_www_subdomain ?id ~domain_name
    ~service_arn __id =
  let (r : _ Tf_core.resource) =
    make ?enable_www_subdomain ?id ~domain_name ~service_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
