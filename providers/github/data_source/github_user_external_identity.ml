(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_user_external_identity = {
  id : string prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_user_external_identity) -> ()

let yojson_of_github_user_external_identity =
  (function
   | { id = v_id; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_user_external_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_user_external_identity

[@@@deriving.end]

let github_user_external_identity ?id ~username () :
    github_user_external_identity =
  { id; username }

type t = {
  tf_name : string;
  id : string prop;
  login : string prop;
  saml_identity : (string * string) list prop;
  scim_identity : (string * string) list prop;
  username : string prop;
}

let make ?id ~username __id =
  let __type = "github_user_external_identity" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       login = Prop.computed __type __id "login";
       saml_identity = Prop.computed __type __id "saml_identity";
       scim_identity = Prop.computed __type __id "scim_identity";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_user_external_identity
        (github_user_external_identity ?id ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~username __id =
  let (r : _ Tf_core.resource) = make ?id ~username __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
