(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_organization_custom_role = {
  base_role : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_organization_custom_role) -> ()

let yojson_of_github_organization_custom_role =
  (function
   | {
       base_role = v_base_role;
       description = v_description;
       id = v_id;
       name = v_name;
       permissions = v_permissions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_permissions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_permissions
           in
           let bnd = "permissions", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_base_role in
         ("base_role", arg) :: bnds
       in
       `Assoc bnds
    : github_organization_custom_role ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_organization_custom_role

[@@@deriving.end]

let github_organization_custom_role ?description ?id ~base_role ~name
    ~permissions () : github_organization_custom_role =
  { base_role; description; id; name; permissions }

type t = {
  tf_name : string;
  base_role : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  permissions : string list prop;
}

let make ?description ?id ~base_role ~name ~permissions __id =
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
        (github_organization_custom_role ?description ?id ~base_role
           ~name ~permissions ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~base_role ~name
    ~permissions __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~base_role ~name ~permissions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
