(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_kms_secret_ciphertext = {
  additional_authenticated_data : string prop option; [@option]
  crypto_key : string prop;
  id : string prop option; [@option]
  plaintext : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_secret_ciphertext) -> ()

let yojson_of_google_kms_secret_ciphertext =
  (function
   | {
       additional_authenticated_data =
         v_additional_authenticated_data;
       crypto_key = v_crypto_key;
       id = v_id;
       plaintext = v_plaintext;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
       let bnds =
         match v_additional_authenticated_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "additional_authenticated_data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_kms_secret_ciphertext ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_secret_ciphertext

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_kms_secret_ciphertext ?additional_authenticated_data ?id
    ?timeouts ~crypto_key ~plaintext () :
    google_kms_secret_ciphertext =
  {
    additional_authenticated_data;
    crypto_key;
    id;
    plaintext;
    timeouts;
  }

type t = {
  tf_name : string;
  additional_authenticated_data : string prop;
  ciphertext : string prop;
  crypto_key : string prop;
  id : string prop;
  plaintext : string prop;
}

let make ?additional_authenticated_data ?id ?timeouts ~crypto_key
    ~plaintext __id =
  let __type = "google_kms_secret_ciphertext" in
  let __attrs =
    ({
       tf_name = __id;
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
      yojson_of_google_kms_secret_ciphertext
        (google_kms_secret_ciphertext ?additional_authenticated_data
           ?id ?timeouts ~crypto_key ~plaintext ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_authenticated_data ?id ?timeouts
    ~crypto_key ~plaintext __id =
  let (r : _ Tf_core.resource) =
    make ?additional_authenticated_data ?id ?timeouts ~crypto_key
      ~plaintext __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
