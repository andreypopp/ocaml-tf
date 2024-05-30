(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_app = {
  id : string prop option; [@option]
  slug : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_app) -> ()

let yojson_of_github_app =
  (function
   | { id = v_id; slug = v_slug } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slug in
         ("slug", arg) :: bnds
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
    : github_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_app

[@@@deriving.end]

let github_app ?id ~slug () : github_app = { id; slug }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  node_id : string prop;
  slug : string prop;
}

let make ?id ~slug __id =
  let __type = "github_app" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       node_id = Prop.computed __type __id "node_id";
       slug = Prop.computed __type __id "slug";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_github_app (github_app ?id ~slug ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~slug __id =
  let (r : _ Tf_core.resource) = make ?id ~slug __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
