(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hls_ingest__ingest_endpoints = {
  password : string prop;
  url : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hls_ingest__ingest_endpoints) -> ()

let yojson_of_hls_ingest__ingest_endpoints =
  (function
   | { password = v_password; url = v_url; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : hls_ingest__ingest_endpoints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hls_ingest__ingest_endpoints

[@@@deriving.end]

type hls_ingest = {
  ingest_endpoints : hls_ingest__ingest_endpoints list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hls_ingest) -> ()

let yojson_of_hls_ingest =
  (function
   | { ingest_endpoints = v_ingest_endpoints } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ingest_endpoints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hls_ingest__ingest_endpoints)
               v_ingest_endpoints
           in
           let bnd = "ingest_endpoints", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : hls_ingest -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hls_ingest

[@@@deriving.end]

type aws_media_package_channel = {
  channel_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_media_package_channel) -> ()

let yojson_of_aws_media_package_channel =
  (function
   | {
       channel_id = v_channel_id;
       description = v_description;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
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
         let arg = yojson_of_prop yojson_of_string v_channel_id in
         ("channel_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_media_package_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_media_package_channel

[@@@deriving.end]

let aws_media_package_channel ?description ?id ?tags ?tags_all
    ~channel_id () : aws_media_package_channel =
  { channel_id; description; id; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  channel_id : string prop;
  description : string prop;
  hls_ingest : hls_ingest list prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~channel_id __id =
  let __type = "aws_media_package_channel" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       channel_id = Prop.computed __type __id "channel_id";
       description = Prop.computed __type __id "description";
       hls_ingest = Prop.computed __type __id "hls_ingest";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_media_package_channel
        (aws_media_package_channel ?description ?id ?tags ?tags_all
           ~channel_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~channel_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~channel_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
