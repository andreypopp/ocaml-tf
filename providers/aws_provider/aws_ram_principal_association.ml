(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ram_principal_association = {
  principal : string;  (** principal *)
  resource_share_arn : string;  (** resource_share_arn *)
}
[@@deriving yojson_of]
(** aws_ram_principal_association *)

let aws_ram_principal_association ~principal ~resource_share_arn
    __resource_id =
  let __resource_type = "aws_ram_principal_association" in
  let __resource = { principal; resource_share_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ram_principal_association __resource);
  ()
