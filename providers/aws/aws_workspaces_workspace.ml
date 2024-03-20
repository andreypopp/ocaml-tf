(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type workspace_properties = {
  compute_type_name : string prop option; [@option]
      (** compute_type_name *)
  root_volume_size_gib : float prop option; [@option]
      (** root_volume_size_gib *)
  running_mode : string prop option; [@option]  (** running_mode *)
  running_mode_auto_stop_timeout_in_minutes : float prop option;
      [@option]
      (** running_mode_auto_stop_timeout_in_minutes *)
  user_volume_size_gib : float prop option; [@option]
      (** user_volume_size_gib *)
}
[@@deriving yojson_of]
(** workspace_properties *)

type aws_workspaces_workspace = {
  bundle_id : string prop;  (** bundle_id *)
  directory_id : string prop;  (** directory_id *)
  id : string prop option; [@option]  (** id *)
  root_volume_encryption_enabled : bool prop option; [@option]
      (** root_volume_encryption_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_name : string prop;  (** user_name *)
  user_volume_encryption_enabled : bool prop option; [@option]
      (** user_volume_encryption_enabled *)
  volume_encryption_key : string prop option; [@option]
      (** volume_encryption_key *)
  timeouts : timeouts option;
  workspace_properties : workspace_properties list;
}
[@@deriving yojson_of]
(** aws_workspaces_workspace *)

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
