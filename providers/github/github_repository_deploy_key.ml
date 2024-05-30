(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_deploy_key = {
  id : string prop option; [@option]
  key : string prop;
  read_only : bool prop option; [@option]
  repository : string prop;
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_deploy_key) -> ()

let yojson_of_github_repository_deploy_key =
  (function
   | {
       id = v_id;
       key = v_key;
       read_only = v_read_only;
       repository = v_repository;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
    : github_repository_deploy_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_deploy_key

[@@@deriving.end]

let github_repository_deploy_key ?id ?read_only ~key ~repository
    ~title () : github_repository_deploy_key =
  { id; key; read_only; repository; title }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  key : string prop;
  read_only : bool prop;
  repository : string prop;
  title : string prop;
}

let make ?id ?read_only ~key ~repository ~title __id =
  let __type = "github_repository_deploy_key" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       read_only = Prop.computed __type __id "read_only";
       repository = Prop.computed __type __id "repository";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_deploy_key
        (github_repository_deploy_key ?id ?read_only ~key ~repository
           ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?read_only ~key ~repository ~title __id =
  let (r : _ Tf_core.resource) =
    make ?id ?read_only ~key ~repository ~title __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
