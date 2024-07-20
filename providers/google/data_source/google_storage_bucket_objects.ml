(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bucket_objects = {
  content_type : string prop;
  media_link : string prop;
  name : string prop;
  self_link : string prop;
  storage_class : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bucket_objects) -> ()

let yojson_of_bucket_objects =
  (function
   | {
       content_type = v_content_type;
       media_link = v_media_link;
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
         let arg = yojson_of_prop yojson_of_string v_media_link in
         ("media_link", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       `Assoc bnds
    : bucket_objects -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bucket_objects

[@@@deriving.end]

type google_storage_bucket_objects = {
  bucket : string prop;
  id : string prop option; [@option]
  match_glob : string prop option; [@option]
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_bucket_objects) -> ()

let yojson_of_google_storage_bucket_objects =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       match_glob = v_match_glob;
       prefix = v_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_match_glob with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "match_glob", arg in
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
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : google_storage_bucket_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_bucket_objects

[@@@deriving.end]

let google_storage_bucket_objects ?id ?match_glob ?prefix ~bucket ()
    : google_storage_bucket_objects =
  { bucket; id; match_glob; prefix }

type t = {
  tf_name : string;
  bucket : string prop;
  bucket_objects : bucket_objects list prop;
  id : string prop;
  match_glob : string prop;
  prefix : string prop;
}

let make ?id ?match_glob ?prefix ~bucket __id =
  let __type = "google_storage_bucket_objects" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       bucket_objects = Prop.computed __type __id "bucket_objects";
       id = Prop.computed __type __id "id";
       match_glob = Prop.computed __type __id "match_glob";
       prefix = Prop.computed __type __id "prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_bucket_objects
        (google_storage_bucket_objects ?id ?match_glob ?prefix
           ~bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?match_glob ?prefix ~bucket __id =
  let (r : _ Tf_core.resource) =
    make ?id ?match_glob ?prefix ~bucket __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
