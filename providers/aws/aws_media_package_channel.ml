(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?id ?tags ?tags_all ~channel_id
    __resource_id =
  let __resource_type = "aws_media_package_channel" in
  let __resource =
    aws_media_package_channel ?description ?id ?tags ?tags_all
      ~channel_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_media_package_channel __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       channel_id =
         Prop.computed __resource_type __resource_id "channel_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       hls_ingest =
         Prop.computed __resource_type __resource_id "hls_ingest";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
