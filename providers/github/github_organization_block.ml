(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_organization_block = {
  id : string prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_organization_block) -> ()

let yojson_of_github_organization_block =
  (function
   | { id = v_id; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
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
    : github_organization_block -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_organization_block

[@@@deriving.end]

let github_organization_block ?id ~username () :
    github_organization_block =
  { id; username }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  username : string prop;
}

let make ?id ~username __id =
  let __type = "github_organization_block" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_organization_block
        (github_organization_block ?id ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~username __id =
  let (r : _ Tf_core.resource) = make ?id ~username __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
