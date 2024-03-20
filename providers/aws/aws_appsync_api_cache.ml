(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?at_rest_encryption_enabled ?id ?transit_encryption_enabled
    ~api_caching_behavior ~api_id ~ttl ~type_ __id =
  let __type = "aws_appsync_api_cache" in
  let __attrs =
    ({
       api_caching_behavior =
         Prop.computed __type __id "api_caching_behavior";
       api_id = Prop.computed __type __id "api_id";
       at_rest_encryption_enabled =
         Prop.computed __type __id "at_rest_encryption_enabled";
       id = Prop.computed __type __id "id";
       transit_encryption_enabled =
         Prop.computed __type __id "transit_encryption_enabled";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_api_cache
        (aws_appsync_api_cache ?at_rest_encryption_enabled ?id
           ?transit_encryption_enabled ~api_caching_behavior ~api_id
           ~ttl ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?at_rest_encryption_enabled ?id
    ?transit_encryption_enabled ~api_caching_behavior ~api_id ~ttl
    ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?at_rest_encryption_enabled ?id ?transit_encryption_enabled
      ~api_caching_behavior ~api_id ~ttl ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
