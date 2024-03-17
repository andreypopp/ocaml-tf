(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_appsync_api_cache = {
  api_caching_behavior : string;  (** api_caching_behavior *)
  api_id : string;  (** api_id *)
  at_rest_encryption_enabled : bool option; [@option]
      (** at_rest_encryption_enabled *)
  transit_encryption_enabled : bool option; [@option]
      (** transit_encryption_enabled *)
  ttl : float;  (** ttl *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_appsync_api_cache *)

let aws_appsync_api_cache ?at_rest_encryption_enabled
    ?transit_encryption_enabled ~api_caching_behavior ~api_id ~ttl
    ~type_ __resource_id =
  let __resource_type = "aws_appsync_api_cache" in
  let __resource =
    {
      api_caching_behavior;
      api_id;
      at_rest_encryption_enabled;
      transit_encryption_enabled;
      ttl;
      type_;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_api_cache __resource);
  ()
