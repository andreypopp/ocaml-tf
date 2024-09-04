(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type file_shares__nfs_export_options = {
  access_mode : string prop;
  anon_gid : float prop;
  anon_uid : float prop;
  ip_ranges : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  squash_mode : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_squash_mode in
         ("squash_mode", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_ranges then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ip_ranges
           in
           let bnd = "ip_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_anon_uid in
         ("anon_uid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_anon_gid in
         ("anon_gid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_mode in
         ("access_mode", arg) :: bnds
       in
       `Assoc bnds
    : file_shares__nfs_export_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_file_shares__nfs_export_options

[@@@deriving.end]

type file_shares = {
  capacity_gb : float prop;
  name : string prop;
  nfs_export_options : file_shares__nfs_export_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_backup : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : file_shares) -> ()

let yojson_of_file_shares =
  (function
   | {
       capacity_gb = v_capacity_gb;
       name = v_name;
       nfs_export_options = v_nfs_export_options;
       source_backup = v_source_backup;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_backup in
         ("source_backup", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_nfs_export_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_file_shares__nfs_export_options)
               v_nfs_export_options
           in
           let bnd = "nfs_export_options", arg in
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
  connect_mode : string prop;
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  modes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network : string prop;
  reserved_ip_range : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : networks) -> ()

let yojson_of_networks =
  (function
   | {
       connect_mode = v_connect_mode;
       ip_addresses = v_ip_addresses;
       modes = v_modes;
       network = v_network;
       reserved_ip_range = v_reserved_ip_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_reserved_ip_range
         in
         ("reserved_ip_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_modes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_modes
           in
           let bnd = "modes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ip_addresses
           in
           let bnd = "ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connect_mode in
         ("connect_mode", arg) :: bnds
       in
       `Assoc bnds
    : networks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_networks

[@@@deriving.end]

type google_filestore_instance = {
  id : string prop option; [@option]
  location : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_filestore_instance) -> ()

let yojson_of_google_filestore_instance =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_filestore_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_filestore_instance

[@@@deriving.end]

let google_filestore_instance ?id ?location ?project ~name () :
    google_filestore_instance =
  { id; location; name; project }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  file_shares : file_shares list prop;
  id : string prop;
  kms_key_name : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  networks : networks list prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
  tier : string prop;
  zone : string prop;
}

let make ?id ?location ?project ~name __id =
  let __type = "google_filestore_instance" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       file_shares = Prop.computed __type __id "file_shares";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       networks = Prop.computed __type __id "networks";
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
        (google_filestore_instance ?id ?location ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
