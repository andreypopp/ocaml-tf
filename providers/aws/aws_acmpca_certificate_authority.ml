(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type certificate_authority_configuration__subject = {
  common_name : string prop option; [@option]
  country : string prop option; [@option]
  distinguished_name_qualifier : string prop option; [@option]
  generation_qualifier : string prop option; [@option]
  given_name : string prop option; [@option]
  initials : string prop option; [@option]
  locality : string prop option; [@option]
  organization : string prop option; [@option]
  organizational_unit : string prop option; [@option]
  pseudonym : string prop option; [@option]
  state : string prop option; [@option]
  surname : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_authority_configuration__subject) -> ()

let yojson_of_certificate_authority_configuration__subject =
  (function
   | {
       common_name = v_common_name;
       country = v_country;
       distinguished_name_qualifier = v_distinguished_name_qualifier;
       generation_qualifier = v_generation_qualifier;
       given_name = v_given_name;
       initials = v_initials;
       locality = v_locality;
       organization = v_organization;
       organizational_unit = v_organizational_unit;
       pseudonym = v_pseudonym;
       state = v_state;
       surname = v_surname;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_surname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "surname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pseudonym with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pseudonym", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organizational_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organizational_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locality with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locality", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "initials", arg in
             bnd :: bnds
       in
       let bnds =
         match v_given_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "given_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_generation_qualifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "generation_qualifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_distinguished_name_qualifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "distinguished_name_qualifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_country with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "country", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : certificate_authority_configuration__subject ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_authority_configuration__subject

[@@@deriving.end]

type certificate_authority_configuration = {
  key_algorithm : string prop;
  signing_algorithm : string prop;
  subject : certificate_authority_configuration__subject list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_authority_configuration) -> ()

let yojson_of_certificate_authority_configuration =
  (function
   | {
       key_algorithm = v_key_algorithm;
       signing_algorithm = v_signing_algorithm;
       subject = v_subject;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_certificate_authority_configuration__subject
             v_subject
         in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_signing_algorithm
         in
         ("signing_algorithm", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_algorithm in
         ("key_algorithm", arg) :: bnds
       in
       `Assoc bnds
    : certificate_authority_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_authority_configuration

[@@@deriving.end]

type revocation_configuration__crl_configuration = {
  custom_cname : string prop option; [@option]
  enabled : bool prop option; [@option]
  expiration_in_days : float prop option; [@option]
  s3_bucket_name : string prop option; [@option]
  s3_object_acl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : revocation_configuration__crl_configuration) -> ()

let yojson_of_revocation_configuration__crl_configuration =
  (function
   | {
       custom_cname = v_custom_cname;
       enabled = v_enabled;
       expiration_in_days = v_expiration_in_days;
       s3_bucket_name = v_s3_bucket_name;
       s3_object_acl = v_s3_object_acl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_object_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_object_acl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_bucket_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "expiration_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_cname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_cname", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : revocation_configuration__crl_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_revocation_configuration__crl_configuration

[@@@deriving.end]

type revocation_configuration__ocsp_configuration = {
  enabled : bool prop;
  ocsp_custom_cname : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : revocation_configuration__ocsp_configuration) -> ()

let yojson_of_revocation_configuration__ocsp_configuration =
  (function
   | { enabled = v_enabled; ocsp_custom_cname = v_ocsp_custom_cname }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ocsp_custom_cname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ocsp_custom_cname", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : revocation_configuration__ocsp_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_revocation_configuration__ocsp_configuration

[@@@deriving.end]

type revocation_configuration = {
  crl_configuration :
    revocation_configuration__crl_configuration list;
  ocsp_configuration :
    revocation_configuration__ocsp_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : revocation_configuration) -> ()

let yojson_of_revocation_configuration =
  (function
   | {
       crl_configuration = v_crl_configuration;
       ocsp_configuration = v_ocsp_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_revocation_configuration__ocsp_configuration
             v_ocsp_configuration
         in
         ("ocsp_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_revocation_configuration__crl_configuration
             v_crl_configuration
         in
         ("crl_configuration", arg) :: bnds
       in
       `Assoc bnds
    : revocation_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_revocation_configuration

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_acmpca_certificate_authority = {
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  key_storage_security_standard : string prop option; [@option]
  permanent_deletion_time_in_days : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  usage_mode : string prop option; [@option]
  certificate_authority_configuration :
    certificate_authority_configuration list;
  revocation_configuration : revocation_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_acmpca_certificate_authority) -> ()

let yojson_of_aws_acmpca_certificate_authority =
  (function
   | {
       enabled = v_enabled;
       id = v_id;
       key_storage_security_standard =
         v_key_storage_security_standard;
       permanent_deletion_time_in_days =
         v_permanent_deletion_time_in_days;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       usage_mode = v_usage_mode;
       certificate_authority_configuration =
         v_certificate_authority_configuration;
       revocation_configuration = v_revocation_configuration;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_revocation_configuration
             v_revocation_configuration
         in
         ("revocation_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_certificate_authority_configuration
             v_certificate_authority_configuration
         in
         ("certificate_authority_configuration", arg) :: bnds
       in
       let bnds =
         match v_usage_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "usage_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
         match v_permanent_deletion_time_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "permanent_deletion_time_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_storage_security_standard with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_storage_security_standard", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_acmpca_certificate_authority ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_acmpca_certificate_authority

[@@@deriving.end]

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

let revocation_configuration ?(crl_configuration = [])
    ?(ocsp_configuration = []) () : revocation_configuration =
  { crl_configuration; ocsp_configuration }

let timeouts ?create () : timeouts = { create }

let aws_acmpca_certificate_authority ?enabled ?id
    ?key_storage_security_standard ?permanent_deletion_time_in_days
    ?tags ?tags_all ?type_ ?usage_mode
    ?(revocation_configuration = []) ?timeouts
    ~certificate_authority_configuration () :
    aws_acmpca_certificate_authority =
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
    ?usage_mode ?(revocation_configuration = []) ?timeouts
    ~certificate_authority_configuration __id =
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
           ?usage_mode ~revocation_configuration ?timeouts
           ~certificate_authority_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?key_storage_security_standard
    ?permanent_deletion_time_in_days ?tags ?tags_all ?type_
    ?usage_mode ?(revocation_configuration = []) ?timeouts
    ~certificate_authority_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?key_storage_security_standard
      ?permanent_deletion_time_in_days ?tags ?tags_all ?type_
      ?usage_mode ~revocation_configuration ?timeouts
      ~certificate_authority_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
