(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type buckets = {
  labels : string prop Tf_core.assoc;
  location : string prop;
  name : string prop;
  self_link : string prop;
  storage_class : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : buckets) -> ()

let yojson_of_buckets =
  (function
   | {
       labels = v_labels;
       location = v_location;
       name = v_name;
       self_link = v_self_link;
       storage_class = v_storage_class;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_class in
         ("storage_class", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_self_link in
         ("self_link", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_labels
         in
         ("labels", arg) :: bnds
       in
       `Assoc bnds
    : buckets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_buckets

[@@@deriving.end]

type google_storage_buckets = {
  id : string prop option; [@option]
  prefix : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_buckets) -> ()

let yojson_of_google_storage_buckets =
  (function
   | { id = v_id; prefix = v_prefix; project = v_project } ->
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
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
    : google_storage_buckets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_buckets

[@@@deriving.end]

let google_storage_buckets ?id ?prefix ?project () :
    google_storage_buckets =
  { id; prefix; project }

type t = {
  tf_name : string;
  buckets : buckets list prop;
  id : string prop;
  prefix : string prop;
  project : string prop;
}

let make ?id ?prefix ?project __id =
  let __type = "google_storage_buckets" in
  let __attrs =
    ({
       tf_name = __id;
       buckets = Prop.computed __type __id "buckets";
       id = Prop.computed __type __id "id";
       prefix = Prop.computed __type __id "prefix";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_buckets
        (google_storage_buckets ?id ?prefix ?project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?prefix ?project __id =
  let (r : _ Tf_core.resource) = make ?id ?prefix ?project __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
