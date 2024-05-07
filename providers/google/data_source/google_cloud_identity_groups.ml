(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type groups__group_key = {
  id : string prop;
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : groups__group_key) -> ()

let yojson_of_groups__group_key =
  (function
   | { id = v_id; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : groups__group_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_groups__group_key

[@@@deriving.end]

type groups__additional_group_keys = {
  id : string prop;
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : groups__additional_group_keys) -> ()

let yojson_of_groups__additional_group_keys =
  (function
   | { id = v_id; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : groups__additional_group_keys ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_groups__additional_group_keys

[@@@deriving.end]

type groups = {
  additional_group_keys : groups__additional_group_keys list;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  group_key : groups__group_key list;
  initial_group_config : string prop;
  labels : (string * string prop) list;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : groups) -> ()

let yojson_of_groups =
  (function
   | {
       additional_group_keys = v_additional_group_keys;
       create_time = v_create_time;
       description = v_description;
       display_name = v_display_name;
       group_key = v_group_key;
       initial_group_config = v_initial_group_config;
       labels = v_labels;
       name = v_name;
       parent = v_parent;
       update_time = v_update_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_initial_group_config
         in
         ("initial_group_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_groups__group_key v_group_key
         in
         ("group_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_groups__additional_group_keys
             v_additional_group_keys
         in
         ("additional_group_keys", arg) :: bnds
       in
       `Assoc bnds
    : groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_groups

[@@@deriving.end]

type google_cloud_identity_groups = {
  id : string prop option; [@option]
  parent : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_identity_groups) -> ()

let yojson_of_google_cloud_identity_groups =
  (function
   | { id = v_id; parent = v_parent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
    : google_cloud_identity_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_identity_groups

[@@@deriving.end]

let google_cloud_identity_groups ?id ~parent () :
    google_cloud_identity_groups =
  { id; parent }

type t = {
  tf_name : string;
  groups : groups list prop;
  id : string prop;
  parent : string prop;
}

let make ?id ~parent __id =
  let __type = "google_cloud_identity_groups" in
  let __attrs =
    ({
       tf_name = __id;
       groups = Prop.computed __type __id "groups";
       id = Prop.computed __type __id "id";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_identity_groups
        (google_cloud_identity_groups ?id ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~parent __id =
  let (r : _ Tf_core.resource) = make ?id ~parent __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
