(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_user = unit [@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_user) -> ()

let yojson_of_cloudflare_user =
  (yojson_of_unit
    : cloudflare_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_user

[@@@deriving.end]

let cloudflare_user () = ()

type t = {
  tf_name : string;
  email : string prop;
  id : string prop;
  username : string prop;
}

let make __id =
  let __type = "cloudflare_user" in
  let __attrs =
    ({
       tf_name = __id;
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_cloudflare_user (cloudflare_user ());
    attrs = __attrs;
  }

let register ?tf_module __id =
  let (r : _ Tf_core.resource) = make __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
