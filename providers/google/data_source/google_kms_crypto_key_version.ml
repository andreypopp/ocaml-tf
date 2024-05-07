(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type public_key = { algorithm : string prop; pem : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : public_key) -> ()

let yojson_of_public_key =
  (function
   | { algorithm = v_algorithm; pem = v_pem } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pem in
         ("pem", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : public_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_key

[@@@deriving.end]

type google_kms_crypto_key_version = {
  crypto_key : string prop;
  id : string prop option; [@option]
  version : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_crypto_key_version) -> ()

let yojson_of_google_kms_crypto_key_version =
  (function
   | { crypto_key = v_crypto_key; id = v_id; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "version", arg in
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
         let arg = yojson_of_prop yojson_of_string v_crypto_key in
         ("crypto_key", arg) :: bnds
       in
       `Assoc bnds
    : google_kms_crypto_key_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_crypto_key_version

[@@@deriving.end]

let google_kms_crypto_key_version ?id ?version ~crypto_key () :
    google_kms_crypto_key_version =
  { crypto_key; id; version }

type t = {
  tf_name : string;
  algorithm : string prop;
  crypto_key : string prop;
  id : string prop;
  name : string prop;
  protection_level : string prop;
  public_key : public_key list prop;
  state : string prop;
  version : float prop;
}

let make ?id ?version ~crypto_key __id =
  let __type = "google_kms_crypto_key_version" in
  let __attrs =
    ({
       tf_name = __id;
       algorithm = Prop.computed __type __id "algorithm";
       crypto_key = Prop.computed __type __id "crypto_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       protection_level =
         Prop.computed __type __id "protection_level";
       public_key = Prop.computed __type __id "public_key";
       state = Prop.computed __type __id "state";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_crypto_key_version
        (google_kms_crypto_key_version ?id ?version ~crypto_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?version ~crypto_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?version ~crypto_key __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
