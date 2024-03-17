(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_service_discovery_public_dns_namespace = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_service_discovery_public_dns_namespace *)

let aws_service_discovery_public_dns_namespace ?description ?id ?tags
    ?tags_all ~name __resource_id =
  let __resource_type =
    "aws_service_discovery_public_dns_namespace"
  in
  let __resource = { description; id; name; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_service_discovery_public_dns_namespace __resource);
  ()
