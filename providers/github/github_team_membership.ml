(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_team_membership = {
  id : string prop option; [@option]
  role : string prop option; [@option]
  team_id : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_team_membership) -> ()

let yojson_of_github_team_membership =
  (function
   | {
       id = v_id;
       role = v_role;
       team_id = v_team_id;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_team_id in
         ("team_id", arg) :: bnds
       in
       let bnds =
         match v_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role", arg in
             bnd :: bnds
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
    : github_team_membership -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_team_membership

[@@@deriving.end]

let github_team_membership ?id ?role ~team_id ~username () :
    github_team_membership =
  { id; role; team_id; username }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  role : string prop;
  team_id : string prop;
  username : string prop;
}

let make ?id ?role ~team_id ~username __id =
  let __type = "github_team_membership" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       role = Prop.computed __type __id "role";
       team_id = Prop.computed __type __id "team_id";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_team_membership
        (github_team_membership ?id ?role ~team_id ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?role ~team_id ~username __id =
  let (r : _ Tf_core.resource) =
    make ?id ?role ~team_id ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
