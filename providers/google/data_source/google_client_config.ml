(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_client_config = unit [@@deriving_inline yojson_of]

let _ = fun (_ : google_client_config) -> ()

let yojson_of_google_client_config =
  (yojson_of_unit
    : google_client_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_client_config

[@@@deriving.end]

let google_client_config () = ()

type t = {
  tf_name : string;
  access_token : string prop;
  id : string prop;
  project : string prop;
  region : string prop;
  zone : string prop;
}

let make __id =
  let __type = "google_client_config" in
  let __attrs =
    ({
       tf_name = __id;
       access_token = Prop.computed __type __id "access_token";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_google_client_config (google_client_config ());
    attrs = __attrs;
  }

let register ?tf_module __id =
  let (r : _ Tf_core.resource) = make __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
