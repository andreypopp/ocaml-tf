(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_domain_certificate = {
  certificate : string prop;
  certificate_chain : string prop;
  domain_id : string prop;
  id : string prop option; [@option]
  private_key : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_domain_certificate) -> ()

let yojson_of_okta_domain_certificate =
  (function
   | {
       certificate = v_certificate;
       certificate_chain = v_certificate_chain;
       domain_id = v_domain_id;
       id = v_id;
       private_key = v_private_key;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain_id in
         ("domain_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_chain
         in
         ("certificate_chain", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_certificate in
         ("certificate", arg) :: bnds
       in
       `Assoc bnds
    : okta_domain_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_domain_certificate

[@@@deriving.end]

let okta_domain_certificate ?id ?type_ ~certificate
    ~certificate_chain ~domain_id ~private_key () :
    okta_domain_certificate =
  {
    certificate;
    certificate_chain;
    domain_id;
    id;
    private_key;
    type_;
  }

type t = {
  tf_name : string;
  certificate : string prop;
  certificate_chain : string prop;
  domain_id : string prop;
  id : string prop;
  private_key : string prop;
  type_ : string prop;
}

let make ?id ?type_ ~certificate ~certificate_chain ~domain_id
    ~private_key __id =
  let __type = "okta_domain_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate = Prop.computed __type __id "certificate";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       domain_id = Prop.computed __type __id "domain_id";
       id = Prop.computed __type __id "id";
       private_key = Prop.computed __type __id "private_key";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_domain_certificate
        (okta_domain_certificate ?id ?type_ ~certificate
           ~certificate_chain ~domain_id ~private_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?type_ ~certificate ~certificate_chain
    ~domain_id ~private_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?type_ ~certificate ~certificate_chain ~domain_id
      ~private_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
