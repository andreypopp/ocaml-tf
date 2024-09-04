(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type snapshot_encryption_key = {
  kms_key_self_link : string prop option; [@option]
  kms_key_service_account : string prop option; [@option]
  raw_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_encryption_key) -> ()

let yojson_of_snapshot_encryption_key =
  (function
   | {
       kms_key_self_link = v_kms_key_self_link;
       kms_key_service_account = v_kms_key_service_account;
       raw_key = v_raw_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_raw_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "raw_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_self_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_self_link", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : snapshot_encryption_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_encryption_key

[@@@deriving.end]

type source_disk_encryption_key = {
  kms_key_service_account : string prop option; [@option]
  raw_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_disk_encryption_key) -> ()

let yojson_of_source_disk_encryption_key =
  (function
   | {
       kms_key_service_account = v_kms_key_service_account;
       raw_key = v_raw_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_raw_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "raw_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_service_account", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_disk_encryption_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_disk_encryption_key

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

type google_compute_snapshot = {
  chain_name : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop;
  project : string prop option; [@option]
  source_disk : string prop;
  storage_locations : string prop list option; [@option]
  zone : string prop option; [@option]
  snapshot_encryption_key : snapshot_encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_disk_encryption_key : source_disk_encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_snapshot) -> ()

let yojson_of_google_compute_snapshot =
  (function
   | {
       chain_name = v_chain_name;
       description = v_description;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       source_disk = v_source_disk;
       storage_locations = v_storage_locations;
       zone = v_zone;
       snapshot_encryption_key = v_snapshot_encryption_key;
       source_disk_encryption_key = v_source_disk_encryption_key;
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
         if Stdlib.( = ) [] v_source_disk_encryption_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_disk_encryption_key)
               v_source_disk_encryption_key
           in
           let bnd = "source_disk_encryption_key", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_snapshot_encryption_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_snapshot_encryption_key)
               v_snapshot_encryption_key
           in
           let bnd = "snapshot_encryption_key", arg in
           bnd :: bnds
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
         match v_storage_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "storage_locations", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_disk in
         ("source_disk", arg) :: bnds
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
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
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
       let bnds =
         match v_chain_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "chain_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_snapshot

[@@@deriving.end]

let snapshot_encryption_key ?kms_key_self_link
    ?kms_key_service_account ?raw_key () : snapshot_encryption_key =
  { kms_key_self_link; kms_key_service_account; raw_key }

let source_disk_encryption_key ?kms_key_service_account ?raw_key () :
    source_disk_encryption_key =
  { kms_key_service_account; raw_key }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_snapshot ?chain_name ?description ?id ?labels
    ?project ?storage_locations ?zone ?(snapshot_encryption_key = [])
    ?(source_disk_encryption_key = []) ?timeouts ~name ~source_disk
    () : google_compute_snapshot =
  {
    chain_name;
    description;
    id;
    labels;
    name;
    project;
    source_disk;
    storage_locations;
    zone;
    snapshot_encryption_key;
    source_disk_encryption_key;
    timeouts;
  }

type t = {
  tf_name : string;
  chain_name : string prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_size_gb : float prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : string Tf_core.assoc prop;
  licenses : string list prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  snapshot_id : float prop;
  source_disk : string prop;
  storage_bytes : float prop;
  storage_locations : string list prop;
  terraform_labels : string Tf_core.assoc prop;
  zone : string prop;
}

let make ?chain_name ?description ?id ?labels ?project
    ?storage_locations ?zone ?(snapshot_encryption_key = [])
    ?(source_disk_encryption_key = []) ?timeouts ~name ~source_disk
    __id =
  let __type = "google_compute_snapshot" in
  let __attrs =
    ({
       tf_name = __id;
       chain_name = Prop.computed __type __id "chain_name";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       disk_size_gb = Prop.computed __type __id "disk_size_gb";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       licenses = Prop.computed __type __id "licenses";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       source_disk = Prop.computed __type __id "source_disk";
       storage_bytes = Prop.computed __type __id "storage_bytes";
       storage_locations =
         Prop.computed __type __id "storage_locations";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_snapshot
        (google_compute_snapshot ?chain_name ?description ?id ?labels
           ?project ?storage_locations ?zone ~snapshot_encryption_key
           ~source_disk_encryption_key ?timeouts ~name ~source_disk
           ());
    attrs = __attrs;
  }

let register ?tf_module ?chain_name ?description ?id ?labels ?project
    ?storage_locations ?zone ?(snapshot_encryption_key = [])
    ?(source_disk_encryption_key = []) ?timeouts ~name ~source_disk
    __id =
  let (r : _ Tf_core.resource) =
    make ?chain_name ?description ?id ?labels ?project
      ?storage_locations ?zone ~snapshot_encryption_key
      ~source_disk_encryption_key ?timeouts ~name ~source_disk __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
