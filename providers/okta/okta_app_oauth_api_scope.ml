(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app_oauth_api_scope = {
  app_id : string prop;
  id : string prop option; [@option]
  issuer : string prop;
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_oauth_api_scope) -> ()

let yojson_of_okta_app_oauth_api_scope =
  (function
   | {
       app_id = v_app_id;
       id = v_id;
       issuer = v_issuer;
       scopes = v_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_scopes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_scopes
           in
           let bnd = "scopes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_app_oauth_api_scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_oauth_api_scope

[@@@deriving.end]

let okta_app_oauth_api_scope ?id ~app_id ~issuer ~scopes () :
    okta_app_oauth_api_scope =
  { app_id; id; issuer; scopes }

type t = {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  issuer : string prop;
  scopes : string list prop;
}

let make ?id ~app_id ~issuer ~scopes __id =
  let __type = "okta_app_oauth_api_scope" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       scopes = Prop.computed __type __id "scopes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_oauth_api_scope
        (okta_app_oauth_api_scope ?id ~app_id ~issuer ~scopes ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~app_id ~issuer ~scopes __id =
  let (r : _ Tf_core.resource) =
    make ?id ~app_id ~issuer ~scopes __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
