(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_domain_name = {
  certificate_arn : string prop;  (** certificate_arn *)
  description : string prop option; [@option]  (** description *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appsync_domain_name *)

let aws_appsync_domain_name ?description ?id ~certificate_arn
    ~domain_name __resource_id =
  let __resource_type = "aws_appsync_domain_name" in
  let __resource =
    { certificate_arn; description; domain_name; id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_domain_name __resource);
  ()
