(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chimesdkvoice_sip_media_application__endpoints = {
  lambda_arn : string;  (** lambda_arn *)
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_sip_media_application__endpoints *)

type aws_chimesdkvoice_sip_media_application = {
  aws_region : string;  (** aws_region *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  endpoints : aws_chimesdkvoice_sip_media_application__endpoints list;
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_sip_media_application *)

let aws_chimesdkvoice_sip_media_application ?tags ~aws_region ~name
    ~endpoints __resource_id =
  let __resource_type = "aws_chimesdkvoice_sip_media_application" in
  let __resource = { aws_region; name; tags; endpoints } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chimesdkvoice_sip_media_application __resource);
  ()
