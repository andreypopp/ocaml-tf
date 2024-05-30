(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type webhooks = {
  active : bool prop;
  id : float prop;
  name : string prop;
  type_ : string prop; [@key "type"]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webhooks) -> ()

let yojson_of_webhooks =
  (function
   | {
       active = v_active;
       id = v_id;
       name = v_name;
       type_ = v_type_;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_active in
         ("active", arg) :: bnds
       in
       `Assoc bnds
    : webhooks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webhooks

[@@@deriving.end]

type github_repository_webhooks = {
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_webhooks) -> ()

let yojson_of_github_repository_webhooks =
  (function
   | { id = v_id; repository = v_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
    : github_repository_webhooks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_webhooks

[@@@deriving.end]

let github_repository_webhooks ?id ~repository () :
    github_repository_webhooks =
  { id; repository }

type t = {
  tf_name : string;
  id : string prop;
  repository : string prop;
  webhooks : webhooks list prop;
}

let make ?id ~repository __id =
  let __type = "github_repository_webhooks" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
       webhooks = Prop.computed __type __id "webhooks";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_webhooks
        (github_repository_webhooks ?id ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository __id =
  let (r : _ Tf_core.resource) = make ?id ~repository __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
