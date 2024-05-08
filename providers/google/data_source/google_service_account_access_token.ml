(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_service_account_access_token = {
  delegates : string prop list option; [@option]
  id : string prop option; [@option]
  lifetime : string prop option; [@option]
  scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  target_service_account : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_service_account_access_token) -> ()

let yojson_of_google_service_account_access_token =
  (function
   | {
       delegates = v_delegates;
       id = v_id;
       lifetime = v_lifetime;
       scopes = v_scopes;
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
         if [] = v_scopes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_scopes
           in
           let bnd = "scopes", arg in
           bnd :: bnds
       in
       let bnds =
         match v_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lifetime", arg in
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
    : google_service_account_access_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_service_account_access_token

[@@@deriving.end]

let google_service_account_access_token ?delegates ?id ?lifetime
    ~scopes ~target_service_account () :
    google_service_account_access_token =
  { delegates; id; lifetime; scopes; target_service_account }

type t = {
  tf_name : string;
  access_token : string prop;
  delegates : string list prop;
  id : string prop;
  lifetime : string prop;
  scopes : string list prop;
  target_service_account : string prop;
}

let make ?delegates ?id ?lifetime ~scopes ~target_service_account
    __id =
  let __type = "google_service_account_access_token" in
  let __attrs =
    ({
       tf_name = __id;
       access_token = Prop.computed __type __id "access_token";
       delegates = Prop.computed __type __id "delegates";
       id = Prop.computed __type __id "id";
       lifetime = Prop.computed __type __id "lifetime";
       scopes = Prop.computed __type __id "scopes";
       target_service_account =
         Prop.computed __type __id "target_service_account";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_account_access_token
        (google_service_account_access_token ?delegates ?id ?lifetime
           ~scopes ~target_service_account ());
    attrs = __attrs;
  }

let register ?tf_module ?delegates ?id ?lifetime ~scopes
    ~target_service_account __id =
  let (r : _ Tf_core.resource) =
    make ?delegates ?id ?lifetime ~scopes ~target_service_account
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
