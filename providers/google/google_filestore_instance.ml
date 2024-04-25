(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type file_shares__nfs_export_options = {
  access_mode : string prop option; [@option]
  anon_gid : float prop option; [@option]
  anon_uid : float prop option; [@option]
  ip_ranges : string prop list option; [@option]
  squash_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : file_shares__nfs_export_options) -> ()

let yojson_of_file_shares__nfs_export_options =
  (function
   | {
       access_mode = v_access_mode;
       anon_gid = v_anon_gid;
       anon_uid = v_anon_uid;
       ip_ranges = v_ip_ranges;
       squash_mode = v_squash_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_squash_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "squash_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         match v_anon_uid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "anon_uid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_anon_gid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "anon_gid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : file_shares__nfs_export_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_file_shares__nfs_export_options

[@@@deriving.end]

type file_shares = {
  capacity_gb : float prop;
  name : string prop;
  source_backup : string prop option; [@option]
  nfs_export_options : file_shares__nfs_export_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : file_shares) -> ()

let yojson_of_file_shares =
  (function
   | {
       capacity_gb = v_capacity_gb;
       name = v_name;
       source_backup = v_source_backup;
       nfs_export_options = v_nfs_export_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_file_shares__nfs_export_options
             v_nfs_export_options
         in
         ("nfs_export_options", arg) :: bnds
       in
       let bnds =
         match v_source_backup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_backup", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity_gb in
         ("capacity_gb", arg) :: bnds
       in
       `Assoc bnds
    : file_shares -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_file_shares

[@@@deriving.end]

type networks = {
  connect_mode : string prop option; [@option]
  modes : string prop list;
  network : string prop;
  reserved_ip_range : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : networks) -> ()

let yojson_of_networks =
  (function
   | {
       connect_mode = v_connect_mode;
       modes = v_modes;
       network = v_network;
       reserved_ip_range = v_reserved_ip_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_reserved_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reserved_ip_range", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_modes
         in
         ("modes", arg) :: bnds
       in
       let bnds =
         match v_connect_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connect_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : networks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_networks

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

type google_filestore_instance = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  tier : string prop;
  zone : string prop option; [@option]
  file_shares : file_shares list;
  networks : networks list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_filestore_instance) -> ()

let yojson_of_google_filestore_instance =
  (function
   | {
       description = v_description;
       id = v_id;
       kms_key_name = v_kms_key_name;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       tier = v_tier;
       zone = v_zone;
       file_shares = v_file_shares;
       networks = v_networks;
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
         let arg = yojson_of_list yojson_of_networks v_networks in
         ("networks", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_file_shares v_file_shares
         in
         ("file_shares", arg) :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_filestore_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_filestore_instance

[@@@deriving.end]

let file_shares__nfs_export_options ?access_mode ?anon_gid ?anon_uid
    ?ip_ranges ?squash_mode () : file_shares__nfs_export_options =
  { access_mode; anon_gid; anon_uid; ip_ranges; squash_mode }

let file_shares ?source_backup ?(nfs_export_options = [])
    ~capacity_gb ~name () : file_shares =
  { capacity_gb; name; source_backup; nfs_export_options }

let networks ?connect_mode ?reserved_ip_range ~modes ~network () :
    networks =
  { connect_mode; modes; network; reserved_ip_range }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_filestore_instance ?description ?id ?kms_key_name ?labels
    ?location ?project ?zone ?timeouts ~name ~tier ~file_shares
    ~networks () : google_filestore_instance =
  {
    description;
    id;
    kms_key_name;
    labels;
    location;
    name;
    project;
    tier;
    zone;
    file_shares;
    networks;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  zone : string prop;
}

let make ?description ?id ?kms_key_name ?labels ?location ?project
    ?zone ?timeouts ~name ~tier ~file_shares ~networks __id =
  let __type = "google_filestore_instance" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       tier = Prop.computed __type __id "tier";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_filestore_instance
        (google_filestore_instance ?description ?id ?kms_key_name
           ?labels ?location ?project ?zone ?timeouts ~name ~tier
           ~file_shares ~networks ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kms_key_name ?labels
    ?location ?project ?zone ?timeouts ~name ~tier ~file_shares
    ~networks __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kms_key_name ?labels ?location ?project
      ?zone ?timeouts ~name ~tier ~file_shares ~networks __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
