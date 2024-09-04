(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_image = {
  family : string prop option; [@option]
  filter : string prop option; [@option]
  id : string prop option; [@option]
  most_recent : bool prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_image) -> ()

let yojson_of_google_compute_image =
  (function
   | {
       family = v_family;
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
       let bnds =
         match v_family with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "family", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_image

[@@@deriving.end]

let google_compute_image ?family ?filter ?id ?most_recent ?name
    ?project () : google_compute_image =
  { family; filter; id; most_recent; name; project }

type t = {
  tf_name : string;
  archive_size_bytes : float prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_size_gb : float prop;
  family : string prop;
  filter : string prop;
  id : string prop;
  image_encryption_key_sha256 : string prop;
  image_id : string prop;
  label_fingerprint : string prop;
  labels : string Tf_core.assoc prop;
  licenses : string list prop;
  most_recent : bool prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  source_disk : string prop;
  source_disk_encryption_key_sha256 : string prop;
  source_disk_id : string prop;
  source_image_id : string prop;
  status : string prop;
}

let make ?family ?filter ?id ?most_recent ?name ?project __id =
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
       family = Prop.computed __type __id "family";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       image_encryption_key_sha256 =
         Prop.computed __type __id "image_encryption_key_sha256";
       image_id = Prop.computed __type __id "image_id";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       licenses = Prop.computed __type __id "licenses";
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       source_disk = Prop.computed __type __id "source_disk";
       source_disk_encryption_key_sha256 =
         Prop.computed __type __id
           "source_disk_encryption_key_sha256";
       source_disk_id = Prop.computed __type __id "source_disk_id";
       source_image_id = Prop.computed __type __id "source_image_id";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_image
        (google_compute_image ?family ?filter ?id ?most_recent ?name
           ?project ());
    attrs = __attrs;
  }

let register ?tf_module ?family ?filter ?id ?most_recent ?name
    ?project __id =
  let (r : _ Tf_core.resource) =
    make ?family ?filter ?id ?most_recent ?name ?project __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
