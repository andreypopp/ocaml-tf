(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ram_resource_association = {
  id : string option; [@option]  (** id *)
  resource_arn : string;  (** resource_arn *)
  resource_share_arn : string;  (** resource_share_arn *)
}
[@@deriving yojson_of]
(** aws_ram_resource_association *)

let aws_ram_resource_association ?id ~resource_arn
    ~resource_share_arn __resource_id =
  let __resource_type = "aws_ram_resource_association" in
  let __resource = { id; resource_arn; resource_share_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ram_resource_association __resource);
  ()
