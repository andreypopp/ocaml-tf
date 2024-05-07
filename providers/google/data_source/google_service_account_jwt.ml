(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_service_account_jwt = {
  delegates : string prop list option; [@option]
  expires_in : float prop option; [@option]
  id : string prop option; [@option]
  payload : string prop;
  target_service_account : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_service_account_jwt) -> ()

let yojson_of_google_service_account_jwt =
  (function
   | {
       delegates = v_delegates;
       expires_in = v_expires_in;
       id = v_id;
       payload = v_payload;
       target_service_account = v_target_service_account;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_service_account
         in
         ("target_service_account", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_payload in
         ("payload", arg) :: bnds
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
         match v_expires_in with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "expires_in", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delegates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "delegates", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_service_account_jwt -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_service_account_jwt

[@@@deriving.end]

let google_service_account_jwt ?delegates ?expires_in ?id ~payload
    ~target_service_account () : google_service_account_jwt =
  { delegates; expires_in; id; payload; target_service_account }

type t = {
  tf_name : string;
  delegates : string list prop;
  expires_in : float prop;
  id : string prop;
  jwt : string prop;
  payload : string prop;
  target_service_account : string prop;
}

let make ?delegates ?expires_in ?id ~payload ~target_service_account
    __id =
  let __type = "google_service_account_jwt" in
  let __attrs =
    ({
       tf_name = __id;
       delegates = Prop.computed __type __id "delegates";
       expires_in = Prop.computed __type __id "expires_in";
       id = Prop.computed __type __id "id";
       jwt = Prop.computed __type __id "jwt";
       payload = Prop.computed __type __id "payload";
       target_service_account =
         Prop.computed __type __id "target_service_account";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_account_jwt
        (google_service_account_jwt ?delegates ?expires_in ?id
           ~payload ~target_service_account ());
    attrs = __attrs;
  }

let register ?tf_module ?delegates ?expires_in ?id ~payload
    ~target_service_account __id =
  let (r : _ Tf_core.resource) =
    make ?delegates ?expires_in ?id ~payload ~target_service_account
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
