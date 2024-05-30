(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type members = {
  role : string prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : members) -> ()

let yojson_of_members =
  (function
   | { role = v_role; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : members -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_members

[@@@deriving.end]

type github_team_members = {
  id : string prop option; [@option]
  team_id : string prop;
  members : members list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_team_members) -> ()

let yojson_of_github_team_members =
  (function
   | { id = v_id; team_id = v_team_id; members = v_members } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_members then bnds
         else
           let arg = (yojson_of_list yojson_of_members) v_members in
           let bnd = "members", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_team_id in
         ("team_id", arg) :: bnds
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
    : github_team_members -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_team_members

[@@@deriving.end]

let members ?role ~username () : members = { role; username }

let github_team_members ?id ~team_id ~members () :
    github_team_members =
  { id; team_id; members }

type t = {
  tf_name : string;
  id : string prop;
  team_id : string prop;
}

let make ?id ~team_id ~members __id =
  let __type = "github_team_members" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       team_id = Prop.computed __type __id "team_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_team_members
        (github_team_members ?id ~team_id ~members ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~team_id ~members __id =
  let (r : _ Tf_core.resource) = make ?id ~team_id ~members __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
