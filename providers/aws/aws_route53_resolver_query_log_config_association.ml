(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_query_log_config_association = {
  id : string prop option; [@option]  (** id *)
  resolver_query_log_config_id : string prop;
      (** resolver_query_log_config_id *)
  resource_id : string prop;  (** resource_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_query_log_config_association *)

let aws_route53_resolver_query_log_config_association ?id
    ~resolver_query_log_config_id ~resource_id () :
    aws_route53_resolver_query_log_config_association =
  { id; resolver_query_log_config_id; resource_id }

type t = {
  id : string prop;
  resolver_query_log_config_id : string prop;
  resource_id : string prop;
}

let make ?id ~resolver_query_log_config_id ~resource_id __id =
  let __type = "aws_route53_resolver_query_log_config_association" in
  let __attrs =
    ({
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
