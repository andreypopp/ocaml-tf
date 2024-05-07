(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type workspace_properties = {
  compute_type_name : string prop;
  root_volume_size_gib : float prop;
  running_mode : string prop;
  running_mode_auto_stop_timeout_in_minutes : float prop;
  user_volume_size_gib : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_user_volume_size_gib
         in
         ("user_volume_size_gib", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_running_mode_auto_stop_timeout_in_minutes
         in
         ("running_mode_auto_stop_timeout_in_minutes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_running_mode in
         ("running_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_root_volume_size_gib
         in
         ("root_volume_size_gib", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_compute_type_name
         in
         ("compute_type_name", arg) :: bnds
       in
       `Assoc bnds
    : workspace_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workspace_properties

[@@@deriving.end]

type aws_workspaces_workspace = {
  directory_id : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  user_name : string prop option; [@option]
  workspace_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_workspaces_workspace) -> ()

let yojson_of_aws_workspaces_workspace =
  (function
   | {
       directory_id = v_directory_id;
       id = v_id;
       tags = v_tags;
       user_name = v_user_name;
       workspace_id = v_workspace_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_workspace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workspace_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directory_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directory_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_workspaces_workspace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_workspaces_workspace

[@@@deriving.end]

let aws_workspaces_workspace ?directory_id ?id ?tags ?user_name
    ?workspace_id () : aws_workspaces_workspace =
  { directory_id; id; tags; user_name; workspace_id }

type t = {
  tf_name : string;
  bundle_id : string prop;
  computer_name : string prop;
  directory_id : string prop;
  id : string prop;
  ip_address : string prop;
  root_volume_encryption_enabled : bool prop;
  state : string prop;
  tags : (string * string) list prop;
  user_name : string prop;
  user_volume_encryption_enabled : bool prop;
  volume_encryption_key : string prop;
  workspace_id : string prop;
  workspace_properties : workspace_properties list prop;
}

let make ?directory_id ?id ?tags ?user_name ?workspace_id __id =
  let __type = "aws_workspaces_workspace" in
  let __attrs =
    ({
       tf_name = __id;
       bundle_id = Prop.computed __type __id "bundle_id";
       computer_name = Prop.computed __type __id "computer_name";
       directory_id = Prop.computed __type __id "directory_id";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       root_volume_encryption_enabled =
         Prop.computed __type __id "root_volume_encryption_enabled";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       user_name = Prop.computed __type __id "user_name";
       user_volume_encryption_enabled =
         Prop.computed __type __id "user_volume_encryption_enabled";
       volume_encryption_key =
         Prop.computed __type __id "volume_encryption_key";
       workspace_id = Prop.computed __type __id "workspace_id";
       workspace_properties =
         Prop.computed __type __id "workspace_properties";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_workspaces_workspace
        (aws_workspaces_workspace ?directory_id ?id ?tags ?user_name
           ?workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?directory_id ?id ?tags ?user_name
    ?workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?directory_id ?id ?tags ?user_name ?workspace_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
