(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type revocation_configuration__ocsp_configuration = {
  enabled : bool prop;
  ocsp_custom_cname : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_ocsp_custom_cname
         in
         ("ocsp_custom_cname", arg) :: bnds
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

type revocation_configuration__crl_configuration = {
  custom_cname : string prop;
  enabled : bool prop;
  expiration_in_days : float prop;
  s3_bucket_name : string prop;
  s3_object_acl : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_s3_object_acl in
         ("s3_object_acl", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_expiration_in_days
         in
         ("expiration_in_days", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_custom_cname in
         ("custom_cname", arg) :: bnds
       in
       `Assoc bnds
    : revocation_configuration__crl_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_revocation_configuration__crl_configuration

[@@@deriving.end]

type revocation_configuration = {
  crl_configuration :
    revocation_configuration__crl_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ocsp_configuration :
    revocation_configuration__ocsp_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_ocsp_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_revocation_configuration__ocsp_configuration)
               v_ocsp_configuration
           in
           let bnd = "ocsp_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_crl_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_revocation_configuration__crl_configuration)
               v_crl_configuration
           in
           let bnd = "crl_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : revocation_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_revocation_configuration

[@@@deriving.end]

type aws_acmpca_certificate_authority = {
  arn : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_acmpca_certificate_authority) -> ()

let yojson_of_aws_acmpca_certificate_authority =
  (function
   | { arn = v_arn; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_acmpca_certificate_authority ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_acmpca_certificate_authority

[@@@deriving.end]

let aws_acmpca_certificate_authority ?id ?tags ~arn () :
    aws_acmpca_certificate_authority =
  { arn; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  certificate : string prop;
  certificate_chain : string prop;
  certificate_signing_request : string prop;
  id : string prop;
  key_storage_security_standard : string prop;
  not_after : string prop;
  not_before : string prop;
  revocation_configuration : revocation_configuration list prop;
  serial : string prop;
  status : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  usage_mode : string prop;
}

let make ?id ?tags ~arn __id =
  let __type = "aws_acmpca_certificate_authority" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       certificate = Prop.computed __type __id "certificate";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       certificate_signing_request =
         Prop.computed __type __id "certificate_signing_request";
       id = Prop.computed __type __id "id";
       key_storage_security_standard =
         Prop.computed __type __id "key_storage_security_standard";
       not_after = Prop.computed __type __id "not_after";
       not_before = Prop.computed __type __id "not_before";
       revocation_configuration =
         Prop.computed __type __id "revocation_configuration";
       serial = Prop.computed __type __id "serial";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
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
        (aws_acmpca_certificate_authority ?id ?tags ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
