(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type image_encryption_key = {
  kms_key_self_link : string prop option; [@option]
  kms_key_service_account : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : image_encryption_key) -> ()

let yojson_of_image_encryption_key =
  (function
   | {
       kms_key_self_link = v_kms_key_self_link;
       kms_key_service_account = v_kms_key_service_account;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : image_encryption_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_encryption_key

[@@@deriving.end]

type raw_disk = {
  container_type : string prop option; [@option]
  sha1 : string prop option; [@option]
  source : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : raw_disk) -> ()

let yojson_of_raw_disk =
  (function
   | {
       container_type = v_container_type;
       sha1 = v_sha1;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         match v_sha1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sha1", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : raw_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_raw_disk

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

type google_compute_image = {
  description : string prop option; [@option]
  disk_size_gb : float prop option; [@option]
  family : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  licenses : string prop list option; [@option]
  name : string prop;
  project : string prop option; [@option]
  source_disk : string prop option; [@option]
  source_image : string prop option; [@option]
  source_snapshot : string prop option; [@option]
  storage_locations : string prop list option; [@option]
  guest_os_features : guest_os_features list;
      [@default []] [@yojson_drop_default ( = )]
  image_encryption_key : image_encryption_key list;
      [@default []] [@yojson_drop_default ( = )]
  raw_disk : raw_disk list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_image) -> ()

let yojson_of_google_compute_image =
  (function
   | {
       description = v_description;
       disk_size_gb = v_disk_size_gb;
       family = v_family;
       id = v_id;
       labels = v_labels;
       licenses = v_licenses;
       name = v_name;
       project = v_project;
       source_disk = v_source_disk;
       source_image = v_source_image;
       source_snapshot = v_source_snapshot;
       storage_locations = v_storage_locations;
       guest_os_features = v_guest_os_features;
       image_encryption_key = v_image_encryption_key;
       raw_disk = v_raw_disk;
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
         if [] = v_raw_disk then bnds
         else
           let arg =
             (yojson_of_list yojson_of_raw_disk) v_raw_disk
           in
           let bnd = "raw_disk", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_image_encryption_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_image_encryption_key)
               v_image_encryption_key
           in
           let bnd = "image_encryption_key", arg in
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
         match v_source_snapshot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_snapshot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_image", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_family with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "family", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size_gb", arg in
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
    : google_compute_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_image

[@@@deriving.end]

let guest_os_features ~type_ () : guest_os_features = { type_ }

let image_encryption_key ?kms_key_self_link ?kms_key_service_account
    () : image_encryption_key =
  { kms_key_self_link; kms_key_service_account }

let raw_disk ?container_type ?sha1 ~source () : raw_disk =
  { container_type; sha1; source }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_image ?description ?disk_size_gb ?family ?id
    ?labels ?licenses ?project ?source_disk ?source_image
    ?source_snapshot ?storage_locations ?(image_encryption_key = [])
    ?(raw_disk = []) ?timeouts ~name ~guest_os_features () :
    google_compute_image =
  {
    description;
    disk_size_gb;
    family;
    id;
    labels;
    licenses;
    name;
    project;
    source_disk;
    source_image;
    source_snapshot;
    storage_locations;
    guest_os_features;
    image_encryption_key;
    raw_disk;
    timeouts;
  }

type t = {
  tf_name : string;
  archive_size_bytes : float prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_size_gb : float prop;
  effective_labels : (string * string) list prop;
  family : string prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  licenses : string list prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  source_disk : string prop;
  source_image : string prop;
  source_snapshot : string prop;
  storage_locations : string list prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?disk_size_gb ?family ?id ?labels ?licenses
    ?project ?source_disk ?source_image ?source_snapshot
    ?storage_locations ?(image_encryption_key = []) ?(raw_disk = [])
    ?timeouts ~name ~guest_os_features __id =
  let __type = "google_compute_image" in
  let __attrs =
    ({
       tf_name = __id;
       archive_size_bytes =
         Prop.computed __type __id "archive_size_bytes";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       disk_size_gb = Prop.computed __type __id "disk_size_gb";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       family = Prop.computed __type __id "family";
       id = Prop.computed __type __id "id";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       licenses = Prop.computed __type __id "licenses";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       source_disk = Prop.computed __type __id "source_disk";
       source_image = Prop.computed __type __id "source_image";
       source_snapshot = Prop.computed __type __id "source_snapshot";
       storage_locations =
         Prop.computed __type __id "storage_locations";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_image
        (google_compute_image ?description ?disk_size_gb ?family ?id
           ?labels ?licenses ?project ?source_disk ?source_image
           ?source_snapshot ?storage_locations ~image_encryption_key
           ~raw_disk ?timeouts ~name ~guest_os_features ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disk_size_gb ?family ?id
    ?labels ?licenses ?project ?source_disk ?source_image
    ?source_snapshot ?storage_locations ?(image_encryption_key = [])
    ?(raw_disk = []) ?timeouts ~name ~guest_os_features __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disk_size_gb ?family ?id ?labels ?licenses
      ?project ?source_disk ?source_image ?source_snapshot
      ?storage_locations ~image_encryption_key ~raw_disk ?timeouts
      ~name ~guest_os_features __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
