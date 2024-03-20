(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_acmpca_certificate_authority_certificate = {
  certificate : string prop;  (** certificate *)
  certificate_authority_arn : string prop;
      (** certificate_authority_arn *)
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority_certificate *)

let aws_acmpca_certificate_authority_certificate ?certificate_chain
    ?id ~certificate ~certificate_authority_arn () :
    aws_acmpca_certificate_authority_certificate =
  { certificate; certificate_authority_arn; certificate_chain; id }

type t = {
  certificate : string prop;
  certificate_authority_arn : string prop;
  certificate_chain : string prop;
  id : string prop;
}

let make ?certificate_chain ?id ~certificate
    ~certificate_authority_arn __id =
  let __type = "aws_acmpca_certificate_authority_certificate" in
  let __attrs =
    ({
       certificate = Prop.computed __type __id "certificate";
       certificate_authority_arn =
         Prop.computed __type __id "certificate_authority_arn";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_acmpca_certificate_authority_certificate
        (aws_acmpca_certificate_authority_certificate
           ?certificate_chain ?id ~certificate
           ~certificate_authority_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_chain ?id ~certificate
    ~certificate_authority_arn __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_chain ?id ~certificate
      ~certificate_authority_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
