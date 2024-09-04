(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type group_key = {
  id : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : group_key) -> ()

let yojson_of_group_key =
  (function
   | { id = v_id; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : group_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_group_key

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type additional_group_keys = {
  id : string prop;
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_group_keys) -> ()

let yojson_of_additional_group_keys =
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
    : additional_group_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_group_keys

[@@@deriving.end]

type google_cloud_identity_group = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  initial_group_config : string prop option; [@option]
  labels : string prop Tf_core.assoc;
  parent : string prop;
  group_key : group_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_identity_group) -> ()

let yojson_of_google_cloud_identity_group =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       initial_group_config = v_initial_group_config;
       labels = v_labels;
       parent = v_parent;
       group_key = v_group_key;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_group_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_group_key) v_group_key
           in
           let bnd = "group_key", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         match v_initial_group_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "initial_group_config", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
       `Assoc bnds
    : google_cloud_identity_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_identity_group

[@@@deriving.end]

let group_key ?namespace ~id () : group_key = { id; namespace }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_identity_group ?description ?display_name ?id
    ?initial_group_config ?timeouts ~labels ~parent ~group_key () :
    google_cloud_identity_group =
  {
    description;
    display_name;
    id;
    initial_group_config;
    labels;
    parent;
    group_key;
    timeouts;
  }

type t = {
  tf_name : string;
  additional_group_keys : additional_group_keys list prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  initial_group_config : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?initial_group_config
    ?timeouts ~labels ~parent ~group_key __id =
  let __type = "google_cloud_identity_group" in
  let __attrs =
    ({
       tf_name = __id;
       additional_group_keys =
         Prop.computed __type __id "additional_group_keys";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       initial_group_config =
         Prop.computed __type __id "initial_group_config";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_identity_group
        (google_cloud_identity_group ?description ?display_name ?id
           ?initial_group_config ?timeouts ~labels ~parent ~group_key
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id
    ?initial_group_config ?timeouts ~labels ~parent ~group_key __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?initial_group_config
      ?timeouts ~labels ~parent ~group_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
