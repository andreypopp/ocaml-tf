(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_admin_role_custom_assignments = {
  custom_role_id : string prop;
  id : string prop option; [@option]
  members : string prop list option; [@option]
  resource_set_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_admin_role_custom_assignments) -> ()

let yojson_of_okta_admin_role_custom_assignments =
  (function
   | {
       custom_role_id = v_custom_role_id;
       id = v_id;
       members = v_members;
       resource_set_id = v_resource_set_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_set_id
         in
         ("resource_set_id", arg) :: bnds
       in
       let bnds =
         match v_members with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "members", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_role_id
         in
         ("custom_role_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_admin_role_custom_assignments ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_admin_role_custom_assignments

[@@@deriving.end]

let okta_admin_role_custom_assignments ?id ?members ~custom_role_id
    ~resource_set_id () : okta_admin_role_custom_assignments =
  { custom_role_id; id; members; resource_set_id }

type t = {
  tf_name : string;
  custom_role_id : string prop;
  id : string prop;
  members : string list prop;
  resource_set_id : string prop;
}

let make ?id ?members ~custom_role_id ~resource_set_id __id =
  let __type = "okta_admin_role_custom_assignments" in
  let __attrs =
    ({
       tf_name = __id;
       custom_role_id = Prop.computed __type __id "custom_role_id";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       resource_set_id = Prop.computed __type __id "resource_set_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_admin_role_custom_assignments
        (okta_admin_role_custom_assignments ?id ?members
           ~custom_role_id ~resource_set_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?members ~custom_role_id ~resource_set_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?members ~custom_role_id ~resource_set_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
