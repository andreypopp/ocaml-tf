(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type async_primary_disk = { disk : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : async_primary_disk) -> ()

let yojson_of_async_primary_disk =
  (function
   | { disk = v_disk } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk in
         ("disk", arg) :: bnds
       in
       `Assoc bnds
    : async_primary_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_async_primary_disk

[@@@deriving.end]

type disk_encryption_key = {
  kms_key_self_link : string prop option; [@option]
  kms_key_service_account : string prop option; [@option]
  raw_key : string prop option; [@option]
  rsa_encrypted_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk_encryption_key) -> ()

let yojson_of_disk_encryption_key =
  (function
   | {
       kms_key_self_link = v_kms_key_self_link;
       kms_key_service_account = v_kms_key_service_account;
       raw_key = v_raw_key;
       rsa_encrypted_key = v_rsa_encrypted_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rsa_encrypted_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rsa_encrypted_key", arg in
             bnd :: bnds
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
    : disk_encryption_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk_encryption_key

[@@@deriving.end]

type guest_os_features = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : guest_os_features) -> ()

let yojson_of_guest_os_features =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : guest_os_features -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_guest_os_features

[@@@deriving.end]

type source_image_encryption_key = {
  kms_key_self_link : string prop option; [@option]
  kms_key_service_account : string prop option; [@option]
  raw_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_image_encryption_key) -> ()

let yojson_of_source_image_encryption_key =
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
    : source_image_encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_image_encryption_key

[@@@deriving.end]

type source_snapshot_encryption_key = {
  kms_key_self_link : string prop option; [@option]
  kms_key_service_account : string prop option; [@option]
  raw_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_snapshot_encryption_key) -> ()

let yojson_of_source_snapshot_encryption_key =
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
    : source_snapshot_encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_snapshot_encryption_key

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

type google_compute_disk = {
  description : string prop option; [@option]
  enable_confidential_compute : bool prop option; [@option]
  id : string prop option; [@option]
  image : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  licenses : string prop list option; [@option]
  name : string prop;
  physical_block_size_bytes : float prop option; [@option]
  project : string prop option; [@option]
  provisioned_iops : float prop option; [@option]
  provisioned_throughput : float prop option; [@option]
  size : float prop option; [@option]
  snapshot : string prop option; [@option]
  source_disk : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  zone : string prop option; [@option]
  async_primary_disk : async_primary_disk list;
      [@default []] [@yojson_drop_default ( = )]
  disk_encryption_key : disk_encryption_key list;
      [@default []] [@yojson_drop_default ( = )]
  guest_os_features : guest_os_features list;
      [@default []] [@yojson_drop_default ( = )]
  source_image_encryption_key : source_image_encryption_key list;
      [@default []] [@yojson_drop_default ( = )]
  source_snapshot_encryption_key :
    source_snapshot_encryption_key list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_disk) -> ()

let yojson_of_google_compute_disk =
  (function
   | {
       description = v_description;
       enable_confidential_compute = v_enable_confidential_compute;
       id = v_id;
       image = v_image;
       labels = v_labels;
       licenses = v_licenses;
       name = v_name;
       physical_block_size_bytes = v_physical_block_size_bytes;
       project = v_project;
       provisioned_iops = v_provisioned_iops;
       provisioned_throughput = v_provisioned_throughput;
       size = v_size;
       snapshot = v_snapshot;
       source_disk = v_source_disk;
       type_ = v_type_;
       zone = v_zone;
       async_primary_disk = v_async_primary_disk;
       disk_encryption_key = v_disk_encryption_key;
       guest_os_features = v_guest_os_features;
       source_image_encryption_key = v_source_image_encryption_key;
       source_snapshot_encryption_key =
         v_source_snapshot_encryption_key;
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
         if [] = v_source_snapshot_encryption_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_snapshot_encryption_key)
               v_source_snapshot_encryption_key
           in
           let bnd = "source_snapshot_encryption_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_source_image_encryption_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_image_encryption_key)
               v_source_image_encryption_key
           in
           let bnd = "source_image_encryption_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_guest_os_features then bnds
         else
           let arg =
             (yojson_of_list yojson_of_guest_os_features)
               v_guest_os_features
           in
           let bnd = "guest_os_features", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_disk_encryption_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_disk_encryption_key)
               v_disk_encryption_key
           in
           let bnd = "disk_encryption_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_async_primary_disk then bnds
         else
           let arg =
             (yojson_of_list yojson_of_async_primary_disk)
               v_async_primary_disk
           in
           let bnd = "async_primary_disk", arg in
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
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_disk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_disk", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provisioned_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "provisioned_throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provisioned_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "provisioned_iops", arg in
             bnd :: bnds
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
         match v_physical_block_size_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "physical_block_size_bytes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_licenses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "licenses", arg in
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
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
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
         match v_enable_confidential_compute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_confidential_compute", arg in
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
    : google_compute_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_disk

[@@@deriving.end]

let async_primary_disk ~disk () : async_primary_disk = { disk }

let disk_encryption_key ?kms_key_self_link ?kms_key_service_account
    ?raw_key ?rsa_encrypted_key () : disk_encryption_key =
  {
    kms_key_self_link;
    kms_key_service_account;
    raw_key;
    rsa_encrypted_key;
  }

let guest_os_features ~type_ () : guest_os_features = { type_ }

let source_image_encryption_key ?kms_key_self_link
    ?kms_key_service_account ?raw_key () :
    source_image_encryption_key =
  { kms_key_self_link; kms_key_service_account; raw_key }

let source_snapshot_encryption_key ?kms_key_self_link
    ?kms_key_service_account ?raw_key () :
    source_snapshot_encryption_key =
  { kms_key_self_link; kms_key_service_account; raw_key }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_disk ?description ?enable_confidential_compute ?id
    ?image ?labels ?licenses ?physical_block_size_bytes ?project
    ?provisioned_iops ?provisioned_throughput ?size ?snapshot
    ?source_disk ?type_ ?zone ?(async_primary_disk = [])
    ?(disk_encryption_key = []) ?(source_image_encryption_key = [])
    ?(source_snapshot_encryption_key = []) ?timeouts ~name
    ~guest_os_features () : google_compute_disk =
  {
    description;
    enable_confidential_compute;
    id;
    image;
    labels;
    licenses;
    name;
    physical_block_size_bytes;
    project;
    provisioned_iops;
    provisioned_throughput;
    size;
    snapshot;
    source_disk;
    type_;
    zone;
    async_primary_disk;
    disk_encryption_key;
    guest_os_features;
    source_image_encryption_key;
    source_snapshot_encryption_key;
    timeouts;
  }

type t = {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  disk_id : string prop;
  effective_labels : (string * string) list prop;
  enable_confidential_compute : bool prop;
  id : string prop;
  image : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  last_attach_timestamp : string prop;
  last_detach_timestamp : string prop;
  licenses : string list prop;
  name : string prop;
  physical_block_size_bytes : float prop;
  project : string prop;
  provisioned_iops : float prop;
  provisioned_throughput : float prop;
  self_link : string prop;
  size : float prop;
  snapshot : string prop;
  source_disk : string prop;
  source_disk_id : string prop;
  source_image_id : string prop;
  source_snapshot_id : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  users : string list prop;
  zone : string prop;
}

let make ?description ?enable_confidential_compute ?id ?image ?labels
    ?licenses ?physical_block_size_bytes ?project ?provisioned_iops
    ?provisioned_throughput ?size ?snapshot ?source_disk ?type_ ?zone
    ?(async_primary_disk = []) ?(disk_encryption_key = [])
    ?(source_image_encryption_key = [])
    ?(source_snapshot_encryption_key = []) ?timeouts ~name
    ~guest_os_features __id =
  let __type = "google_compute_disk" in
  let __attrs =
    ({
       tf_name = __id;
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       disk_id = Prop.computed __type __id "disk_id";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_confidential_compute =
         Prop.computed __type __id "enable_confidential_compute";
       id = Prop.computed __type __id "id";
       image = Prop.computed __type __id "image";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       last_attach_timestamp =
         Prop.computed __type __id "last_attach_timestamp";
       last_detach_timestamp =
         Prop.computed __type __id "last_detach_timestamp";
       licenses = Prop.computed __type __id "licenses";
       name = Prop.computed __type __id "name";
       physical_block_size_bytes =
         Prop.computed __type __id "physical_block_size_bytes";
       project = Prop.computed __type __id "project";
       provisioned_iops =
         Prop.computed __type __id "provisioned_iops";
       provisioned_throughput =
         Prop.computed __type __id "provisioned_throughput";
       self_link = Prop.computed __type __id "self_link";
       size = Prop.computed __type __id "size";
       snapshot = Prop.computed __type __id "snapshot";
       source_disk = Prop.computed __type __id "source_disk";
       source_disk_id = Prop.computed __type __id "source_disk_id";
       source_image_id = Prop.computed __type __id "source_image_id";
       source_snapshot_id =
         Prop.computed __type __id "source_snapshot_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
       users = Prop.computed __type __id "users";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_disk
        (google_compute_disk ?description
           ?enable_confidential_compute ?id ?image ?labels ?licenses
           ?physical_block_size_bytes ?project ?provisioned_iops
           ?provisioned_throughput ?size ?snapshot ?source_disk
           ?type_ ?zone ~async_primary_disk ~disk_encryption_key
           ~source_image_encryption_key
           ~source_snapshot_encryption_key ?timeouts ~name
           ~guest_os_features ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enable_confidential_compute ?id
    ?image ?labels ?licenses ?physical_block_size_bytes ?project
    ?provisioned_iops ?provisioned_throughput ?size ?snapshot
    ?source_disk ?type_ ?zone ?(async_primary_disk = [])
    ?(disk_encryption_key = []) ?(source_image_encryption_key = [])
    ?(source_snapshot_encryption_key = []) ?timeouts ~name
    ~guest_os_features __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enable_confidential_compute ?id ?image ?labels
      ?licenses ?physical_block_size_bytes ?project ?provisioned_iops
      ?provisioned_throughput ?size ?snapshot ?source_disk ?type_
      ?zone ~async_primary_disk ~disk_encryption_key
      ~source_image_encryption_key ~source_snapshot_encryption_key
      ?timeouts ~name ~guest_os_features __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
