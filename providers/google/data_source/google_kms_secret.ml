(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_kms_secret = {
  additional_authenticated_data : string prop option; [@option]
  ciphertext : string prop;
  crypto_key : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_secret) -> ()

let yojson_of_google_kms_secret =
  (function
   | {
       additional_authenticated_data =
         v_additional_authenticated_data;
       ciphertext = v_ciphertext;
       crypto_key = v_crypto_key;
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
         let arg = yojson_of_prop yojson_of_string v_crypto_key in
         ("crypto_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ciphertext in
         ("ciphertext", arg) :: bnds
       in
       let bnds =
         match v_additional_authenticated_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "additional_authenticated_data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_kms_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_secret

[@@@deriving.end]

let google_kms_secret ?additional_authenticated_data ?id ~ciphertext
    ~crypto_key () : google_kms_secret =
  { additional_authenticated_data; ciphertext; crypto_key; id }

type t = {
  additional_authenticated_data : string prop;
  ciphertext : string prop;
  crypto_key : string prop;
  id : string prop;
  plaintext : string prop;
}

let make ?additional_authenticated_data ?id ~ciphertext ~crypto_key
    __id =
  let __type = "google_kms_secret" in
  let __attrs =
    ({
       additional_authenticated_data =
         Prop.computed __type __id "additional_authenticated_data";
       ciphertext = Prop.computed __type __id "ciphertext";
       crypto_key = Prop.computed __type __id "crypto_key";
       id = Prop.computed __type __id "id";
       plaintext = Prop.computed __type __id "plaintext";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_secret
        (google_kms_secret ?additional_authenticated_data ?id
           ~ciphertext ~crypto_key ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_authenticated_data ?id
    ~ciphertext ~crypto_key __id =
  let (r : _ Tf_core.resource) =
    make ?additional_authenticated_data ?id ~ciphertext ~crypto_key
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
