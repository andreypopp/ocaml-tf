(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_admin_role_custom = {
  description : string prop;
  id : string prop option; [@option]
  label : string prop;
  permissions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_admin_role_custom) -> ()

let yojson_of_okta_admin_role_custom =
  (function
   | {
       description = v_description;
       id = v_id;
       label = v_label;
       permissions = v_permissions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "permissions", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : okta_admin_role_custom -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_admin_role_custom

[@@@deriving.end]

let okta_admin_role_custom ?id ?permissions ~description ~label () :
    okta_admin_role_custom =
  { description; id; label; permissions }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  label : string prop;
  permissions : string list prop;
}

let make ?id ?permissions ~description ~label __id =
  let __type = "okta_admin_role_custom" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       label = Prop.computed __type __id "label";
       permissions = Prop.computed __type __id "permissions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_admin_role_custom
        (okta_admin_role_custom ?id ?permissions ~description ~label
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?permissions ~description ~label __id =
  let (r : _ Tf_core.resource) =
    make ?id ?permissions ~description ~label __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
