(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_media_package_channel__hls_ingest__ingest_endpoints = {
  password : string;  (** password *)
  url : string;  (** url *)
  username : string;  (** username *)
}
[@@deriving yojson_of]

type aws_media_package_channel__hls_ingest = {
  ingest_endpoints :
    aws_media_package_channel__hls_ingest__ingest_endpoints list;
      (** ingest_endpoints *)
}
[@@deriving yojson_of]

type aws_media_package_channel = {
  channel_id : string;  (** channel_id *)
  description : string option; [@option]  (** description *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_media_package_channel *)

let aws_media_package_channel ?description ?tags ~channel_id
    __resource_id =
  let __resource_type = "aws_media_package_channel" in
  let __resource = { channel_id; description; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_media_package_channel __resource);
  ()
