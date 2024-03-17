(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_gcm_channel = {
  api_key : string;  (** api_key *)
  application_id : string;  (** application_id *)
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_pinpoint_gcm_channel *)

let aws_pinpoint_gcm_channel ?enabled ~api_key ~application_id
    __resource_id =
  let __resource_type = "aws_pinpoint_gcm_channel" in
  let __resource = { api_key; application_id; enabled } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_gcm_channel __resource);
  ()
