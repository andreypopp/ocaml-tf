(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_emu_group_mapping = {
  group_id : float prop;
  id : string prop option; [@option]
  team_slug : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_emu_group_mapping) -> ()

let yojson_of_github_emu_group_mapping =
  (function
   | { group_id = v_group_id; id = v_id; team_slug = v_team_slug } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_group_id in
         ("group_id", arg) :: bnds
       in
       `Assoc bnds
    : github_emu_group_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_emu_group_mapping

[@@@deriving.end]

let github_emu_group_mapping ?id ~group_id ~team_slug () :
    github_emu_group_mapping =
  { group_id; id; team_slug }

type t = {
  tf_name : string;
  etag : string prop;
  group_id : float prop;
  id : string prop;
  team_slug : string prop;
}

let make ?id ~group_id ~team_slug __id =
  let __type = "github_emu_group_mapping" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       group_id = Prop.computed __type __id "group_id";
       id = Prop.computed __type __id "id";
       team_slug = Prop.computed __type __id "team_slug";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_emu_group_mapping
        (github_emu_group_mapping ?id ~group_id ~team_slug ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group_id ~team_slug __id =
  let (r : _ Tf_core.resource) =
    make ?id ~group_id ~team_slug __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
