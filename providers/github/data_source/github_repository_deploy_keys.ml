(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type keys = {
  id : float prop;
  key : string prop;
  title : string prop;
  verified : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : keys) -> ()

let yojson_of_keys =
  (function
   | {
       id = v_id;
       key = v_key;
       title = v_title;
       verified = v_verified;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_verified in
         ("verified", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_keys

[@@@deriving.end]

type github_repository_deploy_keys = {
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_deploy_keys) -> ()

let yojson_of_github_repository_deploy_keys =
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
    : github_repository_deploy_keys ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_deploy_keys

[@@@deriving.end]

let github_repository_deploy_keys ?id ~repository () :
    github_repository_deploy_keys =
  { id; repository }

type t = {
  tf_name : string;
  id : string prop;
  keys : keys list prop;
  repository : string prop;
}

let make ?id ~repository __id =
  let __type = "github_repository_deploy_keys" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       keys = Prop.computed __type __id "keys";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_deploy_keys
        (github_repository_deploy_keys ?id ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository __id =
  let (r : _ Tf_core.resource) = make ?id ~repository __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
