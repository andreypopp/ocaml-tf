(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_acmpca_certificate_authority_certificate = {
  certificate : string prop;
  certificate_authority_arn : string prop;
  certificate_chain : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_acmpca_certificate_authority_certificate) -> ()

let yojson_of_aws_acmpca_certificate_authority_certificate =
  (function
   | {
       certificate = v_certificate;
       certificate_authority_arn = v_certificate_authority_arn;
       certificate_chain = v_certificate_chain;
       id = v_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_certificate_chain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_chain", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_certificate_authority_arn
         in
         ("certificate_authority_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_certificate in
         ("certificate", arg) :: bnds
       in
       `Assoc bnds
    : aws_acmpca_certificate_authority_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_acmpca_certificate_authority_certificate

[@@@deriving.end]

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
