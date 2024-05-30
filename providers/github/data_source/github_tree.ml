(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type entries = {
  mode : string prop;
  path : string prop;
  sha : string prop;
  size : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : entries) -> ()

let yojson_of_entries =
  (function
   | {
       mode = v_mode;
       path = v_path;
       sha = v_sha;
       size = v_size;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sha in
         ("sha", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : entries -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_entries

[@@@deriving.end]

type github_tree = {
  id : string prop option; [@option]
  recursive : bool prop option; [@option]
  repository : string prop;
  tree_sha : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_tree) -> ()

let yojson_of_github_tree =
  (function
   | {
       id = v_id;
       recursive = v_recursive;
       repository = v_repository;
       tree_sha = v_tree_sha;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tree_sha in
         ("tree_sha", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         match v_recursive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "recursive", arg in
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
    : github_tree -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_tree

[@@@deriving.end]

let github_tree ?id ?recursive ~repository ~tree_sha () : github_tree
    =
  { id; recursive; repository; tree_sha }

type t = {
  tf_name : string;
  entries : entries list prop;
  id : string prop;
  recursive : bool prop;
  repository : string prop;
  tree_sha : string prop;
}

let make ?id ?recursive ~repository ~tree_sha __id =
  let __type = "github_tree" in
  let __attrs =
    ({
       tf_name = __id;
       entries = Prop.computed __type __id "entries";
       id = Prop.computed __type __id "id";
       recursive = Prop.computed __type __id "recursive";
       repository = Prop.computed __type __id "repository";
       tree_sha = Prop.computed __type __id "tree_sha";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_tree
        (github_tree ?id ?recursive ~repository ~tree_sha ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?recursive ~repository ~tree_sha __id =
  let (r : _ Tf_core.resource) =
    make ?id ?recursive ~repository ~tree_sha __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
