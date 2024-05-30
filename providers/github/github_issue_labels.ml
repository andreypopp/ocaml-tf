(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type label = {
  color : string prop;
  description : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : label) -> ()

let yojson_of_label =
  (function
   | { color = v_color; description = v_description; name = v_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : label -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_label

[@@@deriving.end]

type github_issue_labels = {
  id : string prop option; [@option]
  repository : string prop;
  label : label list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_issue_labels) -> ()

let yojson_of_github_issue_labels =
  (function
   | { id = v_id; repository = v_repository; label = v_label } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_label then bnds
         else
           let arg = (yojson_of_list yojson_of_label) v_label in
           let bnd = "label", arg in
           bnd :: bnds
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

let label ?description ~color ~name () : label =
  { color; description; name }

let github_issue_labels ?id ~repository ~label () :
    github_issue_labels =
  { id; repository; label }

type t = {
  tf_name : string;
  id : string prop;
  repository : string prop;
}

let make ?id ~repository ~label __id =
  let __type = "github_issue_labels" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_issue_labels
        (github_issue_labels ?id ~repository ~label ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository ~label __id =
  let (r : _ Tf_core.resource) = make ?id ~repository ~label __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
