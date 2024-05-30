(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type groups = {
  group_description : string prop;
  group_id : string prop;
  group_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : groups) -> ()

let yojson_of_groups =
  (function
   | {
       group_description = v_group_description;
       group_id = v_group_id;
       group_name = v_group_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_id in
         ("group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_description
         in
         ("group_description", arg) :: bnds
       in
       `Assoc bnds
    : groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_groups

[@@@deriving.end]

type github_organization_team_sync_groups = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_organization_team_sync_groups) -> ()

let yojson_of_github_organization_team_sync_groups =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : github_organization_team_sync_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_organization_team_sync_groups

[@@@deriving.end]

let github_organization_team_sync_groups ?id () :
    github_organization_team_sync_groups =
  { id }

type t = {
  tf_name : string;
  groups : groups list prop;
  id : string prop;
}

let make ?id __id =
  let __type = "github_organization_team_sync_groups" in
  let __attrs =
    ({
       tf_name = __id;
       groups = Prop.computed __type __id "groups";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_organization_team_sync_groups
        (github_organization_team_sync_groups ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
