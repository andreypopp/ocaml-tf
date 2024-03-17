(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpclattice_service_network = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network *)

let aws_vpclattice_service_network ?tags ~name __resource_id =
  let __resource_type = "aws_vpclattice_service_network" in
  let __resource = { name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_service_network __resource);
  ()
