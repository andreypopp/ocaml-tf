(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_query_log_config_association = {
  id : string prop option; [@option]  (** id *)
  resolver_query_log_config_id : string prop;
      (** resolver_query_log_config_id *)
  resource_id : string prop;  (** resource_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_query_log_config_association *)

type t = {
  id : string prop;
  resolver_query_log_config_id : string prop;
  resource_id : string prop;
}

let aws_route53_resolver_query_log_config_association ?id
    ~resolver_query_log_config_id ~resource_id __resource_id =
  let __resource_type =
    "aws_route53_resolver_query_log_config_association"
  in
  let __resource =
    ({ id; resolver_query_log_config_id; resource_id }
      : aws_route53_resolver_query_log_config_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_query_log_config_association
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       resolver_query_log_config_id =
         Prop.computed __resource_type __resource_id
           "resolver_query_log_config_id";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
     }
      : t)
  in
  __resource_attributes
