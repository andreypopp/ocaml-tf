(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type validity = {
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validity) -> ()

let yojson_of_validity =
  (function
   | { type_ = v_type_; value = v_value } ->
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
       `Assoc bnds
    : validity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validity

[@@@deriving.end]

type aws_acmpca_certificate = {
  api_passthrough : string prop option; [@option]
  certificate_authority_arn : string prop;
  certificate_signing_request : string prop;
  id : string prop option; [@option]
  signing_algorithm : string prop;
  template_arn : string prop option; [@option]
  validity : validity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_acmpca_certificate) -> ()

let yojson_of_aws_acmpca_certificate =
  (function
   | {
       api_passthrough = v_api_passthrough;
       certificate_authority_arn = v_certificate_authority_arn;
       certificate_signing_request = v_certificate_signing_request;
       id = v_id;
       signing_algorithm = v_signing_algorithm;
       template_arn = v_template_arn;
       validity = v_validity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_validity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_validity) v_validity
           in
           let bnd = "validity", arg in
           bnd :: bnds
       in
       let bnds =
         match v_template_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_signing_algorithm
         in
         ("signing_algorithm", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_certificate_signing_request
         in
         ("certificate_signing_request", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_certificate_authority_arn
         in
         ("certificate_authority_arn", arg) :: bnds
       in
       let bnds =
         match v_api_passthrough with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_passthrough", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_acmpca_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_acmpca_certificate

[@@@deriving.end]

let validity ~type_ ~value () : validity = { type_; value }

let aws_acmpca_certificate ?api_passthrough ?id ?template_arn
    ~certificate_authority_arn ~certificate_signing_request
    ~signing_algorithm ~validity () : aws_acmpca_certificate =
  {
    api_passthrough;
    certificate_authority_arn;
    certificate_signing_request;
    id;
    signing_algorithm;
    template_arn;
    validity;
  }

type t = {
  tf_name : string;
  api_passthrough : string prop;
  arn : string prop;
  certificate : string prop;
  certificate_authority_arn : string prop;
  certificate_chain : string prop;
  certificate_signing_request : string prop;
  id : string prop;
  signing_algorithm : string prop;
  template_arn : string prop;
}

let make ?api_passthrough ?id ?template_arn
    ~certificate_authority_arn ~certificate_signing_request
    ~signing_algorithm ~validity __id =
  let __type = "aws_acmpca_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       api_passthrough = Prop.computed __type __id "api_passthrough";
       arn = Prop.computed __type __id "arn";
       certificate = Prop.computed __type __id "certificate";
       certificate_authority_arn =
         Prop.computed __type __id "certificate_authority_arn";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       certificate_signing_request =
         Prop.computed __type __id "certificate_signing_request";
       id = Prop.computed __type __id "id";
       signing_algorithm =
         Prop.computed __type __id "signing_algorithm";
       template_arn = Prop.computed __type __id "template_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_acmpca_certificate
        (aws_acmpca_certificate ?api_passthrough ?id ?template_arn
           ~certificate_authority_arn ~certificate_signing_request
           ~signing_algorithm ~validity ());
    attrs = __attrs;
  }

let register ?tf_module ?api_passthrough ?id ?template_arn
    ~certificate_authority_arn ~certificate_signing_request
    ~signing_algorithm ~validity __id =
  let (r : _ Tf_core.resource) =
    make ?api_passthrough ?id ?template_arn
      ~certificate_authority_arn ~certificate_signing_request
      ~signing_algorithm ~validity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
