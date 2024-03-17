(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_adm_channel = {
  application_id : string;  (** application_id *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_pinpoint_adm_channel *)

let aws_pinpoint_adm_channel ?enabled ?id ~application_id ~client_id
    ~client_secret __resource_id =
  let __resource_type = "aws_pinpoint_adm_channel" in
  let __resource =
    { application_id; client_id; client_secret; enabled; id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_adm_channel __resource);
  ()
