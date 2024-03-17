(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_service_discovery_private_dns_namespace = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc : string;  (** vpc *)
}
[@@deriving yojson_of]
(** aws_service_discovery_private_dns_namespace *)

let aws_service_discovery_private_dns_namespace ?description ?tags
    ~name ~vpc __resource_id =
  let __resource_type =
    "aws_service_discovery_private_dns_namespace"
  in
  let __resource = { description; name; tags; vpc } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_service_discovery_private_dns_namespace __resource);
  ()
