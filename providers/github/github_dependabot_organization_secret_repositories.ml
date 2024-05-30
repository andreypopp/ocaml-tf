(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_dependabot_organization_secret_repositories = {
  id : string prop option; [@option]
  secret_name : string prop;
  selected_repository_ids : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : github_dependabot_organization_secret_repositories) -> ()

let yojson_of_github_dependabot_organization_secret_repositories =
  (function
   | {
       id = v_id;
       secret_name = v_secret_name;
       selected_repository_ids = v_selected_repository_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_selected_repository_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_selected_repository_ids
           in
           let bnd = "selected_repository_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
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
    : github_dependabot_organization_secret_repositories ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_dependabot_organization_secret_repositories

[@@@deriving.end]

let github_dependabot_organization_secret_repositories ?id
    ~secret_name ~selected_repository_ids () :
    github_dependabot_organization_secret_repositories =
  { id; secret_name; selected_repository_ids }

type t = {
  tf_name : string;
  id : string prop;
  secret_name : string prop;
  selected_repository_ids : float list prop;
}

let make ?id ~secret_name ~selected_repository_ids __id =
  let __type =
    "github_dependabot_organization_secret_repositories"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       secret_name = Prop.computed __type __id "secret_name";
       selected_repository_ids =
         Prop.computed __type __id "selected_repository_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_dependabot_organization_secret_repositories
        (github_dependabot_organization_secret_repositories ?id
           ~secret_name ~selected_repository_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~secret_name ~selected_repository_ids
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~secret_name ~selected_repository_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
