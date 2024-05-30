(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_milestone = {
  id : string prop option; [@option]
  number : float prop;
  owner : string prop;
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_milestone) -> ()

let yojson_of_github_repository_milestone =
  (function
   | {
       id = v_id;
       number = v_number;
       owner = v_owner;
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
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_number in
         ("number", arg) :: bnds
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
    : github_repository_milestone ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_milestone

[@@@deriving.end]

let github_repository_milestone ?id ~number ~owner ~repository () :
    github_repository_milestone =
  { id; number; owner; repository }

type t = {
  tf_name : string;
  description : string prop;
  due_date : string prop;
  id : string prop;
  number : float prop;
  owner : string prop;
  repository : string prop;
  state : string prop;
  title : string prop;
}

let make ?id ~number ~owner ~repository __id =
  let __type = "github_repository_milestone" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       due_date = Prop.computed __type __id "due_date";
       id = Prop.computed __type __id "id";
       number = Prop.computed __type __id "number";
       owner = Prop.computed __type __id "owner";
       repository = Prop.computed __type __id "repository";
       state = Prop.computed __type __id "state";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_milestone
        (github_repository_milestone ?id ~number ~owner ~repository
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~number ~owner ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?id ~number ~owner ~repository __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
