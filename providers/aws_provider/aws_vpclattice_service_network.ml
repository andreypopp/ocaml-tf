(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_service_network = {
  auth_type : string prop option; [@option]  (** auth_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network *)

let aws_vpclattice_service_network ?auth_type ?id ?tags ?tags_all
    ~name __resource_id =
  let __resource_type = "aws_vpclattice_service_network" in
  let __resource = { auth_type; id; name; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_service_network __resource);
  ()
