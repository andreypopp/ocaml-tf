(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type certificate_validation_records = {
  name : string prop;
  status : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_validation_records) -> ()

let yojson_of_certificate_validation_records =
  (function
   | {
       name = v_name;
       status = v_status;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : certificate_validation_records ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_validation_records

[@@@deriving.end]

type aws_apprunner_custom_domain_association = {
  domain_name : string prop;
  enable_www_subdomain : bool prop option; [@option]
  id : string prop option; [@option]
  service_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apprunner_custom_domain_association) -> ()

let yojson_of_aws_apprunner_custom_domain_association =
  (function
   | {
       domain_name = v_domain_name;
       enable_www_subdomain = v_enable_www_subdomain;
       id = v_id;
       service_arn = v_service_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_arn in
         ("service_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_www_subdomain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_www_subdomain", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_apprunner_custom_domain_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apprunner_custom_domain_association

[@@@deriving.end]

let aws_apprunner_custom_domain_association ?enable_www_subdomain ?id
    ~domain_name ~service_arn () :
    aws_apprunner_custom_domain_association =
  { domain_name; enable_www_subdomain; id; service_arn }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
