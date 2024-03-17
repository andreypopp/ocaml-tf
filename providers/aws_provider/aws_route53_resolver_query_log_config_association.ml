(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_query_log_config_association = {
  resolver_query_log_config_id : string;
      (** resolver_query_log_config_id *)
  resource_id : string;  (** resource_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_query_log_config_association *)

let aws_route53_resolver_query_log_config_association
    ~resolver_query_log_config_id ~resource_id __resource_id =
  let __resource_type =
    "aws_route53_resolver_query_log_config_association"
  in
  let __resource = { resolver_query_log_config_id; resource_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_query_log_config_association
       __resource);
  ()
