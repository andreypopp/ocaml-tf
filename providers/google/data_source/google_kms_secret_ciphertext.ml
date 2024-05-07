(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_kms_secret_ciphertext = {
  crypto_key : string prop;
  id : string prop option; [@option]
  plaintext : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_secret_ciphertext) -> ()

let yojson_of_google_kms_secret_ciphertext =
  (function
   | {
       crypto_key = v_crypto_key;
       id = v_id;
       plaintext = v_plaintext;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_plaintext in
         ("plaintext", arg) :: bnds
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
       `Assoc bnds
    : google_kms_secret_ciphertext ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_secret_ciphertext

[@@@deriving.end]

let google_kms_secret_ciphertext ?id ~crypto_key ~plaintext () :
    google_kms_secret_ciphertext =
  { crypto_key; id; plaintext }

type t = {
  tf_name : string;
  ciphertext : string prop;
  crypto_key : string prop;
  id : string prop;
  plaintext : string prop;
}

let make ?id ~crypto_key ~plaintext __id =
  let __type = "google_kms_secret_ciphertext" in
  let __attrs =
    ({
       tf_name = __id;
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
      yojson_of_google_kms_secret_ciphertext
        (google_kms_secret_ciphertext ?id ~crypto_key ~plaintext ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~crypto_key ~plaintext __id =
  let (r : _ Tf_core.resource) =
    make ?id ~crypto_key ~plaintext __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
