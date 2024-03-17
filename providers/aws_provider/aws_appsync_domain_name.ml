(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_domain_name = {
  certificate_arn : string;  (** certificate_arn *)
  description : string option; [@option]  (** description *)
  domain_name : string;  (** domain_name *)
}
[@@deriving yojson_of]
(** aws_appsync_domain_name *)

let aws_appsync_domain_name ?description ~certificate_arn
    ~domain_name __resource_id =
  let __resource_type = "aws_appsync_domain_name" in
  let __resource = { certificate_arn; description; domain_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_domain_name __resource);
  ()
