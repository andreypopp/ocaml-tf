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
  kms_key_name : string prop;
  raw_key : string prop;
  sha256 : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk_encryption_key) -> ()

let yojson_of_disk_encryption_key =
  (function
   | {
       kms_key_name = v_kms_key_name;
       raw_key = v_raw_key;
       sha256 = v_sha256;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sha256 in
         ("sha256", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_raw_key in
         ("raw_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
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

type source_snapshot_encryption_key = {
  raw_key : string prop;
  sha256 : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_snapshot_encryption_key) -> ()

let yojson_of_source_snapshot_encryption_key =
  (function
   | { raw_key = v_raw_key; sha256 = v_sha256 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sha256 in
         ("sha256", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_raw_key in
         ("raw_key", arg) :: bnds
       in
       `Assoc bnds
    : source_snapshot_encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_snapshot_encryption_key

[@@@deriving.end]

type google_compute_region_disk = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_disk) -> ()

let yojson_of_google_compute_region_disk =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : google_compute_region_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_disk

[@@@deriving.end]

let google_compute_region_disk ?id ?project ?region ~name () :
    google_compute_region_disk =
  { id; name; project; region }

type t = {
  async_primary_disk : async_primary_disk list prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_encryption_key : disk_encryption_key list prop;
  effective_labels : (string * string) list prop;
  guest_os_features : guest_os_features list prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  last_attach_timestamp : string prop;
  last_detach_timestamp : string prop;
  licenses : string list prop;
  name : string prop;
  physical_block_size_bytes : float prop;
  project : string prop;
  region : string prop;
  replica_zones : string list prop;
  self_link : string prop;
  size : float prop;
  snapshot : string prop;
  source_disk : string prop;
  source_disk_id : string prop;
  source_snapshot_encryption_key :
    source_snapshot_encryption_key list prop;
  source_snapshot_id : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  users : string list prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_compute_region_disk" in
  let __attrs =
    ({
       async_primary_disk =
         Prop.computed __type __id "async_primary_disk";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       disk_encryption_key =
         Prop.computed __type __id "disk_encryption_key";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       guest_os_features =
         Prop.computed __type __id "guest_os_features";
       id = Prop.computed __type __id "id";
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
       region = Prop.computed __type __id "region";
       replica_zones = Prop.computed __type __id "replica_zones";
       self_link = Prop.computed __type __id "self_link";
       size = Prop.computed __type __id "size";
       snapshot = Prop.computed __type __id "snapshot";
       source_disk = Prop.computed __type __id "source_disk";
       source_disk_id = Prop.computed __type __id "source_disk_id";
       source_snapshot_encryption_key =
         Prop.computed __type __id "source_snapshot_encryption_key";
       source_snapshot_id =
         Prop.computed __type __id "source_snapshot_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_disk
        (google_compute_region_disk ?id ?project ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
