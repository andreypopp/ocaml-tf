(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type options = {
  certificate_transparency_logging_preference : string prop option;
      [@option]
      (** certificate_transparency_logging_preference *)
}
[@@deriving yojson_of]
(** options *)

type validation_option = {
  domain_name : string prop;  (** domain_name *)
  validation_domain : string prop;  (** validation_domain *)
}
[@@deriving yojson_of]
(** validation_option *)

type domain_validation_options = {
  domain_name : string prop;  (** domain_name *)
  resource_record_name : string prop;  (** resource_record_name *)
  resource_record_type : string prop;  (** resource_record_type *)
  resource_record_value : string prop;  (** resource_record_value *)
}
[@@deriving yojson_of]

type renewal_summary = {
  renewal_status : string prop;  (** renewal_status *)
  renewal_status_reason : string prop;  (** renewal_status_reason *)
  updated_at : string prop;  (** updated_at *)
}
[@@deriving yojson_of]

type aws_acm_certificate = {
  certificate_authority_arn : string prop option; [@option]
      (** certificate_authority_arn *)
  certificate_body : string prop option; [@option]
      (** certificate_body *)
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  domain_name : string prop option; [@option]  (** domain_name *)
  early_renewal_duration : string prop option; [@option]
      (** early_renewal_duration *)
  id : string prop option; [@option]  (** id *)
  key_algorithm : string prop option; [@option]  (** key_algorithm *)
  private_key : string prop option; [@option]  (** private_key *)
  subject_alternative_names : string prop list option; [@option]
      (** subject_alternative_names *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  validation_method : string prop option; [@option]
      (** validation_method *)
  options : options list;
  validation_option : validation_option list;
}
[@@deriving yojson_of]
(** aws_acm_certificate *)

let options ?certificate_transparency_logging_preference () : options
    =
  { certificate_transparency_logging_preference }

let validation_option ~domain_name ~validation_domain () :
    validation_option =
  { domain_name; validation_domain }

let aws_acm_certificate ?certificate_authority_arn ?certificate_body
    ?certificate_chain ?domain_name ?early_renewal_duration ?id
    ?key_algorithm ?private_key ?subject_alternative_names ?tags
    ?tags_all ?validation_method ~options ~validation_option () :
    aws_acm_certificate =
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
    ?tags_all ?validation_method ~options ~validation_option __id =
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
    ?tags_all ?validation_method ~options ~validation_option __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_authority_arn ?certificate_body
      ?certificate_chain ?domain_name ?early_renewal_duration ?id
      ?key_algorithm ?private_key ?subject_alternative_names ?tags
      ?tags_all ?validation_method ~options ~validation_option __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
