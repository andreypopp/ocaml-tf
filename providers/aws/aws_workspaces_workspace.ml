(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type workspace_properties = {
  compute_type_name : string prop option; [@option]
  root_volume_size_gib : float prop option; [@option]
  running_mode : string prop option; [@option]
  running_mode_auto_stop_timeout_in_minutes : float prop option;
      [@option]
  user_volume_size_gib : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workspace_properties) -> ()

let yojson_of_workspace_properties =
  (function
   | {
       compute_type_name = v_compute_type_name;
       root_volume_size_gib = v_root_volume_size_gib;
       running_mode = v_running_mode;
       running_mode_auto_stop_timeout_in_minutes =
         v_running_mode_auto_stop_timeout_in_minutes;
       user_volume_size_gib = v_user_volume_size_gib;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_volume_size_gib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "user_volume_size_gib", arg in
             bnd :: bnds
       in
       let bnds =
         match v_running_mode_auto_stop_timeout_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "running_mode_auto_stop_timeout_in_minutes", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_running_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "running_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_root_volume_size_gib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "root_volume_size_gib", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compute_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compute_type_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workspace_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workspace_properties

[@@@deriving.end]

type aws_workspaces_workspace = {
  bundle_id : string prop;
  directory_id : string prop;
  id : string prop option; [@option]
  root_volume_encryption_enabled : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  user_name : string prop;
  user_volume_encryption_enabled : bool prop option; [@option]
  volume_encryption_key : string prop option; [@option]
  timeouts : timeouts option;
  workspace_properties : workspace_properties list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_workspaces_workspace) -> ()

let yojson_of_aws_workspaces_workspace =
  (function
   | {
       bundle_id = v_bundle_id;
       directory_id = v_directory_id;
       id = v_id;
       root_volume_encryption_enabled =
         v_root_volume_encryption_enabled;
       tags = v_tags;
       tags_all = v_tags_all;
       user_name = v_user_name;
       user_volume_encryption_enabled =
         v_user_volume_encryption_enabled;
       volume_encryption_key = v_volume_encryption_key;
       timeouts = v_timeouts;
       workspace_properties = v_workspace_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_workspace_properties
             v_workspace_properties
         in
         ("workspace_properties", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_volume_encryption_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_encryption_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_volume_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "user_volume_encryption_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_root_volume_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "root_volume_encryption_enabled", arg in
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
         let arg = yojson_of_prop yojson_of_string v_directory_id in
         ("directory_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bundle_id in
         ("bundle_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_workspaces_workspace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_workspaces_workspace

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let workspace_properties ?compute_type_name ?root_volume_size_gib
    ?running_mode ?running_mode_auto_stop_timeout_in_minutes
    ?user_volume_size_gib () : workspace_properties =
  {
    compute_type_name;
    root_volume_size_gib;
    running_mode;
    running_mode_auto_stop_timeout_in_minutes;
    user_volume_size_gib;
  }

let aws_workspaces_workspace ?id ?root_volume_encryption_enabled
    ?tags ?tags_all ?user_volume_encryption_enabled
    ?volume_encryption_key ?timeouts ~bundle_id ~directory_id
    ~user_name ~workspace_properties () : aws_workspaces_workspace =
  {
    bundle_id;
    directory_id;
    id;
    root_volume_encryption_enabled;
    tags;
    tags_all;
    user_name;
    user_volume_encryption_enabled;
    volume_encryption_key;
    timeouts;
    workspace_properties;
  }

type t = {
  bundle_id : string prop;
  computer_name : string prop;
  directory_id : string prop;
  id : string prop;
  ip_address : string prop;
  root_volume_encryption_enabled : bool prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
  user_volume_encryption_enabled : bool prop;
  volume_encryption_key : string prop;
}

let make ?id ?root_volume_encryption_enabled ?tags ?tags_all
    ?user_volume_encryption_enabled ?volume_encryption_key ?timeouts
    ~bundle_id ~directory_id ~user_name ~workspace_properties __id =
  let __type = "aws_workspaces_workspace" in
  let __attrs =
    ({
       bundle_id = Prop.computed __type __id "bundle_id";
       computer_name = Prop.computed __type __id "computer_name";
       directory_id = Prop.computed __type __id "directory_id";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       root_volume_encryption_enabled =
         Prop.computed __type __id "root_volume_encryption_enabled";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_name = Prop.computed __type __id "user_name";
       user_volume_encryption_enabled =
         Prop.computed __type __id "user_volume_encryption_enabled";
       volume_encryption_key =
         Prop.computed __type __id "volume_encryption_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_workspaces_workspace
        (aws_workspaces_workspace ?id ?root_volume_encryption_enabled
           ?tags ?tags_all ?user_volume_encryption_enabled
           ?volume_encryption_key ?timeouts ~bundle_id ~directory_id
           ~user_name ~workspace_properties ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?root_volume_encryption_enabled ?tags
    ?tags_all ?user_volume_encryption_enabled ?volume_encryption_key
    ?timeouts ~bundle_id ~directory_id ~user_name
    ~workspace_properties __id =
  let (r : _ Tf_core.resource) =
    make ?id ?root_volume_encryption_enabled ?tags ?tags_all
      ?user_volume_encryption_enabled ?volume_encryption_key
      ?timeouts ~bundle_id ~directory_id ~user_name
      ~workspace_properties __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
