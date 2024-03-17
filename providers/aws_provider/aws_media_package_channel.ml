(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_media_package_channel__hls_ingest__ingest_endpoints = {
  password : string prop;  (** password *)
  url : string prop;  (** url *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]

type aws_media_package_channel__hls_ingest = {
  ingest_endpoints :
    aws_media_package_channel__hls_ingest__ingest_endpoints list;
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
    ~channel_id __resource_id =
  let __resource_type = "aws_media_package_channel" in
  let __resource = { channel_id; description; id; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_media_package_channel __resource);
  ()
