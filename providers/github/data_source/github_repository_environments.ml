(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type environments = { name : string prop; node_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : environments) -> ()

let yojson_of_environments =
  (function
   | { name = v_name; node_id = v_node_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_id in
         ("node_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : environments -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_environments

[@@@deriving.end]

type github_repository_environments = {
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_environments) -> ()

let yojson_of_github_repository_environments =
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
    : github_repository_environments ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_environments

[@@@deriving.end]

let github_repository_environments ?id ~repository () :
    github_repository_environments =
  { id; repository }

type t = {
  tf_name : string;
  environments : environments list prop;
  id : string prop;
  repository : string prop;
}

let make ?id ~repository __id =
  let __type = "github_repository_environments" in
  let __attrs =
    ({
       tf_name = __id;
       environments = Prop.computed __type __id "environments";
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_environments
        (github_repository_environments ?id ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository __id =
  let (r : _ Tf_core.resource) = make ?id ~repository __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
