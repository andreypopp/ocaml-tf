(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type labels = {
  color : string prop;
  description : string prop;
  name : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : labels) -> ()

let yojson_of_labels =
  (function
   | {
       color = v_color;
       description = v_description;
       name = v_name;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_color in
         ("color", arg) :: bnds
       in
       `Assoc bnds
    : labels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_labels

[@@@deriving.end]

type github_issue_labels = {
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_issue_labels) -> ()

let yojson_of_github_issue_labels =
  (function
   | { id = v_id; repository = v_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
    : github_issue_labels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_issue_labels

[@@@deriving.end]

let github_issue_labels ?id ~repository () : github_issue_labels =
  { id; repository }

type t = {
  tf_name : string;
  id : string prop;
  labels : labels list prop;
  repository : string prop;
}

let make ?id ~repository __id =
  let __type = "github_issue_labels" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_issue_labels
        (github_issue_labels ?id ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository __id =
  let (r : _ Tf_core.resource) = make ?id ~repository __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
