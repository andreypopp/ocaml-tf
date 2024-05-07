(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type snapshot_encryption_key = {
  kms_key_self_link : string prop;
  kms_key_service_account : string prop;
  raw_key : string prop;
  sha256 : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_encryption_key) -> ()

let yojson_of_snapshot_encryption_key =
  (function
   | {
       kms_key_self_link = v_kms_key_self_link;
       kms_key_service_account = v_kms_key_service_account;
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
         let arg =
           yojson_of_prop yojson_of_string v_kms_key_service_account
         in
         ("kms_key_service_account", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kms_key_self_link
         in
         ("kms_key_self_link", arg) :: bnds
       in
       `Assoc bnds
    : snapshot_encryption_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_encryption_key

[@@@deriving.end]

type source_disk_encryption_key = {
  kms_key_service_account : string prop;
  raw_key : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_raw_key in
         ("raw_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kms_key_service_account
         in
         ("kms_key_service_account", arg) :: bnds
       in
       `Assoc bnds
    : source_disk_encryption_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_disk_encryption_key

[@@@deriving.end]

type google_compute_snapshot = {
  filter : string prop option; [@option]
  id : string prop option; [@option]
  most_recent : bool prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_snapshot) -> ()

let yojson_of_google_compute_snapshot =
  (function
   | {
       filter = v_filter;
       id = v_id;
       most_recent = v_most_recent;
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
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
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_snapshot

[@@@deriving.end]

let google_compute_snapshot ?filter ?id ?most_recent ?name ?project
    () : google_compute_snapshot =
  { filter; id; most_recent; name; project }

type t = {
  tf_name : string;
  chain_name : string prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_size_gb : float prop;
  effective_labels : (string * string) list prop;
  filter : string prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  licenses : string list prop;
  most_recent : bool prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  snapshot_encryption_key : snapshot_encryption_key list prop;
  snapshot_id : float prop;
  source_disk : string prop;
  source_disk_encryption_key : source_disk_encryption_key list prop;
  storage_bytes : float prop;
  storage_locations : string list prop;
  terraform_labels : (string * string) list prop;
  zone : string prop;
}

let make ?filter ?id ?most_recent ?name ?project __id =
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
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       licenses = Prop.computed __type __id "licenses";
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       snapshot_encryption_key =
         Prop.computed __type __id "snapshot_encryption_key";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       source_disk = Prop.computed __type __id "source_disk";
       source_disk_encryption_key =
         Prop.computed __type __id "source_disk_encryption_key";
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
        (google_compute_snapshot ?filter ?id ?most_recent ?name
           ?project ());
    attrs = __attrs;
  }

let register ?tf_module ?filter ?id ?most_recent ?name ?project __id
    =
  let (r : _ Tf_core.resource) =
    make ?filter ?id ?most_recent ?name ?project __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
