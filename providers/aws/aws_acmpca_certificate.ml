(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type validity = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** validity *)

type aws_acmpca_certificate = {
  api_passthrough : string prop option; [@option]
      (** api_passthrough *)
  certificate_authority_arn : string prop;
      (** certificate_authority_arn *)
  certificate_signing_request : string prop;
      (** certificate_signing_request *)
  id : string prop option; [@option]  (** id *)
  signing_algorithm : string prop;  (** signing_algorithm *)
  template_arn : string prop option; [@option]  (** template_arn *)
  validity : validity list;
}
[@@deriving yojson_of]
(** aws_acmpca_certificate *)

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
