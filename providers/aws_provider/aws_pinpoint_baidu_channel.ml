(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_pinpoint_baidu_channel = {
  api_key : string;  (** api_key *)
  application_id : string;  (** application_id *)
  enabled : bool option; [@option]  (** enabled *)
  secret_key : string;  (** secret_key *)
}
[@@deriving yojson_of]
(** aws_pinpoint_baidu_channel *)

let aws_pinpoint_baidu_channel ?enabled ~api_key ~application_id
    ~secret_key __resource_id =
  let __resource_type = "aws_pinpoint_baidu_channel" in
  let __resource =
    { api_key; application_id; enabled; secret_key }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_baidu_channel __resource);
  ()