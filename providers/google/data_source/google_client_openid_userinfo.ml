(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_client_openid_userinfo = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : google_client_openid_userinfo) -> ()

let yojson_of_google_client_openid_userinfo =
  (yojson_of_unit
    : google_client_openid_userinfo ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_client_openid_userinfo

[@@@deriving.end]

let google_client_openid_userinfo () = ()

type t = { email : string prop; id : string prop }

let make __id =
  let __type = "google_client_openid_userinfo" in
  let __attrs =
    ({
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_client_openid_userinfo
        (google_client_openid_userinfo ());
    attrs = __attrs;
  }

let register ?tf_module __id =
  let (r : _ Tf_core.resource) = make __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
