(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type options = {
  certificate_transparency_logging_preference : string prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : options) -> ()

let yojson_of_options =
  (function
   | {
       certificate_transparency_logging_preference =
         v_certificate_transparency_logging_preference;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_certificate_transparency_logging_preference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "certificate_transparency_logging_preference", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_options

[@@@deriving.end]

type validation_option = {
  domain_name : string prop;
  validation_domain : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_option) -> ()

let yojson_of_validation_option =
  (function
   | {
       domain_name = v_domain_name;
       validation_domain = v_validation_domain;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_validation_domain
         in
         ("validation_domain", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : validation_option -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_option

[@@@deriving.end]

type domain_validation_options = {
  domain_name : string prop;
  resource_record_name : string prop;
  resource_record_type : string prop;
  resource_record_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : domain_validation_options) -> ()

let yojson_of_domain_validation_options =
  (function
   | {
       domain_name = v_domain_name;
       resource_record_name = v_resource_record_name;
       resource_record_type = v_resource_record_type;
       resource_record_value = v_resource_record_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_record_value
         in
         ("resource_record_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_record_type
         in
         ("resource_record_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_record_name
         in
         ("resource_record_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : domain_validation_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_domain_validation_options

[@@@deriving.end]

type renewal_summary = {
  renewal_status : string prop;
  renewal_status_reason : string prop;
  updated_at : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : renewal_summary) -> ()

let yojson_of_renewal_summary =
  (function
   | {
       renewal_status = v_renewal_status;
       renewal_status_reason = v_renewal_status_reason;
       updated_at = v_updated_at;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_updated_at in
         ("updated_at", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_renewal_status_reason
         in
         ("renewal_status_reason", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_renewal_status
         in
         ("renewal_status", arg) :: bnds
       in
       `Assoc bnds
    : renewal_summary -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_renewal_summary

[@@@deriving.end]

type aws_acm_certificate = {
  certificate_authority_arn : string prop option; [@option]
  certificate_body : string prop option; [@option]
  certificate_chain : string prop option; [@option]
  domain_name : string prop option; [@option]
  early_renewal_duration : string prop option; [@option]
  id : string prop option; [@option]
  key_algorithm : string prop option; [@option]
  private_key : string prop option; [@option]
  subject_alternative_names : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  validation_method : string prop option; [@option]
  options : options list;
  validation_option : validation_option list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_acm_certificate) -> ()

let yojson_of_aws_acm_certificate =
  (function
   | {
       certificate_authority_arn = v_certificate_authority_arn;
       certificate_body = v_certificate_body;
       certificate_chain = v_certificate_chain;
       domain_name = v_domain_name;
       early_renewal_duration = v_early_renewal_duration;
       id = v_id;
       key_algorithm = v_key_algorithm;
       private_key = v_private_key;
       subject_alternative_names = v_subject_alternative_names;
       tags = v_tags;
       tags_all = v_tags_all;
       validation_method = v_validation_method;
       options = v_options;
       validation_option = v_validation_option;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_validation_option
             v_validation_option
         in
         ("validation_option", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_options v_options in
         ("options", arg) :: bnds
       in
       let bnds =
         match v_validation_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "validation_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject_alternative_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subject_alternative_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_algorithm", arg in
             bnd :: bnds
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
         match v_early_renewal_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "early_renewal_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_chain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_chain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_authority_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_authority_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_acm_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_acm_certificate

[@@@deriving.end]

let options ?certificate_transparency_logging_preference () : options
    =
  { certificate_transparency_logging_preference }

let validation_option ~domain_name ~validation_domain () :
    validation_option =
  { domain_name; validation_domain }

let aws_acm_certificate ?certificate_authority_arn ?certificate_body
    ?certificate_chain ?domain_name ?early_renewal_duration ?id
    ?key_algorithm ?private_key ?subject_alternative_names ?tags
    ?tags_all ?validation_method ?(options = []) ~validation_option
    () : aws_acm_certificate =
  {
    certificate_authority_arn;
    certificate_body;
    certificate_chain;
    domain_name;
    early_renewal_duration;
    id;
    key_algorithm;
    private_key;
    subject_alternative_names;
    tags;
    tags_all;
    validation_method;
    options;
    validation_option;
  }

type t = {
  arn : string prop;
  certificate_authority_arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  domain_name : string prop;
  domain_validation_options : domain_validation_options list prop;
  early_renewal_duration : string prop;
  id : string prop;
  key_algorithm : string prop;
  not_after : string prop;
  not_before : string prop;
  pending_renewal : bool prop;
  private_key : string prop;
  renewal_eligibility : string prop;
  renewal_summary : renewal_summary list prop;
  status : string prop;
  subject_alternative_names : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  validation_emails : string list prop;
  validation_method : string prop;
}

let make ?certificate_authority_arn ?certificate_body
    ?certificate_chain ?domain_name ?early_renewal_duration ?id
    ?key_algorithm ?private_key ?subject_alternative_names ?tags
    ?tags_all ?validation_method ?(options = []) ~validation_option
    __id =
  let __type = "aws_acm_certificate" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       certificate_authority_arn =
         Prop.computed __type __id "certificate_authority_arn";
       certificate_body =
         Prop.computed __type __id "certificate_body";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       domain_name = Prop.computed __type __id "domain_name";
       domain_validation_options =
         Prop.computed __type __id "domain_validation_options";
       early_renewal_duration =
         Prop.computed __type __id "early_renewal_duration";
       id = Prop.computed __type __id "id";
       key_algorithm = Prop.computed __type __id "key_algorithm";
       not_after = Prop.computed __type __id "not_after";
       not_before = Prop.computed __type __id "not_before";
       pending_renewal = Prop.computed __type __id "pending_renewal";
       private_key = Prop.computed __type __id "private_key";
       renewal_eligibility =
         Prop.computed __type __id "renewal_eligibility";
       renewal_summary = Prop.computed __type __id "renewal_summary";
       status = Prop.computed __type __id "status";
       subject_alternative_names =
         Prop.computed __type __id "subject_alternative_names";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       validation_emails =
         Prop.computed __type __id "validation_emails";
       validation_method =
         Prop.computed __type __id "validation_method";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_acm_certificate
        (aws_acm_certificate ?certificate_authority_arn
           ?certificate_body ?certificate_chain ?domain_name
           ?early_renewal_duration ?id ?key_algorithm ?private_key
           ?subject_alternative_names ?tags ?tags_all
           ?validation_method ~options ~validation_option ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_authority_arn ?certificate_body
    ?certificate_chain ?domain_name ?early_renewal_duration ?id
    ?key_algorithm ?private_key ?subject_alternative_names ?tags
    ?tags_all ?validation_method ?(options = []) ~validation_option
    __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_authority_arn ?certificate_body
      ?certificate_chain ?domain_name ?early_renewal_duration ?id
      ?key_algorithm ?private_key ?subject_alternative_names ?tags
      ?tags_all ?validation_method ~options ~validation_option __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
