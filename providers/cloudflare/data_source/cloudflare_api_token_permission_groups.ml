(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_api_token_permission_groups = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_api_token_permission_groups) -> ()

let yojson_of_cloudflare_api_token_permission_groups =
  (yojson_of_unit
    : cloudflare_api_token_permission_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_api_token_permission_groups

[@@@deriving.end]

let cloudflare_api_token_permission_groups () = ()

type t = {
  account : (string * string) list prop;
  id : string prop;
  permissions : (string * string) list prop;
  r2 : (string * string) list prop;
  user : (string * string) list prop;
  zone : (string * string) list prop;
}

let make __id =
  let __type = "cloudflare_api_token_permission_groups" in
  let __attrs =
    ({
       account = Prop.computed __type __id "account";
       id = Prop.computed __type __id "id";
       permissions = Prop.computed __type __id "permissions";
       r2 = Prop.computed __type __id "r2";
       user = Prop.computed __type __id "user";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_api_token_permission_groups
        (cloudflare_api_token_permission_groups ());
    attrs = __attrs;
  }

let register ?tf_module __id =
  let (r : _ Tf_core.resource) = make __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
