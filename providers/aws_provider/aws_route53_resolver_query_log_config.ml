(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_query_log_config = {
  destination_arn : string;  (** destination_arn *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_query_log_config *)

let aws_route53_resolver_query_log_config ?id ?tags ?tags_all
    ~destination_arn ~name __resource_id =
  let __resource_type = "aws_route53_resolver_query_log_config" in
  let __resource = { destination_arn; id; name; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_query_log_config __resource);
  ()
