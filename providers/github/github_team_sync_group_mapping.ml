(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type group = {
  group_description : string prop;
  group_id : string prop;
  group_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : group) -> ()

let yojson_of_group =
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
    : group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_group

[@@@deriving.end]

type github_team_sync_group_mapping = {
  id : string prop option; [@option]
  team_slug : string prop;
  group : group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_team_sync_group_mapping) -> ()

let yojson_of_github_team_sync_group_mapping =
  (function
   | { id = v_id; team_slug = v_team_slug; group = v_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_group then bnds
         else
           let arg = (yojson_of_list yojson_of_group) v_group in
           let bnd = "group", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_team_slug in
         ("team_slug", arg) :: bnds
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
    : github_team_sync_group_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_team_sync_group_mapping

[@@@deriving.end]

let group ~group_description ~group_id ~group_name () : group =
  { group_description; group_id; group_name }

let github_team_sync_group_mapping ?id ~team_slug ~group () :
    github_team_sync_group_mapping =
  { id; team_slug; group }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  team_slug : string prop;
}

let make ?id ~team_slug ~group __id =
  let __type = "github_team_sync_group_mapping" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       team_slug = Prop.computed __type __id "team_slug";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_team_sync_group_mapping
        (github_team_sync_group_mapping ?id ~team_slug ~group ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~team_slug ~group __id =
  let (r : _ Tf_core.resource) = make ?id ~team_slug ~group __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
