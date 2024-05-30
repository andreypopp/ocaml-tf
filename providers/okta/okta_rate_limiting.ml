(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_rate_limiting = {
  authorize : string prop;
  communications_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  login : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_rate_limiting) -> ()

let yojson_of_okta_rate_limiting =
  (function
   | {
       authorize = v_authorize;
       communications_enabled = v_communications_enabled;
       id = v_id;
       login = v_login;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login in
         ("login", arg) :: bnds
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
         match v_communications_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "communications_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_authorize in
         ("authorize", arg) :: bnds
       in
       `Assoc bnds
    : okta_rate_limiting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_rate_limiting

[@@@deriving.end]

let okta_rate_limiting ?communications_enabled ?id ~authorize ~login
    () : okta_rate_limiting =
  { authorize; communications_enabled; id; login }

type t = {
  tf_name : string;
  authorize : string prop;
  communications_enabled : bool prop;
  id : string prop;
  login : string prop;
}

let make ?communications_enabled ?id ~authorize ~login __id =
  let __type = "okta_rate_limiting" in
  let __attrs =
    ({
       tf_name = __id;
       authorize = Prop.computed __type __id "authorize";
       communications_enabled =
         Prop.computed __type __id "communications_enabled";
       id = Prop.computed __type __id "id";
       login = Prop.computed __type __id "login";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_rate_limiting
        (okta_rate_limiting ?communications_enabled ?id ~authorize
           ~login ());
    attrs = __attrs;
  }

let register ?tf_module ?communications_enabled ?id ~authorize ~login
    __id =
  let (r : _ Tf_core.resource) =
    make ?communications_enabled ?id ~authorize ~login __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
