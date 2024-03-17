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
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  endpoints : aws_chimesdkvoice_sip_media_application__endpoints list;
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_sip_media_application *)

let aws_chimesdkvoice_sip_media_application ?id ?tags ?tags_all
    ~aws_region ~name ~endpoints __resource_id =
  let __resource_type = "aws_chimesdkvoice_sip_media_application" in
  let __resource =
    { aws_region; id; name; tags; tags_all; endpoints }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chimesdkvoice_sip_media_application __resource);
  ()
