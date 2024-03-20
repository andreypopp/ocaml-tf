(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appsync_api_cache = {
  api_caching_behavior : string prop;
  api_id : string prop;
  at_rest_encryption_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  transit_encryption_enabled : bool prop option; [@option]
  ttl : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appsync_api_cache) -> ()

let yojson_of_aws_appsync_api_cache =
  (function
   | {
       api_caching_behavior = v_api_caching_behavior;
       api_id = v_api_id;
       at_rest_encryption_enabled = v_at_rest_encryption_enabled;
       id = v_id;
       transit_encryption_enabled = v_transit_encryption_enabled;
       ttl = v_ttl;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         match v_transit_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "transit_encryption_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_at_rest_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "at_rest_encryption_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_caching_behavior
         in
         ("api_caching_behavior", arg) :: bnds
       in
       `Assoc bnds
    : aws_appsync_api_cache -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appsync_api_cache

[@@@deriving.end]

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
