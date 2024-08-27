(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dnsimple_lets_encrypt_certificate = {
  alternate_names : string prop list option; [@option]
  auto_renew : bool prop;
  domain_id : string prop;
  name : string prop;
  signature_algorithm : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_lets_encrypt_certificate) -> ()

let yojson_of_dnsimple_lets_encrypt_certificate =
  (function
   | {
       alternate_names = v_alternate_names;
       auto_renew = v_auto_renew;
       domain_id = v_domain_id;
       name = v_name;
       signature_algorithm = v_signature_algorithm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_signature_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signature_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_id in
         ("domain_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_renew in
         ("auto_renew", arg) :: bnds
       in
       let bnds =
         match v_alternate_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "alternate_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dnsimple_lets_encrypt_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_lets_encrypt_certificate

[@@@deriving.end]

let dnsimple_lets_encrypt_certificate ?alternate_names
    ?signature_algorithm ~auto_renew ~domain_id ~name () :
    dnsimple_lets_encrypt_certificate =
  {
    alternate_names;
    auto_renew;
    domain_id;
    name;
    signature_algorithm;
  }

type t = {
  tf_name : string;
  alternate_names : string list prop;
  authority_identifier : string prop;
  auto_renew : bool prop;
  created_at : string prop;
  csr : string prop;
  domain_id : string prop;
  expires_at : string prop;
  id : float prop;
  name : string prop;
  signature_algorithm : string prop;
  state : string prop;
  updated_at : string prop;
  years : float prop;
}

let make ?alternate_names ?signature_algorithm ~auto_renew ~domain_id
    ~name __id =
  let __type = "dnsimple_lets_encrypt_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       alternate_names = Prop.computed __type __id "alternate_names";
       authority_identifier =
         Prop.computed __type __id "authority_identifier";
       auto_renew = Prop.computed __type __id "auto_renew";
       created_at = Prop.computed __type __id "created_at";
       csr = Prop.computed __type __id "csr";
       domain_id = Prop.computed __type __id "domain_id";
       expires_at = Prop.computed __type __id "expires_at";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       signature_algorithm =
         Prop.computed __type __id "signature_algorithm";
       state = Prop.computed __type __id "state";
       updated_at = Prop.computed __type __id "updated_at";
       years = Prop.computed __type __id "years";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_dnsimple_lets_encrypt_certificate
        (dnsimple_lets_encrypt_certificate ?alternate_names
           ?signature_algorithm ~auto_renew ~domain_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?alternate_names ?signature_algorithm
    ~auto_renew ~domain_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?alternate_names ?signature_algorithm ~auto_renew ~domain_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
