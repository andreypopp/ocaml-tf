(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_allow_list = {
  allow_list_value : string prop;
  created_at : string prop;
  id : string prop;
  is_active : bool prop;
  name : string prop;
  updated_at : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_allow_list) -> ()

let yojson_of_ip_allow_list =
  (function
   | {
       allow_list_value = v_allow_list_value;
       created_at = v_created_at;
       id = v_id;
       is_active = v_is_active;
       name = v_name;
       updated_at = v_updated_at;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_updated_at in
         ("updated_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_active in
         ("is_active", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created_at in
         ("created_at", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allow_list_value
         in
         ("allow_list_value", arg) :: bnds
       in
       `Assoc bnds
    : ip_allow_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_allow_list

[@@@deriving.end]

type github_organization_ip_allow_list = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_organization_ip_allow_list) -> ()

let yojson_of_github_organization_ip_allow_list =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : github_organization_ip_allow_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_organization_ip_allow_list

[@@@deriving.end]

let github_organization_ip_allow_list ?id () :
    github_organization_ip_allow_list =
  { id }

type t = {
  tf_name : string;
  id : string prop;
  ip_allow_list : ip_allow_list list prop;
}

let make ?id __id =
  let __type = "github_organization_ip_allow_list" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ip_allow_list = Prop.computed __type __id "ip_allow_list";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_organization_ip_allow_list
        (github_organization_ip_allow_list ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
