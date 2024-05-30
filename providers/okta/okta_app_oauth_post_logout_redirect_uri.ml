(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app_oauth_post_logout_redirect_uri = {
  app_id : string prop;
  id : string prop option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_oauth_post_logout_redirect_uri) -> ()

let yojson_of_okta_app_oauth_post_logout_redirect_uri =
  (function
   | { app_id = v_app_id; id = v_id; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
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
    : okta_app_oauth_post_logout_redirect_uri ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_oauth_post_logout_redirect_uri

[@@@deriving.end]

let okta_app_oauth_post_logout_redirect_uri ?id ~app_id ~uri () :
    okta_app_oauth_post_logout_redirect_uri =
  { app_id; id; uri }

type t = {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  uri : string prop;
}

let make ?id ~app_id ~uri __id =
  let __type = "okta_app_oauth_post_logout_redirect_uri" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       id = Prop.computed __type __id "id";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_oauth_post_logout_redirect_uri
        (okta_app_oauth_post_logout_redirect_uri ?id ~app_id ~uri ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~app_id ~uri __id =
  let (r : _ Tf_core.resource) = make ?id ~app_id ~uri __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
