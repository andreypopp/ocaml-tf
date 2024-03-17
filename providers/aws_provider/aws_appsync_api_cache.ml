(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_api_cache = {
  api_caching_behavior : string prop;  (** api_caching_behavior *)
  api_id : string prop;  (** api_id *)
  at_rest_encryption_enabled : bool prop option; [@option]
      (** at_rest_encryption_enabled *)
  id : string prop option; [@option]  (** id *)
  transit_encryption_enabled : bool prop option; [@option]
      (** transit_encryption_enabled *)
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_appsync_api_cache *)

let aws_appsync_api_cache ?at_rest_encryption_enabled ?id
    ?transit_encryption_enabled ~api_caching_behavior ~api_id ~ttl
    ~type_ __resource_id =
  let __resource_type = "aws_appsync_api_cache" in
  let __resource =
    {
      api_caching_behavior;
      api_id;
      at_rest_encryption_enabled;
      id;
      transit_encryption_enabled;
      ttl;
      type_;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_api_cache __resource);
  ()
