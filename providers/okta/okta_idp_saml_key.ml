(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_idp_saml_key = {
  id : string prop option; [@option]
  x5c : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_idp_saml_key) -> ()

let yojson_of_okta_idp_saml_key =
  (function
   | { id = v_id; x5c = v_x5c } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_x5c then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string)) v_x5c
           in
           let bnd = "x5c", arg in
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
       `Assoc bnds
    : okta_idp_saml_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_idp_saml_key

[@@@deriving.end]

let okta_idp_saml_key ?id ~x5c () : okta_idp_saml_key = { id; x5c }

type t = {
  tf_name : string;
  created : string prop;
  expires_at : string prop;
  id : string prop;
  kid : string prop;
  kty : string prop;
  use : string prop;
  x5c : string list prop;
  x5t_s256 : string prop;
}

let make ?id ~x5c __id =
  let __type = "okta_idp_saml_key" in
  let __attrs =
    ({
       tf_name = __id;
       created = Prop.computed __type __id "created";
       expires_at = Prop.computed __type __id "expires_at";
       id = Prop.computed __type __id "id";
       kid = Prop.computed __type __id "kid";
       kty = Prop.computed __type __id "kty";
       use = Prop.computed __type __id "use";
       x5c = Prop.computed __type __id "x5c";
       x5t_s256 = Prop.computed __type __id "x5t_s256";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_idp_saml_key (okta_idp_saml_key ?id ~x5c ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~x5c __id =
  let (r : _ Tf_core.resource) = make ?id ~x5c __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
