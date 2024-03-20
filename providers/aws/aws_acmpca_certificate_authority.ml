(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type certificate_authority_configuration__subject = {
  common_name : string prop option; [@option]  (** common_name *)
  country : string prop option; [@option]  (** country *)
  distinguished_name_qualifier : string prop option; [@option]
      (** distinguished_name_qualifier *)
  generation_qualifier : string prop option; [@option]
      (** generation_qualifier *)
  given_name : string prop option; [@option]  (** given_name *)
  initials : string prop option; [@option]  (** initials *)
  locality : string prop option; [@option]  (** locality *)
  organization : string prop option; [@option]  (** organization *)
  organizational_unit : string prop option; [@option]
      (** organizational_unit *)
  pseudonym : string prop option; [@option]  (** pseudonym *)
  state : string prop option; [@option]  (** state *)
  surname : string prop option; [@option]  (** surname *)
  title : string prop option; [@option]  (** title *)
}
[@@deriving yojson_of]
(** certificate_authority_configuration__subject *)

type certificate_authority_configuration = {
  key_algorithm : string prop;  (** key_algorithm *)
  signing_algorithm : string prop;  (** signing_algorithm *)
  subject : certificate_authority_configuration__subject list;
}
[@@deriving yojson_of]
(** certificate_authority_configuration *)

type revocation_configuration__crl_configuration = {
  custom_cname : string prop option; [@option]  (** custom_cname *)
  enabled : bool prop option; [@option]  (** enabled *)
  expiration_in_days : float prop option; [@option]
      (** expiration_in_days *)
  s3_bucket_name : string prop option; [@option]
      (** s3_bucket_name *)
  s3_object_acl : string prop option; [@option]  (** s3_object_acl *)
}
[@@deriving yojson_of]
(** revocation_configuration__crl_configuration *)

type revocation_configuration__ocsp_configuration = {
  enabled : bool prop;  (** enabled *)
  ocsp_custom_cname : string prop option; [@option]
      (** ocsp_custom_cname *)
}
[@@deriving yojson_of]
(** revocation_configuration__ocsp_configuration *)

type revocation_configuration = {
  crl_configuration :
    revocation_configuration__crl_configuration list;
  ocsp_configuration :
    revocation_configuration__ocsp_configuration list;
}
[@@deriving yojson_of]
(** revocation_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_acmpca_certificate_authority = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  key_storage_security_standard : string prop option; [@option]
      (** key_storage_security_standard *)
  permanent_deletion_time_in_days : float prop option; [@option]
      (** permanent_deletion_time_in_days *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  usage_mode : string prop option; [@option]  (** usage_mode *)
  certificate_authority_configuration :
    certificate_authority_configuration list;
  revocation_configuration : revocation_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority *)

let certificate_authority_configuration__subject ?common_name
    ?country ?distinguished_name_qualifier ?generation_qualifier
    ?given_name ?initials ?locality ?organization
    ?organizational_unit ?pseudonym ?state ?surname ?title () :
    certificate_authority_configuration__subject =
  {
    common_name;
    country;
    distinguished_name_qualifier;
    generation_qualifier;
    given_name;
    initials;
    locality;
    organization;
    organizational_unit;
    pseudonym;
    state;
    surname;
    title;
  }

let certificate_authority_configuration ~key_algorithm
    ~signing_algorithm ~subject () :
    certificate_authority_configuration =
  { key_algorithm; signing_algorithm; subject }

let revocation_configuration__crl_configuration ?custom_cname
    ?enabled ?expiration_in_days ?s3_bucket_name ?s3_object_acl () :
    revocation_configuration__crl_configuration =
  {
    custom_cname;
    enabled;
    expiration_in_days;
    s3_bucket_name;
    s3_object_acl;
  }

let revocation_configuration__ocsp_configuration ?ocsp_custom_cname
    ~enabled () : revocation_configuration__ocsp_configuration =
  { enabled; ocsp_custom_cname }

let revocation_configuration ~crl_configuration ~ocsp_configuration
    () : revocation_configuration =
  { crl_configuration; ocsp_configuration }

let timeouts ?create () : timeouts = { create }

let aws_acmpca_certificate_authority ?enabled ?id
    ?key_storage_security_standard ?permanent_deletion_time_in_days
    ?tags ?tags_all ?type_ ?usage_mode ?timeouts
    ~certificate_authority_configuration ~revocation_configuration ()
    : aws_acmpca_certificate_authority =
  {
    enabled;
    id;
    key_storage_security_standard;
    permanent_deletion_time_in_days;
    tags;
    tags_all;
    type_;
    usage_mode;
    certificate_authority_configuration;
    revocation_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  certificate : string prop;
  certificate_chain : string prop;
  certificate_signing_request : string prop;
  enabled : bool prop;
  id : string prop;
  key_storage_security_standard : string prop;
  not_after : string prop;
  not_before : string prop;
  permanent_deletion_time_in_days : float prop;
  serial : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  usage_mode : string prop;
}

let make ?enabled ?id ?key_storage_security_standard
    ?permanent_deletion_time_in_days ?tags ?tags_all ?type_
    ?usage_mode ?timeouts ~certificate_authority_configuration
    ~revocation_configuration __id =
  let __type = "aws_acmpca_certificate_authority" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       certificate = Prop.computed __type __id "certificate";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       certificate_signing_request =
         Prop.computed __type __id "certificate_signing_request";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       key_storage_security_standard =
         Prop.computed __type __id "key_storage_security_standard";
       not_after = Prop.computed __type __id "not_after";
       not_before = Prop.computed __type __id "not_before";
       permanent_deletion_time_in_days =
         Prop.computed __type __id "permanent_deletion_time_in_days";
       serial = Prop.computed __type __id "serial";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       usage_mode = Prop.computed __type __id "usage_mode";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_acmpca_certificate_authority
        (aws_acmpca_certificate_authority ?enabled ?id
           ?key_storage_security_standard
           ?permanent_deletion_time_in_days ?tags ?tags_all ?type_
           ?usage_mode ?timeouts ~certificate_authority_configuration
           ~revocation_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?key_storage_security_standard
    ?permanent_deletion_time_in_days ?tags ?tags_all ?type_
    ?usage_mode ?timeouts ~certificate_authority_configuration
    ~revocation_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?key_storage_security_standard
      ?permanent_deletion_time_in_days ?tags ?tags_all ?type_
      ?usage_mode ?timeouts ~certificate_authority_configuration
      ~revocation_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
