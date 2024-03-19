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
    ~type_ () : aws_appsync_api_cache =
  {
    api_caching_behavior;
    api_id;
    at_rest_encryption_enabled;
    id;
    transit_encryption_enabled;
    ttl;
    type_;
  }

type t = {
  api_caching_behavior : string prop;
  api_id : string prop;
  at_rest_encryption_enabled : bool prop;
  id : string prop;
  transit_encryption_enabled : bool prop;
  ttl : float prop;
  type_ : string prop;
}

let register ?tf_module ?at_rest_encryption_enabled ?id
    ?transit_encryption_enabled ~api_caching_behavior ~api_id ~ttl
    ~type_ __resource_id =
  let __resource_type = "aws_appsync_api_cache" in
  let __resource =
    aws_appsync_api_cache ?at_rest_encryption_enabled ?id
      ?transit_encryption_enabled ~api_caching_behavior ~api_id ~ttl
      ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_api_cache __resource);
  let __resource_attributes =
    ({
       api_caching_behavior =
         Prop.computed __resource_type __resource_id
           "api_caching_behavior";
       api_id = Prop.computed __resource_type __resource_id "api_id";
       at_rest_encryption_enabled =
         Prop.computed __resource_type __resource_id
           "at_rest_encryption_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       transit_encryption_enabled =
         Prop.computed __resource_type __resource_id
           "transit_encryption_enabled";
       ttl = Prop.computed __resource_type __resource_id "ttl";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
