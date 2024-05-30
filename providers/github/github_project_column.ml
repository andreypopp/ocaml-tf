(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_project_column = {
  id : string prop option; [@option]
  name : string prop;
  project_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_project_column) -> ()

let yojson_of_github_project_column =
  (function
   | { id = v_id; name = v_name; project_id = v_project_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : github_project_column -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_project_column

[@@@deriving.end]

let github_project_column ?id ~name ~project_id () :
    github_project_column =
  { id; name; project_id }

type t = {
  tf_name : string;
  column_id : float prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  project_id : string prop;
}

let make ?id ~name ~project_id __id =
  let __type = "github_project_column" in
  let __attrs =
    ({
       tf_name = __id;
       column_id = Prop.computed __type __id "column_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project_id = Prop.computed __type __id "project_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_project_column
        (github_project_column ?id ~name ~project_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~project_id __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~project_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
