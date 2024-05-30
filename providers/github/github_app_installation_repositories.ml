(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_app_installation_repositories = {
  id : string prop option; [@option]
  installation_id : string prop;
  selected_repositories : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_app_installation_repositories) -> ()

let yojson_of_github_app_installation_repositories =
  (function
   | {
       id = v_id;
       installation_id = v_installation_id;
       selected_repositories = v_selected_repositories;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_selected_repositories then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_selected_repositories
           in
           let bnd = "selected_repositories", arg in
           bnd :: bnds
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
    : github_app_installation_repositories ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_app_installation_repositories

[@@@deriving.end]

let github_app_installation_repositories ?id ~installation_id
    ~selected_repositories () : github_app_installation_repositories
    =
  { id; installation_id; selected_repositories }

type t = {
  tf_name : string;
  id : string prop;
  installation_id : string prop;
  selected_repositories : string list prop;
}

let make ?id ~installation_id ~selected_repositories __id =
  let __type = "github_app_installation_repositories" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       installation_id = Prop.computed __type __id "installation_id";
       selected_repositories =
         Prop.computed __type __id "selected_repositories";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_app_installation_repositories
        (github_app_installation_repositories ?id ~installation_id
           ~selected_repositories ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~installation_id ~selected_repositories
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~installation_id ~selected_repositories __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
