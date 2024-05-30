(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_app_installation_repository = {
  id : string prop option; [@option]
  installation_id : string prop;
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_app_installation_repository) -> ()

let yojson_of_github_app_installation_repository =
  (function
   | {
       id = v_id;
       installation_id = v_installation_id;
       repository = v_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_installation_id
         in
         ("installation_id", arg) :: bnds
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
    : github_app_installation_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_app_installation_repository

[@@@deriving.end]

let github_app_installation_repository ?id ~installation_id
    ~repository () : github_app_installation_repository =
  { id; installation_id; repository }

type t = {
  tf_name : string;
  id : string prop;
  installation_id : string prop;
  repo_id : float prop;
  repository : string prop;
}

let make ?id ~installation_id ~repository __id =
  let __type = "github_app_installation_repository" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       installation_id = Prop.computed __type __id "installation_id";
       repo_id = Prop.computed __type __id "repo_id";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_app_installation_repository
        (github_app_installation_repository ?id ~installation_id
           ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~installation_id ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?id ~installation_id ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
