(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_mtls_certificate = {
  account_id : string prop;
  ca : bool prop;
  certificates : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  private_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_mtls_certificate) -> ()

let yojson_of_cloudflare_mtls_certificate =
  (function
   | {
       account_id = v_account_id;
       ca = v_ca;
       certificates = v_certificates;
       id = v_id;
       name = v_name;
       private_key = v_private_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_certificates in
         ("certificates", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_ca in
         ("ca", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_mtls_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_mtls_certificate

[@@@deriving.end]

let cloudflare_mtls_certificate ?id ?name ?private_key ~account_id
    ~ca ~certificates () : cloudflare_mtls_certificate =
  { account_id; ca; certificates; id; name; private_key }

type t = {
  tf_name : string;
  account_id : string prop;
  ca : bool prop;
  certificates : string prop;
  expires_on : string prop;
  id : string prop;
  issuer : string prop;
  name : string prop;
  private_key : string prop;
  serial_number : string prop;
  signature : string prop;
  uploaded_on : string prop;
}

let make ?id ?name ?private_key ~account_id ~ca ~certificates __id =
  let __type = "cloudflare_mtls_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       ca = Prop.computed __type __id "ca";
       certificates = Prop.computed __type __id "certificates";
       expires_on = Prop.computed __type __id "expires_on";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       name = Prop.computed __type __id "name";
       private_key = Prop.computed __type __id "private_key";
       serial_number = Prop.computed __type __id "serial_number";
       signature = Prop.computed __type __id "signature";
       uploaded_on = Prop.computed __type __id "uploaded_on";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_mtls_certificate
        (cloudflare_mtls_certificate ?id ?name ?private_key
           ~account_id ~ca ~certificates ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?private_key ~account_id ~ca
    ~certificates __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?private_key ~account_id ~ca ~certificates __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
