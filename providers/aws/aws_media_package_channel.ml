(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hls_ingest__ingest_endpoints = {
  password : string prop;  (** password *)
  url : string prop;  (** url *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]

type hls_ingest = {
  ingest_endpoints : hls_ingest__ingest_endpoints list;
      (** ingest_endpoints *)
}
[@@deriving yojson_of]

type aws_media_package_channel = {
  channel_id : string prop;  (** channel_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_media_package_channel *)

let aws_media_package_channel ?description ?id ?tags ?tags_all
    ~channel_id () : aws_media_package_channel =
  { channel_id; description; id; tags; tags_all }

type t = {
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
