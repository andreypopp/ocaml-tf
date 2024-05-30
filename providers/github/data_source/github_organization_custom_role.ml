(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_organization_custom_role = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_organization_custom_role) -> ()

let yojson_of_github_organization_custom_role =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : github_organization_custom_role ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_organization_custom_role

[@@@deriving.end]

let github_organization_custom_role ?id ~name () :
    github_organization_custom_role =
  { id; name }

type t = {
  tf_name : string;
  base_role : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  permissions : string list prop;
}

let make ?id ~name __id =
  let __type = "github_organization_custom_role" in
  let __attrs =
    ({
       tf_name = __id;
       base_role = Prop.computed __type __id "base_role";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       permissions = Prop.computed __type __id "permissions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_organization_custom_role
        (github_organization_custom_role ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
