(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_object_signed_url = {
  bucket : string prop;
  content_md5 : string prop option; [@option]
  content_type : string prop option; [@option]
  credentials : string prop option; [@option]
  duration : string prop option; [@option]
  extension_headers : string prop Tf_core.assoc option; [@option]
  http_method : string prop option; [@option]
  id : string prop option; [@option]
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_object_signed_url) -> ()

let yojson_of_google_storage_object_signed_url =
  (function
   | {
       bucket = v_bucket;
       content_md5 = v_content_md5;
       content_type = v_content_type;
       credentials = v_credentials;
       duration = v_duration;
       extension_headers = v_extension_headers;
       http_method = v_http_method;
       id = v_id;
       path = v_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
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
         match v_http_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extension_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "extension_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credentials", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_md5 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_md5", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : google_storage_object_signed_url ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_object_signed_url

[@@@deriving.end]

let google_storage_object_signed_url ?content_md5 ?content_type
    ?credentials ?duration ?extension_headers ?http_method ?id
    ~bucket ~path () : google_storage_object_signed_url =
  {
    bucket;
    content_md5;
    content_type;
    credentials;
    duration;
    extension_headers;
    http_method;
    id;
    path;
  }

type t = {
  tf_name : string;
  bucket : string prop;
  content_md5 : string prop;
  content_type : string prop;
  credentials : string prop;
  duration : string prop;
  extension_headers : string Tf_core.assoc prop;
  http_method : string prop;
  id : string prop;
  path : string prop;
  signed_url : string prop;
}

let make ?content_md5 ?content_type ?credentials ?duration
    ?extension_headers ?http_method ?id ~bucket ~path __id =
  let __type = "google_storage_object_signed_url" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       content_md5 = Prop.computed __type __id "content_md5";
       content_type = Prop.computed __type __id "content_type";
       credentials = Prop.computed __type __id "credentials";
       duration = Prop.computed __type __id "duration";
       extension_headers =
         Prop.computed __type __id "extension_headers";
       http_method = Prop.computed __type __id "http_method";
       id = Prop.computed __type __id "id";
       path = Prop.computed __type __id "path";
       signed_url = Prop.computed __type __id "signed_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_object_signed_url
        (google_storage_object_signed_url ?content_md5 ?content_type
           ?credentials ?duration ?extension_headers ?http_method ?id
           ~bucket ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?content_md5 ?content_type ?credentials
    ?duration ?extension_headers ?http_method ?id ~bucket ~path __id
    =
  let (r : _ Tf_core.resource) =
    make ?content_md5 ?content_type ?credentials ?duration
      ?extension_headers ?http_method ?id ~bucket ~path __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
