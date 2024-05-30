(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_issue_label = {
  color : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_issue_label) -> ()

let yojson_of_github_issue_label =
  (function
   | {
       color = v_color;
       description = v_description;
       id = v_id;
       name = v_name;
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_color in
         ("color", arg) :: bnds
       in
       `Assoc bnds
    : github_issue_label -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_issue_label

[@@@deriving.end]

let github_issue_label ?description ?id ~color ~name ~repository () :
    github_issue_label =
  { color; description; id; name; repository }

type t = {
  tf_name : string;
  color : string prop;
  description : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  repository : string prop;
  url : string prop;
}

let make ?description ?id ~color ~name ~repository __id =
  let __type = "github_issue_label" in
  let __attrs =
    ({
       tf_name = __id;
       color = Prop.computed __type __id "color";
       description = Prop.computed __type __id "description";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       repository = Prop.computed __type __id "repository";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_issue_label
        (github_issue_label ?description ?id ~color ~name ~repository
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~color ~name ~repository
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~color ~name ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
