(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_query_log_config_association = {
  id : string prop option; [@option]
  resolver_query_log_config_id : string prop;
  resource_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_route53_resolver_query_log_config_association) -> ()

let yojson_of_aws_route53_resolver_query_log_config_association =
  (function
   | {
       id = v_id;
       resolver_query_log_config_id = v_resolver_query_log_config_id;
       resource_id = v_resource_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_resolver_query_log_config_id
         in
         ("resolver_query_log_config_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_route53_resolver_query_log_config_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_query_log_config_association

[@@@deriving.end]

let aws_route53_resolver_query_log_config_association ?id
    ~resolver_query_log_config_id ~resource_id () :
    aws_route53_resolver_query_log_config_association =
  { id; resolver_query_log_config_id; resource_id }

type t = {
  tf_name : string;
  id : string prop;
  resolver_query_log_config_id : string prop;
  resource_id : string prop;
}

let make ?id ~resolver_query_log_config_id ~resource_id __id =
  let __type = "aws_route53_resolver_query_log_config_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       resolver_query_log_config_id =
         Prop.computed __type __id "resolver_query_log_config_id";
       resource_id = Prop.computed __type __id "resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_query_log_config_association
        (aws_route53_resolver_query_log_config_association ?id
           ~resolver_query_log_config_id ~resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~resolver_query_log_config_id
    ~resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~resolver_query_log_config_id ~resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
