(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_baidu_channel = {
  api_key : string prop;  (** api_key *)
  application_id : string prop;  (** application_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  secret_key : string prop;  (** secret_key *)
}
[@@deriving yojson_of]
(** aws_pinpoint_baidu_channel *)

let aws_pinpoint_baidu_channel ?enabled ?id ~api_key ~application_id
    ~secret_key __resource_id =
  let __resource_type = "aws_pinpoint_baidu_channel" in
  let __resource =
    { api_key; application_id; enabled; id; secret_key }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_baidu_channel __resource);
  ()
